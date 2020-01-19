unit MensagemBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base.View, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, cxControls, cxContainer,
  cxEdit, dxGDIPlusClasses,
  Vcl.ExtCtrls, cxLabel, Vcl.StdCtrls, cxButtons, Base.View.Interf,
  Tipos.Controller.Interf,
  cxTextEdit, cxMemo, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Silver;

type
  TFMensagemView = class(TFBaseView, IBaseMensagemView)
    BtSalvar: TcxButton;
    MmMensagem: TcxMemo;
    procedure BtSalvarClick(Sender: TObject);
    procedure BtEncerrarClick(Sender: TObject);
  private
    { Private declarations }

  protected
    FResposta: Boolean;
    FMensagem: string;

  public
    { Public declarations }
    class function New: IBaseMensagemView;

    function mensagem(AValue: string): IBaseMensagemView;
    function &exibir: Boolean;
  end;

var
  FMensagemView: TFMensagemView;

implementation

{$R *.dfm}

procedure TFMensagemView.BtEncerrarClick(Sender: TObject);
begin
  inherited;
  FResposta := False;
end;

procedure TFMensagemView.BtSalvarClick(Sender: TObject);
begin
  inherited;
  FResposta := True;
  Close;
end;

function TFMensagemView.exibir: Boolean;
begin
  ShowModal;

end;

function TFMensagemView.mensagem(AValue: string): IBaseMensagemView;
begin
  Result := Self;
  FMensagem := AValue;
end;

class function TFMensagemView.New: IBaseMensagemView;
begin
  Result := Self.Create(nil);
end;

end.
