unit CadastroBase.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base.View, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls;

type
  TFCadastroView = class(TFBaseView)
    SbSalvar: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadastroView: TFCadastroView;

implementation

{$R *.dfm}

end.
