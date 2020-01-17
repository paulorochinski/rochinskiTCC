unit Fornecedor.Model;

interface

uses Fornecedor.Model.Interf, TPAGFORNECEDOR.Entidade.Model,
  ormbr.container.objectset.interfaces, ormbr.Factory.interfaces;

type
  TFornecedorModel = class(TInterfacedObject, IFornecedorModel)
  private
    FConexao: IDBConnection;
    FEntidade: TTPAGFORNECEDOR;
    FDao: IContainerObjectSet<TTPAGFORNECEDOR>;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IFornecedorModel;

    function Entidade(AValue: TTPAGFORNECEDOR): IFornecedorModel; overload;
    function Entidade: TTPAGFORNECEDOR; overload;

    function DAO: IContainerObjectSet<TTPAGFORNECEDOR>;
  end;

implementation

{ TFornecedorModel }

uses FacadeController, ormbr.container.objectset;

constructor TFornecedorModel.Create;
begin
  FConexao := TFacadeController.New.ConexaoController.conexaoAtual;
  FDao := TContainerObjectSet<TTPAGFORNECEDOR>.Create(FConexao, 1);
end;

function TFornecedorModel.DAO: IContainerObjectSet<TTPAGFORNECEDOR>;
begin
  Result := FDao;
end;

destructor TFornecedorModel.Destroy;
begin

  inherited;
end;

function TFornecedorModel.Entidade(AValue: TTPAGFORNECEDOR): IFornecedorModel;
begin
  Result := Self;
  FEntidade := AValue;
end;

function TFornecedorModel.Entidade: TTPAGFORNECEDOR;
begin
  Result := FEntidade;
end;

class function TFornecedorModel.New: IFornecedorModel;
begin
  Result := Self.Create;
end;

end.
