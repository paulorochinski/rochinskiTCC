program orcafacil;

uses
  Vcl.Forms,
  Main.View in 'Views\Main.View.pas' {FPrincipalView},
  Base.View in 'Views\Base\Base.View.pas' {FBaseView},
  PesquisaBase.View in 'Views\Base\PesquisaBase.View.pas' {FPesquisaView};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipalView, FPrincipalView);
  Application.CreateForm(TFBaseView, FBaseView);
  Application.CreateForm(TFPesquisaView, FPesquisaView);
  Application.Run;
end.
