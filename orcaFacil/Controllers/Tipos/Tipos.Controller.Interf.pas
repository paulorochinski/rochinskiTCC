unit Tipos.Controller.Interf;

interface

type
  TTipoOperacao = (toIncluir, toAlterar, toConsultar, toExcluir, toDuplicar);
  TTIpoMensagem = (tmInformacao, tmAlerta, tmErro, tmConfirmacao);

  TTelaListagem = (tlProduto, tlFornecedor, tlOrcamento);
  TTelaCadastro = (tcProduto, tcFornecedor, tcOrcamento);
  TTelaImportacao = (tiProduto);

  TTelaBusca = (tbProduto, tbFornecedor, tbOrcamento);

implementation

end.
