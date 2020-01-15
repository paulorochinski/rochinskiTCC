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
    function exibirTelaCadastro(AValue: TTelaCadastro): IBaseCadastroView;
    function exibirTelaImportacao(AValue: TTelaImportacao): IBaseImportarView;

  end;

implementation

{ TEstoqueFactoryView }

uses EST0001P.View, EST0001C.View, EST0001I.View;

constructor TEstoqueFactoryView.Create;
begin

end;

destructor TEstoqueFactoryView.Destroy;
begin

  inherited;
end;

function TEstoqueFactoryView.exibirTelaCadastro(AValue: TTelaCadastro)
  : IBaseCadastroView;
begin
  case AValue of
    tcProduto:
      Result := TFEST0001CView.New;
  end;
end;

function TEstoqueFactoryView.exibirTelaImportacao(AValue: TTelaImportacao)
  : IBaseImportarView;
begin
  case AValue of
    tiProduto: Result := TFEST0001IView.New;
  end;
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
