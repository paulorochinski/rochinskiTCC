unit EstoqueFactory.Model;

interface

uses EstoqueFactory.Model.Interf, Produto.Model.Interf;

type
  TEstoqueFactoryModel = class(TInterfacedObject, IEstoqueFactoryModel)
  private
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IEstoqueFactoryModel;

    function Produto: IProdutoModel;
  end;

implementation

{ TEstoqueFactoryModel }

uses Produto.Model;

constructor TEstoqueFactoryModel.Create;
begin

end;

destructor TEstoqueFactoryModel.Destroy;
begin

  inherited;
end;

class function TEstoqueFactoryModel.New: IEstoqueFactoryModel;
begin
  Result := Self.Create;
end;

function TEstoqueFactoryModel.Produto: IProdutoModel;
begin
  Result := TProdutoModel.New;
end;

end.
