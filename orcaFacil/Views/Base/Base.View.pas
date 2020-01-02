unit Base.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBevel, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, Vcl.StdCtrls,
  cxButtons;

type
  TFBaseView = class(TForm)
    PnBotoes: TPanel;
    BvVisual: TdxBevel;
    PnSair: TPanel;
    CbSair: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CbSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBaseView: TFBaseView;

implementation

{$R *.dfm}

procedure TFBaseView.CbSairClick(Sender: TObject);
begin
 Close;
end;

procedure TFBaseView.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

end.
