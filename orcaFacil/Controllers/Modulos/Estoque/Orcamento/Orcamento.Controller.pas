unit Orcamento.Controller;

interface

uses Orcamento.Controller.interf, Orcamento.Model.interf,
  OrcamentoItens.Model.interf, TESTORCAMENTOITENS.Entidade.Model,
  Generics.Collections, TESTORCAMENTO.Entidade.Model, System.SysUtils;

type
  TOrcamentoController = class(TInterfacedObject, IOrcamentoController)
  private
    FOrcamentoModel: IOrcamentoModel;
    FOrcamentoItensModel: IOrcamentoItensModel;
    FRegistro: TTESTORCAMENTO;
    FListaItens: TObjectList<TTESTORCAMENTOITENS>;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IOrcamentoController;

    function Incluir: IOrcamentoOperacaoIncluirController;
    function Alterar: IOrcamentoOperacaoAlterarController;
    function Excluir: IOrcamentoOperacaoExcluirController;
    function Duplicar: IOrcamentoOperacaoDuplicarController;

    function localizar(AValue: string): IOrcamentoController;

    function idOrcamento: string;
    function descricao: string;

    function itens: TObjectList<TTESTORCAMENTOITENS>;
  end;

implementation

{ TOrcamentoController }

uses FacadeController, FacadeModel, OrcamentoOperacaoIncluir.Controller;

function TOrcamentoController.Alterar: IOrcamentoOperacaoAlterarController;
begin

end;

constructor TOrcamentoController.Create;
begin
  FOrcamentoModel := TFacadeModel.New.ModulosFacadeModel.
    estoqueFactoryModel.Orcamento;

  FOrcamentoItensModel := TFacadeModel.New.ModulosFacadeModel.
    estoqueFactoryModel.OrcamentoItens
end;

function TOrcamentoController.descricao: string;
begin
  Result := FRegistro.descricao;
end;

destructor TOrcamentoController.Destroy;
begin

  inherited;
end;

function TOrcamentoController.Duplicar: IOrcamentoOperacaoDuplicarController;
begin

end;

function TOrcamentoController.Excluir: IOrcamentoOperacaoExcluirController;
begin

end;

function TOrcamentoController.idOrcamento: string;
begin
  Result := IntToStr(FRegistro.idOrcamento);
end;

function TOrcamentoController.Incluir: IOrcamentoOperacaoIncluirController;
begin
  Result := TOrcamentoOperacaoIncluirController.New.orcamentoModel
    (FOrcamentoModel).orcamentoItensModel(FOrcamentoItensModel)
end;

function TOrcamentoController.itens: TObjectList<TTESTORCAMENTOITENS>;
begin
  Result := FListaItens;
end;

function TOrcamentoController.localizar(AValue: string): IOrcamentoController;
begin
  Result := Self;

  FRegistro := FOrcamentoModel.DAO.FindWhere('CODIGO=' + QuotedStr(AValue),
    'DATA_CADASTRO').Items[0];

  FListaItens := FOrcamentoItensModel.DAO.FindWhere
    ('IDORCAMENTO=' + QuotedStr(AValue), 'IDORCAMENTO')
end;

class function TOrcamentoController.New: IOrcamentoController;
begin
  Result := Self.Create;
end;

end.
