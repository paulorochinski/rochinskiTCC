unit Produto.Controller.interf;

interface

uses Tipos.Controller.interf, Produto.Model.interf;

type
  IProdutoOperacaoIncluirController = interface;
  IProdutoOperacaoAlterarController = interface;
  IProdutoOperacaoConsultarController = interface;
  IProdutoOperacaoExcluirController = interface;
  IProdutoOperacaoDuplicarController = interface;

  IProdutoController = interface
    ['{27F8BCF5-E76C-4DDA-8436-8259EB541F8E}']
    function Incluir: IProdutoOperacaoIncluirController;
    function Alterar: IProdutoOperacaoAlterarController;
    function Consultar: IProdutoOperacaoConsultarController;
    function Excluir: IProdutoOperacaoExcluirController;
    function Duplicar: IProdutoOperacaoDuplicarController;
  end;

  IProdutoOperacaoIncluirController = interface
    ['{0FBDB52C-DB07-402B-9B2D-8AD9E8EA51EC}']
    function produtoController(AValue: IProdutoController)
      : IProdutoOperacaoIncluirController;
    function produtoModel(AValue: IProdutoModel): IProdutoOperacaoIncluirController;

    function codigoSinapi(AValue: integer): IProdutoOperacaoIncluirController; overload;
    function codigoSinapi(AValue: string): IProdutoOperacaoIncluirController; overload;

    function descricao(AValue: string): IProdutoOperacaoIncluirController; overload;

    function unidMedida(AValue: string): IProdutoOperacaoIncluirController; overload;

    function prMedioSinapi(AValue: Currency)
      : IProdutoOperacaoIncluirController; overload;
    function prMedioSinapi(AValue: string): IProdutoOperacaoIncluirController; overload;

    function &end: IProdutoController;
  end;

  IProdutoOperacaoAlterarController = interface
    ['{0FBDB52C-DB07-402B-9B2D-8AD9E8EA51EC}']
    function produtoController(AValue: IProdutoController)
      : IProdutoOperacaoAlterarController;
    function produtoModel(AValue: IProdutoModel): IProdutoOperacaoAlterarController;

    function localizar(AValue: string): IProdutoOperacaoAlterarController;

    function codigoSinapi(AValue: integer): IProdutoOperacaoAlterarController; overload;
    function codigoSinapi(AValue: string): IProdutoOperacaoAlterarController; overload;
    function codigoSinapi: string; overload;

    function descricao(AValue: string): IProdutoOperacaoAlterarController; overload;
    function descricao: string; overload;

    function unidMedida(AValue: string): IProdutoOperacaoAlterarController; overload;
    function unidMedida: string; overload;

    function prMedioSinapi(AValue: Currency)
      : IProdutoOperacaoAlterarController; overload;
    function prMedioSinapi(AValue: string): IProdutoOperacaoAlterarController; overload;
    function prMedioSinapi: string; overload;

    function &end: IProdutoController;
  end;

  IProdutoOperacaoConsultarController = interface
    ['{39E9F642-5752-4D00-AABA-EF915EC23D4B}']
    function produtoController(AValue: IProdutoController)
      : IProdutoOperacaoConsultarController;
    function produtoModel(AValue: IProdutoModel): IProdutoOperacaoConsultarController;

    function localizar(AValue: string): IProdutoOperacaoConsultarController;

    function codigoSinapi: string;
    function descricao: string;
    function unidMedida: string;
    function prMedioSinapi: string;

    function &end: IProdutoController;
  end;

  IProdutoOperacaoExcluirController = interface
    ['{39E9F642-5752-4D00-AABA-EF915EC23D4B}']
    function produtoController(AValue: IProdutoController)
      : IProdutoOperacaoExcluirController;
    function produtoModel(AValue: IProdutoModel): IProdutoOperacaoExcluirController;

    function localizar(AValue: string): IProdutoOperacaoExcluirController;

    function codigoSinapi: string;
    function descricao: string;
    function unidMedida: string;
    function prMedioSinapi: string;

    function &end: IProdutoController;
  end;

  IProdutoOperacaoDuplicarController = interface
    ['{0FBDB52C-DB07-402B-9B2D-8AD9E8EA51EC}']
    function produtoController(AValue: IProdutoController)
      : IProdutoOperacaoDuplicarController;
    function produtoModel(AValue: IProdutoModel): IProdutoOperacaoDuplicarController;

    function localizar(AValue: string): IProdutoOperacaoDuplicarController;

    function codigoSinapi(AValue: integer): IProdutoOperacaoDuplicarController;
      overload;
    function codigoSinapi(AValue: string): IProdutoOperacaoDuplicarController; overload;
    function codigoSinapi: string; overload;

    function descricao(AValue: string): IProdutoOperacaoDuplicarController; overload;
    function descricao: string; overload;

    function unidMedida(AValue: string): IProdutoOperacaoDuplicarController; overload;
    function unidMedida: string; overload;

    function prMedioSinapi(AValue: Currency)
      : IProdutoOperacaoDuplicarController; overload;
    function prMedioSinapi(AValue: string): IProdutoOperacaoDuplicarController;
      overload;
    function prMedioSinapi: string; overload;

    function &end: IProdutoController;
  end;

implementation

end.
