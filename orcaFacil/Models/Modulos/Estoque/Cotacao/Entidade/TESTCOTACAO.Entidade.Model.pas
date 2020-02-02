unit TESTCOTACAO.Entidade.Model;

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
  ormbr.mapping.classes, 
  ormbr.mapping.register, 
  ormbr.mapping.attributes,
  TESTORCAMENTO.Entidade.Model;

type
  [Entity]
  [Table('TESTCOTACAO', '')]
  [PrimaryKey('CODIGO', NotInc, NoSort, False, 'Chave primária')]
  TTESTCOTACAO = class
  private
    { Private declarations } 
    FCODIGO: String;
    FIDORCAMENTO: String;
    FDATA_CADASTRO: TDateTime;
    FULTIMA_ATUALIZACAO: TDateTime;

    FTESTORCAMENTO_0:  TTESTORCAMENTO  ;
    function getCODIGO: String;
    function getDATA_CADASTRO: TDateTime;
    function getULTIMA_ATUALIZACAO: TDateTime;
  public 
    { Public declarations } 
    constructor Create;
    destructor Destroy; override;
    [Restrictions([NotNull])]
    [Column('CODIGO', ftString, 64)]
    [Dictionary('CODIGO', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property CODIGO: String read getCODIGO write FCODIGO;

    [Restrictions([NotNull])]
    [Column('IDORCAMENTO', ftString, 64)]
    [ForeignKey('FK1_TESTCOTACAO', 'IDORCAMENTO', 'TESTORCAMENTO', 'CODIGO', Cascade, Cascade)]
    [Dictionary('IDORCAMENTO', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property IDORCAMENTO: String read FIDORCAMENTO write FIDORCAMENTO;

    [Restrictions([NotNull])]
    [Column('DATA_CADASTRO', ftDateTime)]
    [Dictionary('DATA_CADASTRO', 'Mensagem de validação', 'Now', '', '!##/##/####;1;_', taCenter)]
    property DATA_CADASTRO: TDateTime read getDATA_CADASTRO write FDATA_CADASTRO;

    [Restrictions([NotNull])]
    [Column('ULTIMA_ATUALIZACAO', ftDateTime)]
    [Dictionary('ULTIMA_ATUALIZACAO', 'Mensagem de validação', 'Now', '', '!##/##/####;1;_', taCenter)]
    property ULTIMA_ATUALIZACAO: TDateTime read getULTIMA_ATUALIZACAO write FULTIMA_ATUALIZACAO;

    [Association(OneToOne,'IDORCAMENTO','TESTORCAMENTO','CODIGO')]
    property TESTORCAMENTO: TTESTORCAMENTO read FTESTORCAMENTO_0 write FTESTORCAMENTO_0;

  end;

implementation

constructor TTESTCOTACAO.Create;
begin
  FTESTORCAMENTO_0 := TTESTORCAMENTO.Create;
end;

destructor TTESTCOTACAO.Destroy;
begin
  if Assigned(FTESTORCAMENTO_0) then
    FTESTORCAMENTO_0.Free;

  inherited;
end;

function TTESTCOTACAO.getCODIGO: String;
begin
  if FCODIGO = EmptyStr then
    FCODIGO := TGUID.NewGuid.ToString;

  Result := FCODIGO;
end;

function TTESTCOTACAO.getDATA_CADASTRO: TDateTime;
begin
  if FDATA_CADASTRO = StrToDateTime('30/12/1899 00:00') then
    FDATA_CADASTRO := Now;

  Result := FDATA_CADASTRO;
end;

function TTESTCOTACAO.getULTIMA_ATUALIZACAO: TDateTime;
begin
  FULTIMA_ATUALIZACAO := Now;

  Result := FULTIMA_ATUALIZACAO;
end;

initialization
  TRegisterClass.RegisterEntity(TTESTCOTACAO)

end.
