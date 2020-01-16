unit ImportarProduto.Controller.interf;

interface

uses Produto.Model.interf, TESTPRODUTO.Entidade.Model;

type
  IImportarProdutoOperacaoController = interface;

  IImportarProdutoController = interface
    ['{75337188-7273-4D5E-85E6-4EBF9BBD15B8}']
    function localizar(AValue: Integer): IImportarProdutoController;
    function produtoSelecionado: TTESTPRODUTO;

    function Importar: IImportarProdutoOperacaoController;
  end;

  IImportarProdutoOperacaoController = interface
    ['{8676EBB1-7498-49EB-B1E9-7473B51AB780}']
    function importarProdutoController(AValue: IImportarProdutoController)
      : IImportarProdutoOperacaoController;
    function produtoModel(AValue: IProdutoModel)
      : IImportarProdutoOperacaoController;

    function produtoSelecionado(AValue: TTESTPRODUTO)
      : IImportarProdutoOperacaoController;

    function codigoSinapi(AValue: string)
      : IImportarProdutoOperacaoController;

    function descricao(AValue: string)
      : IImportarProdutoOperacaoController;

    function unidMedida(AValue: string)
      : IImportarProdutoOperacaoController;

    function origemPreco(AValue: string)
      : IImportarProdutoOperacaoController;

    function prMedioSinapi(AValue: Currency)
      : IImportarProdutoOperacaoController; overload;
    function prMedioSinapi(AValue: string)
      : IImportarProdutoOperacaoController; overload;

    procedure atualizarDadosDoProduto;
    procedure salvarDadosNovoProduto;

    function &executar: IImportarProdutoController;
  end;

implementation

end.
