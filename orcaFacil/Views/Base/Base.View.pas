unit Base.View;

// Herança
// Todos os formulários descendem deste formulário.

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBevel, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, Vcl.StdCtrls,
  cxButtons, ormbr.factory.interfaces;

type
  TFBaseView = class(TForm)
    PnBotoes: TPanel;
    PnDivisor: TPanel;
    SbEncerrar: TcxButton;
    PnContainer: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SbEncerrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private

  protected
    FConexao: IDBConnection;

  public

  end;

var
  FBaseView: TFBaseView;

implementation

{$R *.dfm}

uses FacadeController;

procedure TFBaseView.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFBaseView.FormCreate(Sender: TObject);
begin
  FConexao := TFacadeController.New.ConexaoController.conexaoAtual;
end;

procedure TFBaseView.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_RETURN : Perform(WM_NEXTDLGCTL, 0 ,0);
    VK_ESCAPE : Close;
  end;
end;

procedure TFBaseView.SbEncerrarClick(Sender: TObject);
begin
  Close;
end;

end.
