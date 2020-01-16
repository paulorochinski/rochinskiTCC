unit M0001CON.View;

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
  TFM0001CONView = class(TFMensagemView, IBaseMensagemView)
  private

  public
    { Public declarations }

    class function New: IBaseMensagemView;

    function mensagem(AValue: string): IBaseMensagemView;
    function &exibir: Boolean;
  end;

var
  FM0001CONView: TFM0001CONView;

implementation

{$R *.dfm}
{ TFM0001CONView }

function TFM0001CONView.exibir: Boolean;
begin
  MmMensagem.Text := FMensagem;
  ShowModal;

  Result := FResposta;
end;

function TFM0001CONView.mensagem(AValue: string): IBaseMensagemView;
begin
  Result := Self;
  FMensagem := AValue;
end;

class function TFM0001CONView.New: IBaseMensagemView;
begin
  Result := Self.Create(nil);
end;

end.
