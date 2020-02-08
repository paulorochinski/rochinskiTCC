unit Fornecedor.Controller;

interface

uses Fornecedor.Controller.Interf, Fornecedor.Model.Interf,
  TPAGFORNECEDOR.Entidade.Model, System.SysUtils;

type
  TFornecedorController = class(TInterfacedObject, IFornecedorController)
  private
    FFornecedorModel: IFornecedorModel;
    FRegistro: TTPAGFORNECEDOR;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IFornecedorController;

    function incluir: IFornecedorOperacaoIncluirController;
    function alterar: IFornecedorOperacaoAlterarController;
    function excluir: IFornecedorOperacaoExcluirController;
    function duplicar: IFornecedorOperacaoDuplicarController;

    function localizar(AValue: string): IFornecedorController;
    function localizarPeloCNPJ(AValue: string): IFornecedorController;

    function idFornecedor: string;
    function nomeFantasia: string;
    function cnpj: string;
    function ie: string;
    function telefone: string;
    function email: string;
  end;

implementation

{ TFornecedorController }

uses FacadeModel, FornecedorOperacaoIncluir.Controller,
  FornecedorOperacaoAlterar.Controller, FornecedorOperacaoDuplicar.Controller,
  FornecedorOperacaoExcluir.Controller;

function TFornecedorController.alterar: IFornecedorOperacaoAlterarController;
begin
  Result := TFornecedorOperacaoAlterarController.New
              .fornecedorModel(FFornecedorModel)
              .fornecedorSelecionado(FRegistro)
end;

function TFornecedorController.cnpj: string;
begin
  Result := FRegistro.cnpj;
end;

constructor TFornecedorController.Create;
begin
  FFornecedorModel := TFacadeModel.New.ModulosFacadeModel.pagarFactoryModel.
    Fornecedor;
end;

destructor TFornecedorController.Destroy;
begin

  inherited;
end;

function TFornecedorController.duplicar: IFornecedorOperacaoDuplicarController;
begin
  Result := TFornecedorOperacaoDuplicarController.New
              .fornecedorModel(FFornecedorModel)
end;

function TFornecedorController.email: string;
begin
  Result := FRegistro.email;
end;

function TFornecedorController.excluir: IFornecedorOperacaoExcluirController;
begin
  Result := TFornecedorOperacaoExcluirController.New
              .fornecedorModel(FFornecedorModel)
              .fornecedorSelecionado(FRegistro)
end;

function TFornecedorController.idFornecedor: string;
begin
  Result := IntToStr(FRegistro.idFornecedor);
end;

function TFornecedorController.ie: string;
begin
  Result := FRegistro.ie;
end;

function TFornecedorController.incluir: IFornecedorOperacaoIncluirController;
begin
  Result := TFornecedorOperacaoIncluirController.New
             .fornecedorModel(FFornecedorModel)
end;

function TFornecedorController.localizar(AValue: string): IFornecedorController;
begin
  Result := Self;

  FRegistro := FFornecedorModel
                 .DAO
                 .FindWhere('CODIGO=' + QuotedStr(AValue),'NOMEFANTASIA')
                 .Items[0];
end;

function TFornecedorController.localizarPeloCNPJ(AValue: string): IFornecedorController;
begin
  Result := Self;

  FRegistro := FFornecedorModel
                 .DAO
                 .FindWhere('CNPJ=' + QuotedStr(AValue),'NOMEFANTASIA')
                 .Items[0];
end;

class function TFornecedorController.New: IFornecedorController;
begin
  Result := Self.Create;
end;

function TFornecedorController.nomeFantasia: string;
begin
  Result := FRegistro.nomeFantasia;
end;

function TFornecedorController.telefone: string;
begin
  Result := FRegistro.telefone;
end;

end.
