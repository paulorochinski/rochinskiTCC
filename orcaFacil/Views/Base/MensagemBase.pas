unit MensagemBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base.View, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, cxControls, cxContainer, cxEdit, dxGDIPlusClasses,
  Vcl.ExtCtrls, cxLabel, Vcl.StdCtrls, cxButtons;

type
  TFMensagemView = class(TFBaseView)
    BtSalvar: TcxButton;
    procedure BtSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMensagemView: TFMensagemView;

implementation

{$R *.dfm}

procedure TFMensagemView.BtSalvarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
