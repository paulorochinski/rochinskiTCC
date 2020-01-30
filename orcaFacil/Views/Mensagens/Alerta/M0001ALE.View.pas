unit M0001ALE.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MensagemBase, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMemo, dxGDIPlusClasses, Vcl.ExtCtrls, cxLabel, Vcl.StdCtrls, cxButtons, Base.View.Interf,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Silver, dxSkinOffice2016Colorful, dxSkinOffice2016Dark;

type
  TFM0001ALEView = class(TFMensagemView, IBaseMensagemView)
    procedure BtSalvarClick(Sender: TObject);
    procedure BtEncerrarClick(Sender: TObject);
  private

  public
    { Public declarations }

    class function New: IBaseMensagemView;

    function mensagem(AValue: string): IBaseMensagemView;
    function &exibir: Boolean;
  end;

var
  FM0001ALEView: TFM0001ALEView;

implementation

{$R *.dfm}

{ TFM0001ALEView }

procedure TFM0001ALEView.BtEncerrarClick(Sender: TObject);
begin
  FResposta := False;
  inherited;
end;

procedure TFM0001ALEView.BtSalvarClick(Sender: TObject);
begin
  FResposta := True;
  inherited;
end;

function TFM0001ALEView.exibir: Boolean;
begin
  MmMensagem.Text := FMensagem;
  ShowModal;

  Result := FResposta;
end;

function TFM0001ALEView.mensagem(AValue: string): IBaseMensagemView;
begin
  Result := Self;
  FMensagem := AValue;
end;

class function TFM0001ALEView.New: IBaseMensagemView;
begin
  Result := Self.Create(nil);
end;

end.
