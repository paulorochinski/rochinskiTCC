unit Orcamento.Controller.interf;

interface

uses TESTORCAMENTOITENS.Entidade.Model, Generics.Collections, Orcamento.Model.Interf,
  OrcamentoItens.Model.Interf;

type
  TOrcamentoItens = record
    idOrcamento: string;
    idProduto: string;
    qtde: Double;
  end;

  IOrcamentoOperacaoIncluirController = interface;
  IOrcamentoOperacaoAlterarController = interface;
  IOrcamentoOperacaoExcluirController = interface;
  IOrcamentoOperacaoDuplicarController = interface;

  IOrcamentoController = interface
    ['{DFFA9AF3-6D9A-4ED7-A4DA-C648BE423D37}']
    function Incluir: IOrcamentoOperacaoIncluirController;
    function Alterar: IOrcamentoOperacaoAlterarController;
    function Excluir: IOrcamentoOperacaoExcluirController;
    function Duplicar: IOrcamentoOperacaoDuplicarController;

    function localizar(AValue: string): IOrcamentoController;

    function idOrcamento: string;
    function descricao: string;

    function itens: TObjectList<TTESTORCAMENTOITENS>;
  end;

  IOrcamentoOperacaoIncluirController = interface
    ['{83D617C7-833C-49A9-916D-C1ECF73C3F75}']
    function orcamentoModel(AValue: IOrcamentoModel): IOrcamentoOperacaoIncluirController;
    function orcamentoItensModel(AValue: IOrcamentoItensModel): IOrcamentoOperacaoIncluirController;

    function descricao(AValue: string): IOrcamentoOperacaoIncluirController;

    procedure finalizar;
  end;

  IOrcamentoOperacaoAlterarController = interface
    ['{88400D99-E02B-4FE7-BE4F-E2C3062FA4CE}']
  end;

  IOrcamentoOperacaoExcluirController = interface
    ['{0F9E14BA-EE3D-4E57-8247-6EB02FD15996}']
  end;

  IOrcamentoOperacaoDuplicarController = interface
    ['{B14AE514-4A2F-454F-9298-DEA1B82F421E}']
  end;

implementation

end.
