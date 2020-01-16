unit M0001ERR.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MensagemBase, cxGraphics,
  cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, cxControls, cxContainer,
  cxEdit, cxTextEdit,
  cxMemo, dxGDIPlusClasses, Vcl.ExtCtrls, cxLabel, Vcl.StdCtrls, cxButtons,
  Base.View.Interf;

type
  TFM0001ERRView = class(TFMensagemView, IBaseMensagemView)
  private
    FResposta: Boolean;
    FMensagem: string;

  public
    { Public declarations }

    class function New: IBaseMensagemView;

    function mensagem(AValue: string): IBaseMensagemView;
    function &exibir: Boolean;
  end;

var
  FM0001ERRView: TFM0001ERRView;

implementation

{$R *.dfm}
{ TFM0001ERRView }

function TFM0001ERRView.exibir: Boolean;
begin
  MmMensagem.Text := FMensagem;
  ShowModal;

  Result := FResposta;
end;

function TFM0001ERRView.mensagem(AValue: string): IBaseMensagemView;
begin
  Result := Self;
  FMensagem := AValue;
end;

class function TFM0001ERRView.New: IBaseMensagemView;
begin
  Result := Self.Create(nil);
end;

end.
