unit Orcamento.Controller;

interface

uses Orcamento.Controller.interf, Orcamento.Model.interf,
  OrcamentoItens.Model.interf, TESTORCAMENTOITENS.Entidade.Model,
  Generics.Collections, TESTORCAMENTO.Entidade.Model, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  Data.DB, FireDAC.Comp.Client, System.SysUtils, OrcamentoFornecedores.Model.Interf;

type
  TOrcamentoController = class(TInterfacedObject, IOrcamentoController)
  private
    FOrcamentoModel: IOrcamentoModel;
    FOrcamentoItensModel: IOrcamentoItensModel;
    FOrcamentoFornecedoresModel: IOrcamentoFornecedoresModel;

    FRegistro: TTESTORCAMENTO;

    FItens: TList<TOrcamentoItens>;
    FFornecedores: TList<TOrcamentoFornecedores>;

    FQueryItens: TFDQuery;
    FQueryFornecedores: TFDQuery;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IOrcamentoController;

    function Incluir: IOrcamentoOperacaoIncluirController;
    function Alterar: IOrcamentoOperacaoAlterarController;
    function Excluir: IOrcamentoOperacaoExcluirController;
    function Duplicar: IOrcamentoOperacaoDuplicarController;

    function localizar(AValue: string): IOrcamentoController;

    function idOrcamento: string;
    function descricao: string;

    function itens: TList<TOrcamentoItens>;
    procedure AddItem(AValue: TOrcamentoItens);

    function fornecedores: TList<TOrcamentoFornecedores>;
    procedure AddFornecedor(AValue: TOrcamentoFornecedores);

    procedure removerTodosOsItens;
    procedure removerTodosOsFornecedores;
  end;

implementation

{ TOrcamentoController }

uses FacadeController, FacadeModel, OrcamentoOperacaoIncluir.Controller,
  OrcamentoOperacaoAlterar.Controller, OrcamentoOperacaoExcluir.Controller,
  OrcamentoOperacaoDuplicar.Controller;

procedure TOrcamentoController.AddFornecedor(AValue: TOrcamentoFornecedores);
begin
 FFornecedores.Add(AValue);
end;

procedure TOrcamentoController.AddItem(AValue: TOrcamentoItens);
begin
  FItens.Add(AValue);
end;

function TOrcamentoController.Alterar: IOrcamentoOperacaoAlterarController;
begin
  Result := TOrcamentoOperacaoAlterarController.New
             .orcamentoModel(FOrcamentoModel)
              .orcamentoItensModel(FOrcamentoItensModel)
               .orcamentoFornecedoresModel(FOrcamentoFornecedoresModel)
                .orcamentoSelecionado(FRegistro)
                 .itens(FItens)
                 .fornecedores(FFornecedores)
end;

constructor TOrcamentoController.Create;
begin
  FOrcamentoModel := TFacadeModel.New.ModulosFacadeModel.
    estoqueFactoryModel.Orcamento;

  FOrcamentoItensModel := TFacadeModel.New.ModulosFacadeModel.
    estoqueFactoryModel.OrcamentoItens;

  FOrcamentoFornecedoresModel := TFacadeModel.New.ModulosFacadeModel.
    estoqueFactoryModel.orcamentoFornecedores;

  FItens := TList<TOrcamentoItens>.Create;
  FFornecedores := TList<TOrcamentoFornecedores>.Create;
end;

function TOrcamentoController.descricao: string;
begin
  Result := FRegistro.descricao;
end;

destructor TOrcamentoController.Destroy;
begin
  FItens.Free;
  inherited;
end;

function TOrcamentoController.Duplicar: IOrcamentoOperacaoDuplicarController;
begin
  Result := TOrcamentoOperacaoDuplicarController.New
             .orcamentoModel(FOrcamentoModel)
              .orcamentoItensModel(FOrcamentoItensModel)
               .orcamentoFornecedoresModel(FOrcamentoFornecedoresModel)
                .itens(FItens)
                .fornecedores(FFornecedores)
end;

function TOrcamentoController.Excluir: IOrcamentoOperacaoExcluirController;
begin
  Result := TOrcamentoOperacaoExcluirController.New
             .orcamentoModel(FOrcamentoModel)
              .orcamentoItensModel(FOrcamentoItensModel)
               .orcamentoSelecionado(FRegistro)
end;

function TOrcamentoController.fornecedores: TList<TOrcamentoFornecedores>;
var VFornecedor: TOrcamentoFornecedores;
begin
  FFornecedores.Clear;

  FQueryFornecedores.First;
  while not(FQueryFornecedores.Eof) do
  begin
    VFornecedor.codigo := FQueryFornecedores.FieldByName('CODIGO').AsString;

    FFornecedores.Add(VFornecedor);

    FQueryFornecedores.Next;
  end;

  Result := FFornecedores;
end;

function TOrcamentoController.idOrcamento: string;
begin
  Result := IntToStr(FRegistro.idOrcamento);
end;

function TOrcamentoController.Incluir: IOrcamentoOperacaoIncluirController;
begin
  Result := TOrcamentoOperacaoIncluirController.New
             .orcamentoModel(FOrcamentoModel)
              .orcamentoItensModel(FOrcamentoItensModel)
               .orcamentoFornecedoresModel(FOrcamentoFornecedoresModel)
                .itens(FItens)
                .fornecedores(FFornecedores)
end;

function TOrcamentoController.itens: TList<TOrcamentoItens>;
var VItem: TOrcamentoItens;
begin
  FItens.Clear;

  FQueryItens.First;
  while not(FQueryItens.Eof) do
  begin
    VItem.codigo        := FQueryItens.FieldByName('CODIGO').AsString;
    VItem.qtde          := FQueryItens.FieldByName('QTDE').AsFloat;

    FItens.Add(VItem);

    FQueryItens.Next;
  end;

  Result := FItens;
end;

function TOrcamentoController.localizar(AValue: string): IOrcamentoController;
begin
  Result := Self;

  FRegistro := FOrcamentoModel.DAO.FindWhere('CODIGO=' + QuotedStr(AValue),
    'DATA_CADASTRO').Items[0];

  FQueryItens := FOrcamentoModel.queryItensOrcamento(FRegistro.CODIGO);
  FQueryFornecedores := FOrcamentoModel.queryFornecedoresOrcamento(FRegistro.CODIGO);
end;

class function TOrcamentoController.New: IOrcamentoController;
begin
  Result := Self.Create;
end;

procedure TOrcamentoController.removerTodosOsFornecedores;
begin
 FFornecedores.Clear;
end;

procedure TOrcamentoController.removerTodosOsItens;
begin
  FItens.Clear;
end;

end.
