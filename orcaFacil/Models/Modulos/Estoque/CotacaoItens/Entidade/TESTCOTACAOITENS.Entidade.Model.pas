unit TESTCOTACAOITENS.Entidade.Model;

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
  TESTPRODUTO.Entidade.Model,
  TESTCOTACAO.Entidade.Model;

type
  [Entity]
  [Table('TESTCOTACAOITENS', '')]
  [PrimaryKey('CODIGO', NotInc, NoSort, False, 'Chave primária')]
  TTESTCOTACAOITENS = class
  private
    { Private declarations } 
    FCODIGO: String;
    FIDCOTACAO: String;
    FIDFORNECEDOR: String;
    FIDPRODUTO: String;
    FQTDE: Nullable<Double>;
    FVALORUNITARIO: Nullable<Double>;
    FVALORTOTAL: Nullable<Double>;
    FDATA_CADASTRO: TDateTime;
    FULTIMA_ATUALIZACAO: TDateTime;

    FTESTCOTACAO_0:  TTESTCOTACAO  ;
    FTESTPRODUTO_1:  TTESTPRODUTO  ;
    FTPAGFORNECEDOR_2:  TTPAGFORNECEDOR  ;
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
    [Column('IDCOTACAO', ftString, 64)]
    [ForeignKey('FK3_TESTCOTACAOITENS', 'IDCOTACAO', 'TESTCOTACAO', 'CODIGO', Cascade, Cascade)]
    [Dictionary('IDCOTACAO', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property IDCOTACAO: String read FIDCOTACAO write FIDCOTACAO;

    [Restrictions([NotNull])]
    [Column('IDFORNECEDOR', ftString, 64)]
    [ForeignKey('FK1_TESTCOTACAOITENS', 'IDFORNECEDOR', 'TPAGFORNECEDOR', 'CODIGO', Cascade, Cascade)]
    [Dictionary('IDFORNECEDOR', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property IDFORNECEDOR: String read FIDFORNECEDOR write FIDFORNECEDOR;

    [Restrictions([NotNull])]
    [Column('IDPRODUTO', ftString, 64)]
    [ForeignKey('FK2_TESTCOTACAOITENS', 'IDPRODUTO', 'TESTPRODUTO', 'CODIGO', Cascade, Cascade)]
    [Dictionary('IDPRODUTO', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property IDPRODUTO: String read FIDPRODUTO write FIDPRODUTO;

    [Column('QTDE', ftBCD)]
    [Dictionary('QTDE', 'Mensagem de validação', '0', '', '', taRightJustify)]
    property QTDE: Nullable<Double> read FQTDE write FQTDE;

    [Column('VALORUNITARIO', ftBCD)]
    [Dictionary('VALORUNITARIO', 'Mensagem de validação', '0', '', '', taRightJustify)]
    property VALORUNITARIO: Nullable<Double> read FVALORUNITARIO write FVALORUNITARIO;

    [Column('VALORTOTAL', ftBCD)]
    [Dictionary('VALORTOTAL', 'Mensagem de validação', '0', '', '', taRightJustify)]
    property VALORTOTAL: Nullable<Double> read FVALORTOTAL write FVALORTOTAL;

    [Restrictions([NotNull])]
    [Column('DATA_CADASTRO', ftDateTime)]
    [Dictionary('DATA_CADASTRO', 'Mensagem de validação', 'Now', '', '!##/##/####;1;_', taCenter)]
    property DATA_CADASTRO: TDateTime read getDATA_CADASTRO write FDATA_CADASTRO;

    [Restrictions([NotNull])]
    [Column('ULTIMA_ATUALIZACAO', ftDateTime)]
    [Dictionary('ULTIMA_ATUALIZACAO', 'Mensagem de validação', 'Now', '', '!##/##/####;1;_', taCenter)]
    property ULTIMA_ATUALIZACAO: TDateTime read getULTIMA_ATUALIZACAO write FULTIMA_ATUALIZACAO;

    [Association(OneToOne,'IDCOTACAO','TESTCOTACAO','CODIGO')]
    property TESTCOTACAO: TTESTCOTACAO read FTESTCOTACAO_0 write FTESTCOTACAO_0;

    [Association(OneToOne,'IDPRODUTO','TESTPRODUTO','CODIGO')]
    property TESTPRODUTO: TTESTPRODUTO read FTESTPRODUTO_1 write FTESTPRODUTO_1;

    [Association(OneToOne,'IDFORNECEDOR','TPAGFORNECEDOR','CODIGO')]
    property TPAGFORNECEDOR: TTPAGFORNECEDOR read FTPAGFORNECEDOR_2 write FTPAGFORNECEDOR_2;

  end;

implementation

constructor TTESTCOTACAOITENS.Create;
begin
  FTESTCOTACAO_0 := TTESTCOTACAO.Create;
  FTESTPRODUTO_1 := TTESTPRODUTO.Create;
  FTPAGFORNECEDOR_2 := TTPAGFORNECEDOR.Create;
end;

destructor TTESTCOTACAOITENS.Destroy;
begin
  if Assigned(FTESTCOTACAO_0) then
    FTESTCOTACAO_0.Free;

  if Assigned(FTESTPRODUTO_1) then
    FTESTPRODUTO_1.Free;

  if Assigned(FTPAGFORNECEDOR_2) then
    FTPAGFORNECEDOR_2.Free;

  inherited;
end;

function TTESTCOTACAOITENS.getCODIGO: String;
begin
  if FCODIGO = EmptyStr then
    FCODIGO := TGUID.NewGuid.ToString;

  Result := FCODIGO;
end;

function TTESTCOTACAOITENS.getDATA_CADASTRO: TDateTime;
begin
  if FDATA_CADASTRO = StrToDateTime('30/12/1899 00:00') then
    FDATA_CADASTRO := Now;

  Result := FDATA_CADASTRO;
end;

function TTESTCOTACAOITENS.getULTIMA_ATUALIZACAO: TDateTime;
begin
  FULTIMA_ATUALIZACAO := Now;

  Result := FULTIMA_ATUALIZACAO;
end;

initialization
  TRegisterClass.RegisterEntity(TTESTCOTACAOITENS)

end.
