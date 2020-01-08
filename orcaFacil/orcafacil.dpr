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
  FacadeController in 'Controllers\FacadeController.pas',
  TESTPRODUTO.Entidade.Model in 'Models\Modulos\Estoque\Produtos\Entidade\TESTPRODUTO.Entidade.Model.pas',
  Produto.Model.Interf in 'Models\Modulos\Estoque\Produtos\Produto.Model.Interf.pas',
  Produto.Model in 'Models\Modulos\Estoque\Produtos\Produto.Model.pas',
  EstoqueFactory.Model.Interf in 'Models\Modulos\Estoque\EstoqueFactory.Model.Interf.pas',
  EstoqueFactory.Model in 'Models\Modulos\Estoque\EstoqueFactory.Model.pas',
  ModulosFacade.Model.Interf in 'Models\Modulos\ModulosFacade.Model.Interf.pas',
  ModulosFacade.Model in 'Models\Modulos\ModulosFacade.Model.pas',
  Produto.Controller.interf in 'Controllers\Modulos\Estoque\Produto\Produto.Controller.interf.pas',
  Tipos.Controller.Interf in 'Controllers\Tipos\Tipos.Controller.Interf.pas',
  Produto.Controller in 'Controllers\Modulos\Estoque\Produto\Produto.Controller.pas',
  EstoqueFactory.Controller.interf in 'Controllers\Modulos\Estoque\EstoqueFactory.Controller.interf.pas',
  EstoqueFactory.Controller in 'Controllers\Modulos\Estoque\EstoqueFactory.Controller.pas',
  ModulosFacade.Controller.interf in 'Controllers\Modulos\ModulosFacade.Controller.interf.pas',
  ModulosFacade.Controller in 'Controllers\Modulos\ModulosFacade.Controller.pas',
  ProdutoOperacoesIncluir.Controller in 'Controllers\Modulos\Estoque\Produto\Operacoes\ProdutoOperacoesIncluir.Controller.pas',
  ProdutoOperacoesAlterar.Controller in 'Controllers\Modulos\Estoque\Produto\Operacoes\ProdutoOperacoesAlterar.Controller.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipalView, FPrincipalView);
  Application.Run;
end.
