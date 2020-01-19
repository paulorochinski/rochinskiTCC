unit Tipos.Controller.Interf;

interface

type
  TTipoOperacao = (toIncluir, toAlterar, toConsultar, toExcluir, toDuplicar);
  TTIpoMensagem = (tmInformacao, tmAlerta, tmErro, tmConfirmacao);

  TTelaListagem = (tlProduto, tlFornecedor);
  TTelaCadastro = (tcProduto, tcFornecedor);
  TTelaImportacao = (tiProduto);

implementation

end.
