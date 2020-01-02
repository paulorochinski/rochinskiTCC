unit Base.View;

//Herança
//Todos os formulários descendem deste formulário.

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBevel, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, Vcl.StdCtrls,
  cxButtons;

type
  TFBaseView = class(TForm)
    PnBotoes: TPanel;
    PnDivisor: TPanel;
    SbEncerrar: TcxButton;
    PnContainer: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SbEncerrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBaseView: TFBaseView;

implementation

{$R *.dfm}

procedure TFBaseView.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TFBaseView.SbEncerrarClick(Sender: TObject);
begin
  Close;
end;

end.
