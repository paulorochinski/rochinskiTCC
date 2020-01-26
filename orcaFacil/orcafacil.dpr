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
  ProdutoOperacaoAlterar.Controller in 'Controllers\Modulos\Estoque\Produto\Operacoes\ProdutoOperacaoAlterar.Controller.pas',
  ProdutoOperacaoIncluir.Controller in 'Controllers\Modulos\Estoque\Produto\Operacoes\ProdutoOperacaoIncluir.Controller.pas',
  ProdutoOperacaoExcluir.Controller in 'Controllers\Modulos\Estoque\Produto\Operacoes\ProdutoOperacaoExcluir.Controller.pas',
  ProdutoOperacaoDuplicar.Controller in 'Controllers\Modulos\Estoque\Produto\Operacoes\ProdutoOperacaoDuplicar.Controller.pas',
  EST0001P.View in 'Views\Modulos\Estoque\Produto\EST0001P.View.pas' {FEST0001PView},
  Base.View.Interf in 'Views\Base\Base.View.Interf.pas',
  EstoqueFactory.View.interf in 'Views\Modulos\Estoque\EstoqueFactory.View.interf.pas',
  EstoqueFactory.View in 'Views\Modulos\Estoque\EstoqueFactory.View.pas',
  ModulosFacade.View.Interf in 'Views\Modulos\ModulosFacade.View.Interf.pas',
  ModulosFacade.View in 'Views\Modulos\ModulosFacade.View.pas',
  FacadeView.Interf in 'Views\FacadeView.Interf.pas',
  FacadeView in 'Views\FacadeView.pas',
  EST0001C.View in 'Views\Modulos\Estoque\Produto\EST0001C.View.pas' {FEST0001CView},
  ImportarBase.View in 'Views\Base\ImportarBase.View.pas' {FImportarView},
  EST0001I.View in 'Views\Modulos\Estoque\Produto\EST0001I.View.pas' {FEST0001IView},
  ImportarProduto.Controller.interf in 'Controllers\Modulos\Estoque\ImportarProduto\ImportarProduto.Controller.interf.pas',
  ImportarProduto.Controller in 'Controllers\Modulos\Estoque\ImportarProduto\ImportarProduto.Controller.pas',
  ImportarProdutoOperacao.Controller in 'Controllers\Modulos\Estoque\ImportarProduto\Operacoes\ImportarProdutoOperacao.Controller.pas',
  TPAGFORNECEDOR.Entidade.Model in 'Models\Modulos\Pagar\Fornecedor\Entidade\TPAGFORNECEDOR.Entidade.Model.pas',
  Fornecedor.Model.Interf in 'Models\Modulos\Pagar\Fornecedor\Fornecedor.Model.Interf.pas',
  Fornecedor.Model in 'Models\Modulos\Pagar\Fornecedor\Fornecedor.Model.pas',
  PagarFactory.Model.Interf in 'Models\Modulos\Pagar\PagarFactory.Model.Interf.pas',
  PagarFactory.Model in 'Models\Modulos\Pagar\PagarFactory.Model.pas',
  MensagemBase in 'Views\Base\MensagemBase.pas' {FMensagemView},
  M0001INF.View in 'Views\Mensagens\Informacao\M0001INF.View.pas' {FM0001INFView},
  M0001CON.View in 'Views\Mensagens\Confirmacao\M0001CON.View.pas' {FM0001CONView},
  M0001ERR.View in 'Views\Mensagens\Erro\M0001ERR.View.pas' {FM0001ERRView},
  M0001ALE.View in 'Views\Mensagens\Alerta\M0001ALE.View.pas' {FM0001ALEView},
  MensagensFactory.View.Interf in 'Views\Mensagens\MensagensFactory.View.Interf.pas',
  MensagensFactory.View in 'Views\Mensagens\MensagensFactory.View.pas',
  Fornecedor.Controller.Interf in 'Controllers\Modulos\Pagar\Fornecedor\Fornecedor.Controller.Interf.pas',
  Fornecedor.Controller in 'Controllers\Modulos\Pagar\Fornecedor\Fornecedor.Controller.pas',
  FornecedorOperacaoIncluir.Controller in 'Controllers\Modulos\Pagar\Fornecedor\Operacoes\FornecedorOperacaoIncluir.Controller.pas',
  FornecedorOperacaoAlterar.Controller in 'Controllers\Modulos\Pagar\Fornecedor\Operacoes\FornecedorOperacaoAlterar.Controller.pas',
  FornecedorOperacaoDuplicar.Controller in 'Controllers\Modulos\Pagar\Fornecedor\Operacoes\FornecedorOperacaoDuplicar.Controller.pas',
  FornecedorOperacaoExcluir.Controller in 'Controllers\Modulos\Pagar\Fornecedor\Operacoes\FornecedorOperacaoExcluir.Controller.pas',
  PAG0001P.View in 'Views\Modulos\Pagar\Fornecedor\PAG0001P.View.pas' {FPAG0001PView},
  PagarFactory.View.interf in 'Views\Modulos\Pagar\PagarFactory.View.interf.pas',
  PagarFactory.View in 'Views\Modulos\Pagar\PagarFactory.View.pas',
  PAG0001C.View in 'Views\Modulos\Pagar\Fornecedor\PAG0001C.View.pas' {FPAG0001CView},
  PagarFactory.Controller.interf in 'Controllers\Modulos\Pagar\PagarFactory.Controller.interf.pas',
  PagarFactory.Controller in 'Controllers\Modulos\Pagar\PagarFactory.Controller.pas',
  TESTORCAMENTO.Entidade.Model in 'Models\Modulos\Estoque\Orcamento\Entidade\TESTORCAMENTO.Entidade.Model.pas',
  TESTORCAMENTOITENS.Entidade.Model in 'Models\Modulos\Estoque\OrcamentoItens\Entidade\TESTORCAMENTOITENS.Entidade.Model.pas',
  Orcamento.Model.Interf in 'Models\Modulos\Estoque\Orcamento\Orcamento.Model.Interf.pas',
  Orcamento.Model in 'Models\Modulos\Estoque\Orcamento\Orcamento.Model.pas',
  OrcamentoItens.Model.Interf in 'Models\Modulos\Estoque\OrcamentoItens\OrcamentoItens.Model.Interf.pas',
  OrcamentoItens.Model in 'Models\Modulos\Estoque\OrcamentoItens\OrcamentoItens.Model.pas',
  Orcamento.Controller.interf in 'Controllers\Modulos\Estoque\Orcamento\Orcamento.Controller.interf.pas',
  Orcamento.Controller in 'Controllers\Modulos\Estoque\Orcamento\Orcamento.Controller.pas',
  OrcamentoOperacaoIncluir.Controller in 'Controllers\Modulos\Estoque\Orcamento\Operacoes\OrcamentoOperacaoIncluir.Controller.pas',
  EST0002P.View in 'Views\Modulos\Estoque\Orcamento\EST0002P.View.pas' {FEST0002PView},
  EST0002C.View in 'Views\Modulos\Estoque\Orcamento\EST0002C.View.pas' {FEST0002CView},
  LocalizarBase.View in 'Views\Base\LocalizarBase.View.pas' {FLocalizarView},
  EST0001L.View in 'Views\Modulos\Estoque\Produto\EST0001L.View.pas' {FEST0001LView};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipalView, FPrincipalView);
  Application.Run;
end.
