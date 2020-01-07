unit Produto.Model;

interface

uses Produto.Model.Interf, TESTPRODUTO.Entidade.Model,
  ormbr.container.objectset.interfaces, ormbr.Factory.Interfaces;

type
  TProdutoModel = class(TInterfacedObject, IProdutoModel)
  private
    FConexao: IDBConnection;
    FEntidade: TTESTPRODUTO;
    FDao: IContainerObjectSet<TTESTPRODUTO>;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IProdutoModel;

    function Entidade: TTESTPRODUTO; overload;
    function Entidade(AValue: TTESTPRODUTO): IProdutoModel; overload;
    function DAO: IContainerObjectSet<TTESTPRODUTO>;
  end;

implementation

{ TProdutoModel }

uses FacadeController, ormbr.container.objectset;


constructor TProdutoModel.Create;
begin
   FConexao := TFacadeController.New.ConexaoController.conexaoAtual;
   FDao :=  TContainerObjectSet<TTESTPRODUTO>.Create(FConexao, 1);
end;

function TProdutoModel.DAO: IContainerObjectSet<TTESTPRODUTO>;
begin
  Result := FDao;
end;

destructor TProdutoModel.Destroy;
begin

  inherited;
end;

function TProdutoModel.Entidade: TTESTPRODUTO;
begin
  Result := FEntidade;
end;

function TProdutoModel.Entidade(AValue: TTESTPRODUTO): IProdutoModel;
begin
  Result := Self;
  FEntidade := AValue;
end;

class function TProdutoModel.New: IProdutoModel;
begin
  Result := Self.Create;
end;

end.
