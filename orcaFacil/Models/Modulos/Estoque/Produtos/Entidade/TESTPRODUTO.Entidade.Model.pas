unit TESTPRODUTO.Entidade.Model;

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
  [Table('TESTPRODUTO', '')]
  [PrimaryKey('CODIGO', NotInc, NoSort, False, 'Chave primária')]
  TTESTPRODUTO = class
  private
    { Private declarations }
    FCODIGO: String;
    FIDPRODUTO: Integer;
    FCODIGO_SINAPI: string;
    FDESCRICAO: nullable<String>;
    FUNIDMEDIDA: nullable<String>;
    FORIGEM_PRECO: nullable<String>;
    FPRMEDIO: Double;
    FPRMEDIO_SINAPI: Double;
    FDATA_CADASTRO: TDateTime;
    FULTIMA_ATUALIZACAO: TDateTime;
    function getCodigo: String;
    function getData_Cadastro: TDateTime;
    function getUltima_Atualizacao: TDateTime;
  public
    { Public declarations }
    [Restrictions([NotNull])]
    [Column('CODIGO', ftString, 64)]
    [Dictionary('CODIGO', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property CODIGO: String read getCodigo write FCODIGO;

    [Restrictions([NotNull])]
    [Column('IDPRODUTO', ftInteger)]
    [Dictionary('IDPRODUTO', 'Mensagem de validação', '', '', '', taCenter)]
    property IDPRODUTO: Integer read FIDPRODUTO write FIDPRODUTO;

    [Column('CODIGO_SINAPI', ftString, 22)]
    [Dictionary('CODIGO_SINAPI', 'Mensagem de validação', '', '', '', taCenter)]
    property CODIGO_SINAPI: string read FCODIGO_SINAPI write FCODIGO_SINAPI;

    [Column('DESCRICAO', ftString, 550)]
    [Dictionary('DESCRICAO', 'Mensagem de validação', '', '', '',
      taLeftJustify)]
    property DESCRICAO: nullable<String> read FDESCRICAO write FDESCRICAO;

    [Column('UNIDMEDIDA', ftString, 10)]
    [Dictionary('UNIDMEDIDA', 'Mensagem de validação', '', '', '',
      taLeftJustify)]
    property UNIDMEDIDA: nullable<String> read FUNIDMEDIDA write FUNIDMEDIDA;

    [Column('ORIGEM_PRECO', ftString, 10)]
    [Dictionary('UNIDMEDIDA', 'Mensagem de validação', '', '', '',
      taLeftJustify)]
    property ORIGEM_PRECO: nullable<String> read FORIGEM_PRECO
      write FORIGEM_PRECO;

    [Column('PRMEDIO', ftBCD, 18, 4)]
    [Dictionary('PRMEDIO', 'Mensagem de validação', '0', '', '',
      taRightJustify)]
    property PRMEDIO: Double read FPRMEDIO write FPRMEDIO;

    [Column('PRMEDIO_SINAPI', ftBCD, 18, 4)]
    [Dictionary('PRMEDIO_SINAPI', 'Mensagem de validação', '0', '', '',
      taRightJustify)]
    property PRMEDIO_SINAPI: Double read FPRMEDIO_SINAPI write FPRMEDIO_SINAPI;

    [Restrictions([NotNull])]
    [Column('DATA_CADASTRO', ftDateTime)]
    [Dictionary('DATA_CADASTRO', 'Mensagem de validação', 'Now', '',
      '!##/##/####;1;_', taCenter)]
    property DATA_CADASTRO: TDateTime read getData_Cadastro
      write FDATA_CADASTRO;

    [Restrictions([NotNull])]
    [Column('ULTIMA_ATUALIZACAO', ftDateTime)]
    [Dictionary('ULTIMA_ATUALIZACAO', 'Mensagem de validação', 'Now', '',
      '!##/##/####;1;_', taCenter)]
    property ULTIMA_ATUALIZACAO: TDateTime read getUltima_Atualizacao
      write FULTIMA_ATUALIZACAO;
  end;

implementation

{ TTESTPRODUTO }

function TTESTPRODUTO.getCodigo: String;
begin
  if FCODIGO.IsEmpty then
    FCODIGO := TGUID.NewGuid.ToString;

  Result := FCODIGO;
end;

function TTESTPRODUTO.getData_Cadastro: TDateTime;
begin
  if FDATA_CADASTRO = StrToDateTime('30/12/1899 00:00') then
    FDATA_CADASTRO := Now;

  Result := FDATA_CADASTRO;
end;

function TTESTPRODUTO.getUltima_Atualizacao: TDateTime;
begin
  FULTIMA_ATUALIZACAO := Now;

  Result := FULTIMA_ATUALIZACAO;
end;

initialization

TRegisterClass.RegisterEntity(TTESTPRODUTO)

end.
