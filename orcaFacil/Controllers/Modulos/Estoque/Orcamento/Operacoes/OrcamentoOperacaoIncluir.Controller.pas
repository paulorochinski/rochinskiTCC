unit OrcamentoOperacaoIncluir.Controller;

interface

uses Orcamento.Controller.interf, Orcamento.Model.interf,
  OrcamentoItens.Model.interf, TESTORCAMENTOITENS.Entidade.Model,
  Generics.Collections, TESTORCAMENTO.Entidade.Model;

type
  TOrcamentoOperacaoIncluirController = class(TInterfacedObject,
    IOrcamentoOperacaoIncluirController)
  private
    FOrcamentoModel: IOrcamentoModel;
    FOrcamentoItensModel: IOrcamentoItensModel;

    FDescricao: string;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IOrcamentoOperacaoIncluirController;

    function orcamentoModel(AValue: IOrcamentoModel)
      : IOrcamentoOperacaoIncluirController;
    function orcamentoItensModel(AValue: IOrcamentoItensModel)
      : IOrcamentoOperacaoIncluirController;

    function descricao(AValue: string): IOrcamentoOperacaoIncluirController;

    procedure finalizar;
  end;

implementation

{ TOrcamentoOperacaoIncluirController }

constructor TOrcamentoOperacaoIncluirController.Create;
begin

end;

function TOrcamentoOperacaoIncluirController.descricao(AValue: string)
  : IOrcamentoOperacaoIncluirController;
begin
  Result := Self;
  FDescricao := AValue;
end;

destructor TOrcamentoOperacaoIncluirController.Destroy;
begin

  inherited;
end;

procedure TOrcamentoOperacaoIncluirController.finalizar;
begin
  FOrcamentoModel.Entidade(TTESTORCAMENTO.Create);

  FOrcamentoModel.Entidade.DESCRICAO := FDescricao;

  FOrcamentoModel.DAO.Insert(FOrcamentoModel.Entidade);

end;

class function TOrcamentoOperacaoIncluirController.New
  : IOrcamentoOperacaoIncluirController;
begin
  Result := Self.Create;
end;

function TOrcamentoOperacaoIncluirController.orcamentoItensModel
  (AValue: IOrcamentoItensModel): IOrcamentoOperacaoIncluirController;
begin
  Result := Self;
  FOrcamentoItensModel := AValue;
end;

function TOrcamentoOperacaoIncluirController.orcamentoModel
  (AValue: IOrcamentoModel): IOrcamentoOperacaoIncluirController;
begin
  Result := Self;
  FOrcamentoModel := AValue;
end;

end.
