unit ProdutoOperacaoExcluir.Controller;

interface

uses Produto.Controller.interf, Produto.Model.interf,
  TESTPRODUTO.Entidade.Model, System.SysUtils;

type
  TProdutoOperacaoExcluirController = class(TInterfacedObject,
    IProdutoOperacaoExcluirController)
  private
    FProdutoModel: IProdutoModel;
    FRegistro: TTESTPRODUTO;

  public
    constructor Create;
    destructor Destroy; override;

    class function New: IProdutoOperacaoExcluirController;

    function produtoModel(AValue: IProdutoModel)
      : IProdutoOperacaoExcluirController;

    function produtoSelecionado(AValue: TTESTPRODUTO)
      : IProdutoOperacaoExcluirController;


    procedure finalizar;

  end;

implementation

{ TProdutoOperacaoExcluirController }

uses FacadeView, Tipos.Controller.interf;

procedure TProdutoOperacaoExcluirController.finalizar;
begin
  if TFacadeView.New
      .MensagensFactory
      .exibirMensagem(tmConfirmacao)
      .mensagem(Format('Deseja excluir o produto %s ?', [FRegistro.DESCRICAO.Value]))
      .exibir then
  begin
    FProdutoModel.DAO.Delete(FRegistro);
  end;

end;

constructor TProdutoOperacaoExcluirController.Create;
begin

end;

destructor TProdutoOperacaoExcluirController.Destroy;
begin

  inherited;
end;

class function TProdutoOperacaoExcluirController.New
  : IProdutoOperacaoExcluirController;
begin
  Result := Self.Create;
end;

function TProdutoOperacaoExcluirController.produtoModel(AValue: IProdutoModel)
  : IProdutoOperacaoExcluirController;
begin
  Result := Self;
  FProdutoModel := AValue;
end;

function TProdutoOperacaoExcluirController.produtoSelecionado
  (AValue: TTESTPRODUTO): IProdutoOperacaoExcluirController;
begin
  Result := Self;
  FRegistro := AValue;
end;

end.
