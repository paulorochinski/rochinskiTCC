unit PagarFactory.View;

interface

uses PagarFactory.View.interf, Base.View.interf, Tipos.Controller.interf;

type
  TPagarFactoryView = class(TInterfacedObject, iPagarFactoryView)
  private
  public
    constructor Create;
    destructor Destroy; override;

    class function New: iPagarFactoryView;

    function exibirTelaListagem(AValue: TTelaListagem): IBasePesquisaView;
  end;

implementation

{ TPagarFactoryView }

uses PAG0001P.View;

constructor TPagarFactoryView.Create;
begin

end;

destructor TPagarFactoryView.Destroy;
begin

  inherited;
end;

function TPagarFactoryView.exibirTelaListagem(AValue: TTelaListagem): IBasePesquisaView;
begin
 case AValue of
   tlFornecedor :  Result := TFPAG0001PView.New;
 end;
end;

class function TPagarFactoryView.New: iPagarFactoryView;
begin
  Result := Self.Create;
end;

end.
