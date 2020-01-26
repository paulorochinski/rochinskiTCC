unit TESTORCAMENTO.Entidade.Model;

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
  [Table('TESTORCAMENTO', '')]
  [PrimaryKey('CODIGO', NotInc, NoSort, False, 'Chave primária')]
  TTESTORCAMENTO = class
  private
    { Private declarations }
    FCODIGO: String;
    FIDORCAMENTO: Integer;
    FDESCRICAO: nullable<String>;
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
    [Column('IDORCAMENTO', ftInteger)]
    [Dictionary('IDORCAMENTO', 'Mensagem de validação', '', '', '', taCenter)]
    property IDORCAMENTO: Integer read FIDORCAMENTO write FIDORCAMENTO;

    [Column('DESCRICAO', ftString, 225)]
    [Dictionary('DESCRICAO', 'Mensagem de validação', '', '', '',
      taLeftJustify)]
    property DESCRICAO: nullable<String> read FDESCRICAO write FDESCRICAO;

    [Restrictions([NotNull])]
    [Column('DATA_CADASTRO', ftDateTime)]
    [Dictionary('DATA_CADASTRO', 'Mensagem de validação', 'Now', '',
      '!##/##/####;1;_', taCenter)]
    property DATA_CADASTRO: TDateTime read getDATA_CADASTRO write FDATA_CADASTRO;

    [Restrictions([NotNull])]
    [Column('ULTIMA_ATUALIZACAO', ftDateTime)]
    [Dictionary('ULTIMA_ATUALIZACAO', 'Mensagem de validação', 'Now', '',
      '!##/##/####;1;_', taCenter)]
    property ULTIMA_ATUALIZACAO: TDateTime read getULTIMA_ATUALIZACAO
      write FULTIMA_ATUALIZACAO;
  end;

implementation

{ TTESTORCAMENTO }

function TTESTORCAMENTO.getCODIGO: String;
begin
  if FCODIGO = EmptyStr then
    FCODIGO := TGUID.NewGuid.ToString;

  Result := FCODIGO;
end;

function TTESTORCAMENTO.getDATA_CADASTRO: TDateTime;
begin
  if FDATA_CADASTRO = StrToDateTime('30/12/1899 00:00') then
    FDATA_CADASTRO := Now;

  Result := FDATA_CADASTRO;
end;

function TTESTORCAMENTO.getULTIMA_ATUALIZACAO: TDateTime;
begin
  FULTIMA_ATUALIZACAO := Now;

  Result := FULTIMA_ATUALIZACAO;
end;

initialization

TRegisterClass.RegisterEntity(TTESTORCAMENTO)

end.
