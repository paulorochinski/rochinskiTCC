unit Orcamento.Controller.interf;

interface

uses TESTORCAMENTOITENS.Entidade.Model, Generics.Collections, Orcamento.Model.Interf,
  OrcamentoItens.Model.Interf, TESTORCAMENTO.Entidade.Model;

type
  TOrcamentoItens = record
    codigo: string;
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

    function itens: TList<TOrcamentoItens>;

    procedure AddItem(AValue: TOrcamentoItens);
    procedure removeAllItens;
  end;

  IOrcamentoOperacaoIncluirController = interface
    ['{83D617C7-833C-49A9-916D-C1ECF73C3F75}']
    function orcamentoModel(AValue: IOrcamentoModel): IOrcamentoOperacaoIncluirController;
    function orcamentoItensModel(AValue: IOrcamentoItensModel): IOrcamentoOperacaoIncluirController;

    function descricao(AValue: string): IOrcamentoOperacaoIncluirController;
    function itens(AValue: TList<TOrcamentoItens>): IOrcamentoOperacaoIncluirController;

    procedure finalizar;
  end;

  IOrcamentoOperacaoAlterarController = interface
    ['{88400D99-E02B-4FE7-BE4F-E2C3062FA4CE}']
    function orcamentoModel(AValue: IOrcamentoModel): IOrcamentoOperacaoAlterarController;
    function orcamentoItensModel(AValue: IOrcamentoItensModel): IOrcamentoOperacaoAlterarController;

    function orcamentoSelecionado(AValue: TTESTORCAMENTO): IOrcamentoOperacaoAlterarController;

    function descricao(AValue: string): IOrcamentoOperacaoAlterarController;
    function itens(AValue: TList<TOrcamentoItens>): IOrcamentoOperacaoAlterarController;

    procedure finalizar;
  end;

  IOrcamentoOperacaoExcluirController = interface
    ['{0F9E14BA-EE3D-4E57-8247-6EB02FD15996}']
    function orcamentoModel(AValue: IOrcamentoModel): IOrcamentoOperacaoExcluirController;
    function orcamentoItensModel(AValue: IOrcamentoItensModel): IOrcamentoOperacaoExcluirController;

    function orcamentoSelecionado(AValue: TTESTORCAMENTO): IOrcamentoOperacaoExcluirController;

    procedure finalizar;
  end;

  IOrcamentoOperacaoDuplicarController = interface
    ['{B14AE514-4A2F-454F-9298-DEA1B82F421E}']
    function orcamentoModel(AValue: IOrcamentoModel): IOrcamentoOperacaoDuplicarController;
    function orcamentoItensModel(AValue: IOrcamentoItensModel): IOrcamentoOperacaoDuplicarController;

    function descricao(AValue: string): IOrcamentoOperacaoDuplicarController;
    function itens(AValue: TList<TOrcamentoItens>): IOrcamentoOperacaoDuplicarController;

    procedure finalizar;
  end;

implementation

end.
