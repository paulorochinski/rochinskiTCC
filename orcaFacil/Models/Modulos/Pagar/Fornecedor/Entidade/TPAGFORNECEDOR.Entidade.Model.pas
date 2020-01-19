unit TPAGFORNECEDOR.Entidade.Model;

interface

uses
  DB,
  Classes,
  SysUtils,
  Generics.Collections,

  /// orm
  ormbr.types.blob,
  ormbr.types.lazy,
  ormbr.types.mapping,
  ormbr.types.nullable,
  ormbr.mapping.Classes,
  ormbr.mapping.register,
  ormbr.mapping.attributes;

type

  [Entity]
  [Table('TPAGFORNECEDOR', '')]
  [PrimaryKey('CODIGO', NotInc, NoSort, False, 'Chave primária')]
  TTPAGFORNECEDOR = class
  private
    { Private declarations }
    FCODIGO: String;
    FIDFORNECEDOR: Integer;
    FNOMEFANTASIA: nullable<String>;
    FCNPJ: nullable<String>;
    FIE: nullable<String>;
    FTELEFONE: nullable<String>;
    FEMAIL: nullable<String>;
    FDATA_CADASTRO: TDateTime;
    FULTIMA_ATUALIZACAO: TDateTime;
    function getCODIGO: String;
    function getDATA_CADASTRO: TDateTime;
    function getULTIMA_ATUALIZACAO: TDateTime;
  public
    { Public declarations }
    [Restrictions([NotNull])]
    [Column('CODIGO', ftString, 64)]
    [Dictionary('CODIGO', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property CODIGO: String read getCODIGO write FCODIGO;

    [Restrictions([NotNull])]
    [Column('IDFORNECEDOR', ftInteger)]
    [Dictionary('IDFORNECEDOR', 'Mensagem de validação', '', '', '', taCenter)]
    property IDFORNECEDOR: Integer read FIDFORNECEDOR write FIDFORNECEDOR;

    [Column('NOMEFANTASIA', ftString, 100)]
    [Dictionary('NOMEFANTASIA', 'Mensagem de validação', '', '', '',
      taLeftJustify)]
    property NOMEFANTASIA: nullable<String> read FNOMEFANTASIA
      write FNOMEFANTASIA;

    [Column('CNPJ', ftString, 14)]
    [Dictionary('CNPJ', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property CNPJ: nullable<String> read FCNPJ write FCNPJ;

    [Column('IE', ftString, 22)]
    [Dictionary('IE', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property IE: nullable<String> read FIE write FIE;

    [Column('TELEFONE', ftString, 15)]
    [Dictionary('TELEFONE', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property TELEFONE: nullable<String> read FTELEFONE write FTELEFONE;

    [Column('EMAIL', ftString, 100)]
    [Dictionary('EMAIL', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property EMAIL: nullable<String> read FEMAIL write FEMAIL;

    [Restrictions([NotNull])]
    [Column('DATA_CADASTRO', ftDateTime)]
    [Dictionary('DATA_CADASTRO', 'Mensagem de validação', 'Now', '',
      '!##/##/####;1;_', taCenter)]
    property DATA_CADASTRO: TDateTime read getDATA_CADASTRO
      write FDATA_CADASTRO;

    [Restrictions([NotNull])]
    [Column('ULTIMA_ATUALIZACAO', ftDateTime)]
    [Dictionary('ULTIMA_ATUALIZACAO', 'Mensagem de validação', 'Now', '',
      '!##/##/####;1;_', taCenter)]
    property ULTIMA_ATUALIZACAO: TDateTime read getULTIMA_ATUALIZACAO
      write FULTIMA_ATUALIZACAO;
  end;

implementation

{ TTPAGFORNECEDOR }

function TTPAGFORNECEDOR.getCODIGO: String;
begin
  if FCODIGO.IsEmpty then
    FCODIGO := TGUID.NewGuid.ToString;

  Result := FCODIGO;
end;

function TTPAGFORNECEDOR.getDATA_CADASTRO: TDateTime;
begin
  if FDATA_CADASTRO = StrToDateTime('30/12/1899 00:00') then
    FDATA_CADASTRO := Now;

  Result := FDATA_CADASTRO;
end;

function TTPAGFORNECEDOR.getULTIMA_ATUALIZACAO: TDateTime;
begin
  FULTIMA_ATUALIZACAO := Now;

  Result := FULTIMA_ATUALIZACAO;
end;

initialization

TRegisterClass.RegisterEntity(TTPAGFORNECEDOR)

end.
