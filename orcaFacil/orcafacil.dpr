program orcafacil;

uses
  Vcl.Forms,
  Main.View in 'Views\Main.View.pas' {Form1},
  Base.View in 'Views\Base\Base.View.pas' {FBaseView};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFBaseView, FBaseView);
  Application.Run;
end.
