unit Tipos.Controller.Interf;

interface

type
  TTipoOperacao = (toIncluir, toAlterar, toConsultar, toExcluir, toDuplicar);
  TTIpoMensagem = (tmInformacao, tmAlerta, tmErro, tmConfirmacao);

  TTelaListagem = (tlProduto, tlFornecedor, tlOrcamento, tlCotacao);
  TTelaCadastro = (tcProduto, tcFornecedor, tcOrcamento);

  TTelaImportacao = (tiProduto, tiCotacao);

  TTelaBusca = (tbProduto, tbFornecedor, tbOrcamento);

implementation

end.
