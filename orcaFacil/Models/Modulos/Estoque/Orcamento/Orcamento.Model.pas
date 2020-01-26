unit Orcamento.Model;

interface

uses Orcamento.Model.Interf, TESTORCAMENTO.Entidade.Model,
  ormbr.container.objectset.interfaces, ormbr.Factory.interfaces,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  Data.DB, FireDAC.Comp.Client, System.SysUtils;

type
  TOrcamentoModel = class(TInterfacedObject, IOrcamentoModel)
  private
    FConexao: IDBConnection;
    FEntidade: TTESTORCAMENTO;
    FDao: IContainerObjectSet<TTESTORCAMENTO>;
    FDQuery: TFDQuery;

  public
    constructor Create;
    destructor Destroy; override;

    class function New: IOrcamentoModel;

    function Entidade(AValue: TTESTORCAMENTO): IOrcamentoModel; overload;
    function Entidade: TTESTORCAMENTO; overload;

    function DAO: IContainerObjectSet<TTESTORCAMENTO>;

    function query: TFDQuery;

    function queryItensOrcamento(ACodOrcamento: string): TFDQuery;
  end;

implementation

{ TOrcamentoModel }

uses FacadeController, ormbr.container.objectset, cqlbr.interfaces,
  criteria.query.language, FacadeModel, Conexao.Model.Interf,
  cqlbr.serialize.firebird;

constructor TOrcamentoModel.Create;
begin
  FConexao := TFacadeController.New.ConexaoController.conexaoAtual;
  FDao := TContainerObjectSet<TTESTORCAMENTO>.Create(FConexao, 1);

  FDQuery := TFDQuery.Create(nil);

  FDQuery.Connection := TFacadeModel.New.conexaoFactoryModel.
    conexaoComBancoDeDados(dbFirebird).ConexaoFireDac;
end;

function TOrcamentoModel.DAO: IContainerObjectSet<TTESTORCAMENTO>;
begin
  Result := FDao;
end;

destructor TOrcamentoModel.Destroy;
begin

  inherited;
end;

function TOrcamentoModel.Entidade(AValue: TTESTORCAMENTO): IOrcamentoModel;
begin
  Result := Self;
  FEntidade := AValue;
end;

function TOrcamentoModel.Entidade: TTESTORCAMENTO;
begin
  Result := FEntidade;
end;

class function TOrcamentoModel.New: IOrcamentoModel;
begin
  Result := Self.Create;
end;

function TOrcamentoModel.query: TFDQuery;
begin
  Result := FDQuery;
end;

function TOrcamentoModel.queryItensOrcamento(ACodOrcamento: string): TFDQuery;
begin
  FDQuery.SQL.Add
    (Format('  select                                           ' +
    'b.codigo,                                                  ' +
    'a.qtde                                                     ' +
    'from                                                       ' +
    'testorcamentoitens a                                       ' +
    'inner join testproduto b on (b.codigo = a.idproduto)       ' +
    'where a.idorcamento = %s                                   ',
    [QuotedStr(ACodOrcamento)]));

  FDQuery.Active := True;

  Result := FDQuery;
end;

end.
