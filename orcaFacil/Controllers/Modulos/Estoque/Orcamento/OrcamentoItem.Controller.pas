unit OrcamentoItem.Controller;

interface

uses Orcamento.Controller.interf;

type
  TOrcamentoItemController = class(TInterfacedObject, IOrcamentoItemController)
  private
    FCodigoItem: string;
    FQtde: Double;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IOrcamentoItemController;

    function codigoItem(AValue: string): IOrcamentoItemController;
    function qtde(AValue: Double): IOrcamentoItemController;

    function finalizar: TOrcamentoItens;

  end;

implementation

{ TOrcamentoItemController }

function TOrcamentoItemController.codigoItem(AValue: string): IOrcamentoItemController;
begin
  Result := Self;
  FCodigoItem := AValue;
end;

constructor TOrcamentoItemController.Create;
begin

end;

destructor TOrcamentoItemController.Destroy;
begin

  inherited;
end;

function TOrcamentoItemController.finalizar: TOrcamentoItens;
var
 Item: TOrcamentoItens;
begin

  //Item.codidoItem := FCodigoItem;
  //Item.qtde := FQtde;

  Result := Item;
end;

class function TOrcamentoItemController.New: IOrcamentoItemController;
begin
  Result := Self.Create;
end;

function TOrcamentoItemController.qtde(AValue: Double): IOrcamentoItemController;
begin
  Result := Self;
  FQtde := AValue;
end;

end.
