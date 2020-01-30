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

    function exibirTelaBusca(AValue: TTelaBusca): IBaseLocalizarView;

    function exibirTelaListagem(AValue: TTelaListagem): IBasePesquisaView;
    function exibirTelaCadastro(AValue: TTelaCadastro): IBaseCadastroView;
  end;

implementation

{ TPagarFactoryView }

uses PAG0001P.View, PAG0001C.View, PAG0001L.View;

constructor TPagarFactoryView.Create;
begin

end;

destructor TPagarFactoryView.Destroy;
begin

  inherited;
end;

function TPagarFactoryView.exibirTelaBusca(AValue: TTelaBusca): IBaseLocalizarView;
begin
  case AValue of
    tbFornecedor: Result := TFPAG0001LView.New;
  end;
end;

function TPagarFactoryView.exibirTelaCadastro(AValue: TTelaCadastro)
  : IBaseCadastroView;
begin
  case AValue of
    tcFornecedor:
      Result := TFPAG0001CView.New;
  end;
end;

function TPagarFactoryView.exibirTelaListagem(AValue: TTelaListagem)
  : IBasePesquisaView;
begin
  case AValue of
    tlFornecedor:
      Result := TFPAG0001PView.New;
  end;
end;

class function TPagarFactoryView.New: iPagarFactoryView;
begin
  Result := Self.Create;
end;

end.
