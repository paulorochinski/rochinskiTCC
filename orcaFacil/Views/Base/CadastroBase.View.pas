unit CadastroBase.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base.View, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, cxControls, cxContainer, cxEdit, cxLabel,
  Tipos.Controller.Interf, dxGDIPlusClasses;

type
  TFCadastroView = class(TFBaseView)
    BtSalvar: TcxButton;
    LbOperacao: TcxLabel;
    procedure BtSalvarClick(Sender: TObject);
  private
    { Private declarations }

  protected
    procedure exibirTituloOperacao(AValue: TTipoOperacao);
  public
    { Public declarations }
  end;

var
  FCadastroView: TFCadastroView;

implementation

{$R *.dfm}
{ TFCadastroView }

procedure TFCadastroView.exibirTituloOperacao(AValue: TTipoOperacao);
begin
  case AValue of
    toIncluir:
      begin
        LbOperacao.Caption := '(Incluindo)';
      end;

    toAlterar:
      begin
        LbOperacao.Caption := '(Alterando)';
      end;

    toConsultar:
      begin
        LbOperacao.Caption := '(Consultando)';
        BtSalvar.Visible := False;
      end;

    toExcluir:
      begin
        LbOperacao.Caption := '(Excluindo)';
        LbOperacao.Style.TextColor := $003F42C3;
        LbOperacao.StyleDisabled.TextColor := $003F42C3;
      end;

    toDuplicar:
      begin
        LbOperacao.Caption := '(Duplicando)';
      end;
  end;
end;

procedure TFCadastroView.BtSalvarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
