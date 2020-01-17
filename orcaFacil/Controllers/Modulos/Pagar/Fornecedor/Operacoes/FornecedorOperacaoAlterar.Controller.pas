unit FornecedorOperacaoAlterar.Controller;

interface

uses Fornecedor.Controller.Interf, Fornecedor.Model.Interf, TPAGFORNECEDOR.Entidade.Model;

type
  TFornecedorOperacaoAlterarController = class(TInterfacedObject,
    IFornecedorOperacaoAlterarController)
  private
    FFornecedorModel: IFornecedorModel;
    FRegistro: TTPAGFORNECEDOR;

    FNomeFantasia: string;
    FCNPJ: string;
    FIE: string;
    FTelefone: string;
    FEmail: string;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IFornecedorOperacaoAlterarController;

    function fornecedorModel(AValue: IFornecedorModel)
      : IFornecedorOperacaoAlterarController;
    function fornecedorSelecionado(AValue: TTPAGFORNECEDOR)
      : IFornecedorOperacaoAlterarController;

    function nomeFantasia(AValue: string): IFornecedorOperacaoAlterarController;
    function cnpj(AValue: string): IFornecedorOperacaoAlterarController;
    function ie(AValue: string): IFornecedorOperacaoAlterarController;
    function telefone(AValue: string): IFornecedorOperacaoAlterarController;
    function email(AValue: string): IFornecedorOperacaoAlterarController;

    procedure finalizar;
  end;

implementation

{ TFornecedorOperacaoAlterarController }

function TFornecedorOperacaoAlterarController.cnpj(
  AValue: string): IFornecedorOperacaoAlterarController;
begin
  Result := Self;
  FCNPJ := AValue;
end;

constructor TFornecedorOperacaoAlterarController.Create;
begin

end;

destructor TFornecedorOperacaoAlterarController.Destroy;
begin

  inherited;
end;

function TFornecedorOperacaoAlterarController.email(
  AValue: string): IFornecedorOperacaoAlterarController;
begin
  Result := Self;
  FEmail := AValue;
end;

procedure TFornecedorOperacaoAlterarController.finalizar;
begin
  FFornecedorModel.DAO.Modify(FRegistro);

  FRegistro.NOMEFANTASIA := FNomeFantasia;
  FRegistro.CNPJ := FCNPJ;
  FRegistro.IE := FIE;
  FRegistro.TELEFONE := FTelefone;
  FRegistro.EMAIL := FEmail;

  FFornecedorModel.DAO.Update(FRegistro);
end;

function TFornecedorOperacaoAlterarController.fornecedorModel
  (AValue: IFornecedorModel): IFornecedorOperacaoAlterarController;
begin
  Result := Self;
  FFornecedorModel := AValue;
end;

function TFornecedorOperacaoAlterarController.fornecedorSelecionado(
  AValue: TTPAGFORNECEDOR): IFornecedorOperacaoAlterarController;
begin
   Result := Self;
   FRegistro := AValue;
end;

function TFornecedorOperacaoAlterarController.ie(
  AValue: string): IFornecedorOperacaoAlterarController;
begin
  Result := Self;
  FIE := AValue;
end;

class function TFornecedorOperacaoAlterarController.New
  : IFornecedorOperacaoAlterarController;
begin
  Result := Self.Create;
end;

function TFornecedorOperacaoAlterarController.nomeFantasia(
  AValue: string): IFornecedorOperacaoAlterarController;
begin
  Result := Self;
  FNomeFantasia := AValue;
end;

function TFornecedorOperacaoAlterarController.telefone(
  AValue: string): IFornecedorOperacaoAlterarController;
begin
  Result := Self;
  FTelefone := AValue;
end;

end.
