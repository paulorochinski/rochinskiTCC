unit EstoqueFactory.View;

interface

uses EstoqueFactory.View.interf, Base.View.interf, Tipos.Controller.interf;

type
  TEstoqueFactoryView = class(TInterfacedObject, IEstoqueFactoryView)
  private
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IEstoqueFactoryView;

    function exibirTelaListagem(AValue: TTelaListagem): IBasePesquisaView;
  end;

implementation

{ TEstoqueFactoryView }

uses EST0001P.View;

constructor TEstoqueFactoryView.Create;
begin

end;

destructor TEstoqueFactoryView.Destroy;
begin

  inherited;
end;

function TEstoqueFactoryView.exibirTelaListagem(AValue: TTelaListagem)
  : IBasePesquisaView;
begin
  case AValue of
    tlProduto:
      Result := TFEST0001PView.New;
  end;
end;

class function TEstoqueFactoryView.New: IEstoqueFactoryView;
begin
  Result := Self.Create;
end;

end.
