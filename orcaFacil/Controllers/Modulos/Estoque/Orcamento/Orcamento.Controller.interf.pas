unit Orcamento.Controller.interf;

interface

uses TESTORCAMENTOITENS.Entidade.Model, Generics.Collections, Orcamento.Model.Interf,
  OrcamentoItens.Model.Interf;

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

  IOrcamentoItemController = interface
    ['{862A5A15-4353-49DF-AB9C-6C9AFDE16DEF}']
    function codigoItem(AValue: string): IOrcamentoItemController;
    function qtde(AValue: Double): IOrcamentoItemController;
    function finalizar: TOrcamentoItens;
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
  end;

  IOrcamentoOperacaoExcluirController = interface
    ['{0F9E14BA-EE3D-4E57-8247-6EB02FD15996}']
  end;

  IOrcamentoOperacaoDuplicarController = interface
    ['{B14AE514-4A2F-454F-9298-DEA1B82F421E}']
  end;

implementation

end.
