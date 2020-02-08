unit Base.View;

// Herança
// Todos os formulários descendem deste formulário.

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBevel, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, Vcl.StdCtrls,
  cxButtons, ormbr.factory.interfaces, cxControls, cxContainer, cxEdit, cxLabel,
  Tipos.Controller.Interf, dxGDIPlusClasses, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Silver, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinDarkRoom, dxSkinDarkSide, dxSkinMetropolisDark,
  dxSkinVisualStudio2013Dark, dxSkinBlack, dxSkinSilver, dxSkinVS2010;

type
  TFBaseView = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PnBotoes: TPanel;
    BtEncerrar: TcxButton;
    Panel3: TPanel;
    cxLabel1: TcxLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    PnIconeTitulo: TPanel;
    ImIconeTitulo: TImage;
    PnTituloJanela: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtEncerrarClick(Sender: TObject);
  private

  protected
    FConexao: IDBConnection;
    FOperacao: TTipoOperacao;

  public

  end;

var
  FBaseView: TFBaseView;

implementation

{$R *.dfm}

uses FacadeController;

procedure TFBaseView.BtEncerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFBaseView.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFBaseView.FormCreate(Sender: TObject);
begin
  FConexao := TFacadeController.New.ConexaoController.conexaoAtual;
end;

procedure TFBaseView.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_RETURN:
      Perform(WM_NEXTDLGCTL, 0, 0);
    VK_ESCAPE:
      Close;
  end;
end;

end.
