unit TESTORCAMENTOFORNECEDORES.Entidade.Model;

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
  TPAGFORNECEDOR.Entidade.Model,
  TESTORCAMENTO.Entidade.Model;

type
  [Entity]
  [Table('TESTORCAMENTOFORNECEDORES', '')]
  [PrimaryKey('ID', NotInc, NoSort, False, 'Chave primária')]
  TTESTORCAMENTOFORNECEDORES = class
  private
    { Private declarations } 
    FID: Integer;
    FIDORCAMENTO: String;
    FIDFORNECEDOR: String;
    FDATA_CADASTRO: TDateTime;
    FULTIMA_ATUALIZACAO: TDateTime;

    FTESTORCAMENTO_0:  TTESTORCAMENTO  ;
    FTPAGFORNECEDOR_1:  TTPAGFORNECEDOR  ;
    function getDATA_CADASTRO: TDateTime;
    function getULTIMA_ATUALIZACAO: TDateTime;
  public 
    { Public declarations } 
    constructor Create;
    destructor Destroy; override;
    [Restrictions([NotNull])]
    [Column('ID', ftInteger)]
    [Dictionary('ID', 'Mensagem de validação', '', '', '', taCenter)]
    property ID: Integer read FID write FID;

    [Restrictions([NotNull])]
    [Column('IDORCAMENTO', ftString, 64)]
    [ForeignKey('FK1_TESTORCAMENTOFORNECEDORES', 'IDORCAMENTO', 'TESTORCAMENTO', 'CODIGO', SetNull, SetNull)]
    [Dictionary('IDORCAMENTO', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property IDORCAMENTO: String read FIDORCAMENTO write FIDORCAMENTO;

    [Restrictions([NotNull])]
    [Column('IDFORNECEDOR', ftString, 64)]
    [ForeignKey('FK2_TESTORCAMENTOFORNECEDORES', 'IDFORNECEDOR', 'TPAGFORNECEDOR', 'CODIGO', SetNull, SetNull)]
    [Dictionary('IDFORNECEDOR', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property IDFORNECEDOR: String read FIDFORNECEDOR write FIDFORNECEDOR;

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

    [Association(OneToOne,'IDFORNECEDOR','TPAGFORNECEDOR','CODIGO')]
    property TPAGFORNECEDOR: TTPAGFORNECEDOR read FTPAGFORNECEDOR_1 write FTPAGFORNECEDOR_1;

  end;

implementation

constructor TTESTORCAMENTOFORNECEDORES.Create;
begin
  FTESTORCAMENTO_0 := TTESTORCAMENTO.Create;
  FTPAGFORNECEDOR_1 := TTPAGFORNECEDOR.Create;
end;

destructor TTESTORCAMENTOFORNECEDORES.Destroy;
begin
  if Assigned(FTESTORCAMENTO_0) then
    FTESTORCAMENTO_0.Free;

  if Assigned(FTPAGFORNECEDOR_1) then
    FTPAGFORNECEDOR_1.Free;

  inherited;
end;

function TTESTORCAMENTOFORNECEDORES.getDATA_CADASTRO: TDateTime;
begin
  if FDATA_CADASTRO = StrToDateTime('30/12/1899 00:00') then
    FDATA_CADASTRO := Now;

  Result := FDATA_CADASTRO;
end;

function TTESTORCAMENTOFORNECEDORES.getULTIMA_ATUALIZACAO: TDateTime;
begin
  FULTIMA_ATUALIZACAO := Now;

  Result := FULTIMA_ATUALIZACAO;
end;

initialization
  TRegisterClass.RegisterEntity(TTESTORCAMENTOFORNECEDORES)

end.
