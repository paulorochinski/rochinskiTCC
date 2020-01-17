unit FornecedorOperacaoIncluir.Controller;

interface

uses Fornecedor.Controller.Interf, Fornecedor.Model.Interf, TPAGFORNECEDOR.Entidade.Model;

type
  TFornecedorOperacaoIncluirController = class(TInterfacedObject,
    IFornecedorOperacaoIncluirController)
  private
    FFornecedorModel: IFornecedorModel;

    FNomeFantasia: string;
    FCNPJ: string;
    FIE: string;
    FTelefone: string;
    FEmail: string;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IFornecedorOperacaoIncluirController;

    function fornecedorModel(AValue: IFornecedorModel)
      : IFornecedorOperacaoIncluirController;

    function nomeFantasia(AValue: string): IFornecedorOperacaoIncluirController;
    function cnpj(AValue: string): IFornecedorOperacaoIncluirController;
    function ie(AValue: string): IFornecedorOperacaoIncluirController;
    function telefone(AValue: string): IFornecedorOperacaoIncluirController;
    function email(AValue: string): IFornecedorOperacaoIncluirController;

    procedure finalizar;
  end;

implementation

{ TFornecedorOperacaoIncluirController }


function TFornecedorOperacaoIncluirController.cnpj(
  AValue: string): IFornecedorOperacaoIncluirController;
begin
  Result := Self;
  FCNPJ := AValue;
end;

constructor TFornecedorOperacaoIncluirController.Create;
begin

end;

destructor TFornecedorOperacaoIncluirController.Destroy;
begin

  inherited;
end;

function TFornecedorOperacaoIncluirController.email(
  AValue: string): IFornecedorOperacaoIncluirController;
begin
  Result := Self;
  FEmail := AValue;
end;

procedure TFornecedorOperacaoIncluirController.finalizar;
begin
  FFornecedorModel.Entidade(TTPAGFORNECEDOR.Create);

  FFornecedorModel.Entidade.NOMEFANTASIA := FNomeFantasia;
  FFornecedorModel.Entidade.CNPJ := FCNPJ;
  FFornecedorModel.Entidade.IE := FIE;
  FFornecedorModel.Entidade.TELEFONE := FTelefone;
  FFornecedorModel.Entidade.EMAIL := FEmail;

  FFornecedorModel.DAO.Insert(FFornecedorModel.Entidade);
end;

function TFornecedorOperacaoIncluirController.fornecedorModel
  (AValue: IFornecedorModel): IFornecedorOperacaoIncluirController;
begin
  Result := Self;
  FFornecedorModel := AValue;
end;

function TFornecedorOperacaoIncluirController.ie(
  AValue: string): IFornecedorOperacaoIncluirController;
begin
 Result := Self;
 FIE := AValue;
end;

class function TFornecedorOperacaoIncluirController.New
  : IFornecedorOperacaoIncluirController;
begin
  Result := Self.Create;
end;

function TFornecedorOperacaoIncluirController.nomeFantasia(
  AValue: string): IFornecedorOperacaoIncluirController;
begin
  Result := Self;
  FNomeFantasia := AValue;
end;

function TFornecedorOperacaoIncluirController.telefone(
  AValue: string): IFornecedorOperacaoIncluirController;
begin
  Result := Self;
  FTelefone := AValue;
end;

end.
