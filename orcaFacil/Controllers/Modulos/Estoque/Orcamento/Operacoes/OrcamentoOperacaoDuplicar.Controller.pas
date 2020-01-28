unit OrcamentoOperacaoDuplicar.Controller;

interface

uses Orcamento.Controller.interf, Orcamento.Model.interf,
  OrcamentoItens.Model.interf, TESTORCAMENTOITENS.Entidade.Model,
  Generics.Collections, TESTORCAMENTO.Entidade.Model;

type
  TOrcamentoOperacaoDuplicarController = class(TInterfacedObject,
    IOrcamentoOperacaoDuplicarController)
  private
    FOrcamentoModel: IOrcamentoModel;
    FOrcamentoItensModel: IOrcamentoItensModel;

    FDescricao: string;
    FLista: TList<TOrcamentoItens>;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IOrcamentoOperacaoDuplicarController;

    function orcamentoModel(AValue: IOrcamentoModel)
      : IOrcamentoOperacaoDuplicarController;
    function orcamentoItensModel(AValue: IOrcamentoItensModel)
      : IOrcamentoOperacaoDuplicarController;

    function descricao(AValue: string): IOrcamentoOperacaoDuplicarController;

    function itens(AValue: TList<TOrcamentoItens>): IOrcamentoOperacaoDuplicarController;

    procedure finalizar;
  end;

implementation

{ TOrcamentoOperacaoDuplicarController }

constructor TOrcamentoOperacaoDuplicarController.Create;
begin

end;

function TOrcamentoOperacaoDuplicarController.descricao(AValue: string)
  : IOrcamentoOperacaoDuplicarController;
begin
  Result := Self;
  FDescricao := AValue;
end;

destructor TOrcamentoOperacaoDuplicarController.Destroy;
begin

  inherited;
end;

procedure TOrcamentoOperacaoDuplicarController.finalizar;
var
  I: Integer;
begin
  FOrcamentoModel.Entidade(TTESTORCAMENTO.Create);

  FOrcamentoModel.Entidade.DESCRICAO := FDescricao;

  FOrcamentoModel.DAO.Insert(FOrcamentoModel.Entidade);

  for I := 0 to pred(FLista.Count) do
   begin
     FOrcamentoItensModel.Entidade(TTESTORCAMENTOITENS.Create);

     FOrcamentoItensModel.Entidade.IDORCAMENTO := FOrcamentoModel.Entidade.CODIGO;
     FOrcamentoItensModel.Entidade.IDPRODUTO := FLista.Items[I].codigo;
     FOrcamentoItensModel.Entidade.QTDE := FLista.Items[I].qtde;

     FOrcamentoItensModel.DAO.Insert(FOrcamentoItensModel.Entidade);

   end;
end;

function TOrcamentoOperacaoDuplicarController.itens(
  AValue: TList<TOrcamentoItens>): IOrcamentoOperacaoDuplicarController;
begin
  Result := self;
  FLista := AValue;
end;

class function TOrcamentoOperacaoDuplicarController.New
  : IOrcamentoOperacaoDuplicarController;
begin
  Result := Self.Create;
end;

function TOrcamentoOperacaoDuplicarController.orcamentoItensModel
  (AValue: IOrcamentoItensModel): IOrcamentoOperacaoDuplicarController;
begin
  Result := Self;
  FOrcamentoItensModel := AValue;
end;

function TOrcamentoOperacaoDuplicarController.orcamentoModel
  (AValue: IOrcamentoModel): IOrcamentoOperacaoDuplicarController;
begin
  Result := Self;
  FOrcamentoModel := AValue;
end;

end.
