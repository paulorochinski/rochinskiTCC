unit Produto.Controller.interf;

interface

uses Tipos.Controller.interf, Produto.Model.interf;

type
  IProdutoIncluirController = interface;
  IProdutoAlterarController = interface;
  IProdutoExcluirController = interface;

  IProdutoController = interface
    ['{27F8BCF5-E76C-4DDA-8436-8259EB541F8E}']
    function Incluir: IProdutoIncluirController;
    function Alterar: IProdutoAlterarController;
    function Excluir: IProdutoExcluirController;
  end;

  IProdutoIncluirController = interface
    ['{0FBDB52C-DB07-402B-9B2D-8AD9E8EA51EC}']
    function produtoController(AValue: IProdutoController)
      : IProdutoIncluirController;
    function produtoModel(AValue: IProdutoModel): IProdutoIncluirController;

    function codigoSinapi(AValue: integer): IProdutoIncluirController; overload;
    function codigoSinapi(AValue: string): IProdutoIncluirController; overload;
    function codigoSinapi: string; overload;

    function descricao(AValue: string): IProdutoIncluirController; overload;
    function descricao: string; overload;

    function unidMedida(AValue: string): IProdutoIncluirController; overload;
    function unidMedida: string; overload;

    function prMedioSinapi(AValue: Currency)
      : IProdutoIncluirController; overload;
    function prMedioSinapi(AValue: string): IProdutoIncluirController; overload;
    function prMedioSinapi: string; overload;

    function &end: IProdutoController;
  end;

  IProdutoAlterarController = interface
    ['{0FBDB52C-DB07-402B-9B2D-8AD9E8EA51EC}']
    function produtoController(AValue: IProdutoController)
      : IProdutoAlterarController;
    function produtoModel(AValue: IProdutoModel): IProdutoAlterarController;

    function localizar(AValue: string): IProdutoAlterarController;

    function codigoSinapi(AValue: integer): IProdutoAlterarController; overload;
    function codigoSinapi(AValue: string): IProdutoAlterarController; overload;
    function codigoSinapi: string; overload;

    function descricao(AValue: string): IProdutoAlterarController; overload;
    function descricao: string; overload;

    function unidMedida(AValue: string): IProdutoAlterarController; overload;
    function unidMedida: string; overload;

    function prMedioSinapi(AValue: Currency)
      : IProdutoAlterarController; overload;
    function prMedioSinapi(AValue: string): IProdutoAlterarController; overload;
    function prMedioSinapi: string; overload;

    function &end: IProdutoController;
  end;

  IProdutoExcluirController = interface
    ['{39E9F642-5752-4D00-AABA-EF915EC23D4B}']
    function produtoController(AValue: IProdutoController)
      : IProdutoExcluirController;
    function produtoModel(AValue: IProdutoModel): IProdutoExcluirController;

    function localizar(AValue: string): IProdutoExcluirController;

    function &end: IProdutoController;
  end;

implementation

end.
