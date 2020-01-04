program orcafacil;

uses
  Vcl.Forms,
  Main.View in 'Views\Main.View.pas' {FPrincipalView},
  Base.View in 'Views\Base\Base.View.pas' {FBaseView},
  PesquisaBase.View in 'Views\Base\PesquisaBase.View.pas' {FPesquisaView},
  CadastroBase.View in 'Views\Base\CadastroBase.View.pas' {FCadastroView},
  Conexao.Model.Interf in 'Models\Conexao\Conexao\Conexao.Model.Interf.pas',
  DataMFirebird.Model in 'Models\Conexao\Firebird\DataMFirebird.Model.pas' {FDataMFirebird: TDataModule},
  ConfiguracoesConexao.Model in 'Models\Configuracoes\Conexao\ConfiguracoesConexao.Model.pas',
  ConfiguracoesConexao.Model.interf in 'Models\Configuracoes\Conexao\ConfiguracoesConexao.Model.interf.pas',
  ConfiguracoesFactory.Model.interf in 'Models\Configuracoes\ConfiguracoesFactory.Model.interf.pas',
  ConfiguracoesFactory.Model in 'Models\Configuracoes\ConfiguracoesFactory.Model.pas',
  FacadeModel.interf in 'Models\FacadeModel.interf.pas',
  FacadeModel in 'Models\FacadeModel.pas',
  ConexaoFactory.Model.Interf in 'Models\Conexao\ConexaoFactory.Model.Interf.pas',
  ConexaoFactory.Model in 'Models\Conexao\ConexaoFactory.Model.pas',
  Conexao.Controller.interf in 'Controllers\Conexao\Conexao.Controller.interf.pas',
  Conexao.Controller in 'Controllers\Conexao\Conexao.Controller.pas',
  FacadeController.interf in 'Controllers\FacadeController.interf.pas',
  FacadeController in 'Controllers\FacadeController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipalView, FPrincipalView);
  Application.Run;
end.
