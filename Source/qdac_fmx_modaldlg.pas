unit qdac_fmx_modaldlg;

{ FMX.ModalDlg FMX �� ShowModal ����ǿ�ͽӿ�ͳһ
  ����Ԫͳһ�� FMX �� TForm.ShowModal �Ĳ����ӿڣ�ԭ�� Delphi �Դ��� ShowModal ��
  ���������汾���ݵ�ֻ��һ�� ModalResult �������޷�ͨ���ֲ�������һ�����ơ��˰汾
  ������Ϊ�����ʵ��������Է����� ModalResult �Լ�������صĳ�Ա���Է����һ����
  �ơ�
  ��ƽ̨���ƣ�Android �²�����ʵ�ʵ�ShowModal(������ ShowModal ��࣬��Ϊ������
  ȫ�����ǵģ��²�Ĵ�����Ҳ�������ˣ���������ƽ̨����������ģ̬���ڡ�
  2016.3.4
  ========
  + 1.0 ��
}
interface

uses classes, sysutils, fmx.types, fmx.forms, fmx.controls, System.Messaging,
  uitypes;

type
  TFormModalProc = reference to procedure(F: TForm);
  TFormClass = class of TForm;
  /// <summary>��ʾһ��ģ̬����</summmary>
  /// <param name="F">����ʵ��</param>
  /// <param name="OnResult">�û��رմ���ʱ�Ĳ���</param>
  /// <param name="ACloseAction">���ڹر�ʱ�Ķ�����Ĭ��caFree�ͷŵ�</param>
  /// <remarks>�� Windows/iOS/OSX �������� ShowModal ������Ȼ����� OnResult������
  /// Android �ϣ��� Show �Ժ����û��رջ����� ModalResult ʱ���õ� OnResult��
  /// Ҳ����˵��Android ����ƽ̨������ģ��� ShowModal Ч����</remarks>
procedure ModalDialog(F: TForm; OnResult: TFormModalProc;
  ACloseAction: TCloseAction = TCloseAction.caFree); overload;
/// <summary>��ʾһ��ģ̬���ڣ����ڹر�ʱ�ͷ�</summmary>
/// <param name="F">����ʵ��</param>
/// <param name="OnResult">�û��رմ���ʱ�Ĳ���</param>
/// <remarks>�� Windows/iOS/OSX �������� ShowModal ������Ȼ����� OnResult������
/// Android �ϣ��� Show �Ժ����û��رջ����� ModalResult ʱ���õ� OnResult��
/// Ҳ����˵��Android ����ƽ̨������ģ��� ShowModal Ч����</remarks>
procedure ModalDialog(AClass: TFormClass; OnResult: TFormModalProc); overload;

implementation

type
  TFormModalHook = class(TComponent)
  private
    FForm: TForm;
    FCloseAction: TCloseAction;
    FOldClose: TCloseEvent;
    FResultProc: TFormModalProc;
    procedure DoFormClose(Sender: TObject; var Action: TCloseAction);
  public
    constructor Create(AOwner: TComponent); override;
    procedure ShowModal(AResult: TFormModalProc);
  end;

  TFormDisposeMgr = class
  private
    FIdleMsgId: Cardinal;
    FPendings: array of TObject;
    FCount: Integer;
    procedure DoAppIdle(const Sender: TObject;
      const Msg: System.Messaging.TMessage);
  public
    constructor Create; overload;
    destructor Destroy; override;
    procedure Push(AObj: TObject);
  end;

var
  FreeMgr: TFormDisposeMgr;

procedure ModalDialog(F: TForm; OnResult: TFormModalProc;
  ACloseAction: TCloseAction = TCloseAction.caFree);

var
  AHook: TFormModalHook;
begin
  AHook := TFormModalHook.Create(F);
  AHook.FCloseAction := ACloseAction;
  AHook.ShowModal(OnResult);
  CloseAllPopups; // ���ⴰ�����е�������Ŀû�б��ر�
end;

procedure ModalDialog(AClass: TFormClass; OnResult: TFormModalProc); overload;

var
  F: TForm;
begin
  F := AClass.Create(Application);
  ModalDialog(F, OnResult, TCloseAction.caFree);
end;
{ TFormModalHook }

constructor TFormModalHook.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FForm := AOwner as TForm;
  FOldClose := FForm.OnClose;
  FForm.OnClose := DoFormClose;
  FCloseAction := TCloseAction.caFree;
end;

procedure TFormModalHook.DoFormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FForm.ModalResult = mrNone then
    FForm.ModalResult := mrCancel;
  Action := TCloseAction.caHide; // ���ش���ر�
  if Assigned(FOldClose) then
    FOldClose(Sender, FCloseAction);
end;

procedure TFormModalHook.ShowModal(AResult: TFormModalProc);
begin
  FResultProc := AResult;
{$IFDEF ANDROID}
  FForm.ShowModal(
    procedure(AResult: TModalResult)
    begin
      if Assigned(FForm) then
      begin
        FForm.OnClose := FOldClose;
        if Assigned(FResultProc) then
          FResultProc(FForm);
      end;
      if FCloseAction = TCloseAction.caFree then
        FreeMgr.Push(FForm);
    end);
{$ELSE}
  FForm.ShowModal;
  if Assigned(FResultProc) then
    FResultProc(FForm);
  FForm.DisposeOf;
{$ENDIF}
end;

{ TFormDisposeMgr }

constructor TFormDisposeMgr.Create;
begin
  inherited;
  FIdleMsgId := TMessageManager.DefaultManager.SubscribeToMessage(TIdleMessage,
    DoAppIdle);
end;

destructor TFormDisposeMgr.Destroy;
begin
  TMessageManager.DefaultManager.Unsubscribe(TIdleMessage, FIdleMsgId);
  inherited;
end;

procedure TFormDisposeMgr.DoAppIdle(const Sender: TObject;
const Msg: System.Messaging.TMessage);
var
  I: Integer;
begin
  if FCount > 0 then
  begin
    for I := 0 to FCount - 1 do
      FPendings[I].DisposeOf;
    if Length(FPendings) > 32 then
      SetLength(FPendings, 32);
    FCount := 0;
  end;
end;

procedure TFormDisposeMgr.Push(AObj: TObject);
begin
{$IFNDEF AUTOREFCOUNT}
  if FCount = Length(FPendings) then
  begin
    if FCount = 0 then
      SetLength(FPendings, 32)
    else
      SetLength(FPendings, Length(FPendings) shl 1);
  end;
  FPendings[FCount] := AObj;
  Inc(FCount);
{$ENDIF}
end;

initialization

FreeMgr := TFormDisposeMgr.Create;

finalization

FreeMgr.DisposeOf;

end.