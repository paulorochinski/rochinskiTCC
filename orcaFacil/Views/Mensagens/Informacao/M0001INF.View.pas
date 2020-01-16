unit M0001INF.View;

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
  TFM0001INFView = class(TFMensagemView, IBaseMensagemView)
  private
    FResposta: Boolean;
    FMensagem: string;

  public
    class function New: IBaseMensagemView;

    function mensagem(AValue: string): IBaseMensagemView;
    function &exibir: Boolean;
  end;

var
  FM0001INFView: TFM0001INFView;

implementation

{$R *.dfm}
{ TFM0001INFView }

function TFM0001INFView.exibir: Boolean;
begin
  MmMensagem.Text := FMensagem;
  ShowModal;

  Result := FResposta;
end;

function TFM0001INFView.mensagem(AValue: string): IBaseMensagemView;
begin
  Result := Self;
  FMensagem := AValue;
end;

class function TFM0001INFView.New: IBaseMensagemView;
begin
  Result := Self.Create(nil);
end;

end.
