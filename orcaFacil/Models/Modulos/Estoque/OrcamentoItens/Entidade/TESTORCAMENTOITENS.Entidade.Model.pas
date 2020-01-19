unit TESTORCAMENTOITENS.Entidade.Model;

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
  TESTPRODUTO.Entidade.Model,
  TESTORCAMENTO.Entidade.Model;

type
  [Entity]
  [Table('TESTORCAMENTOITENS', '')]
  [PrimaryKey('IDORCAMENTO', NotInc, NoSort, False, 'Chave primária')]
  [PrimaryKey('IDPRODUTO', NotInc, NoSort, False, 'Chave primária')]
  TTESTORCAMENTOITENS = class
  private
    { Private declarations }
    FIDORCAMENTO: String;
    FIDPRODUTO: String;
    FQTDE: Nullable<Double>;
    FDATA_CADASTRO: TDateTime;
    FULTIMA_ATUALIZACAO: TDateTime;

    FTESTORCAMENTO_0:  TTESTORCAMENTO  ;
    FTESTPRODUTO_1:  TTESTPRODUTO  ;
    function getDATA_CADASTRO: TDateTime;
    function getULTIMA_ATUALIZACAO: TDateTime;
  public
    { Public declarations }
    constructor Create;
    destructor Destroy; override;
    [Restrictions([NotNull])]
    [Column('IDORCAMENTO', ftString, 64)]
    [ForeignKey('FK_TESTORCAMENTOITENS_1', 'IDORCAMENTO', 'TESTORCAMENTO', 'CODIGO', SetNull, SetNull)]
    [Dictionary('IDORCAMENTO', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property IDORCAMENTO: String read FIDORCAMENTO write FIDORCAMENTO;

    [Restrictions([NotNull])]
    [Column('IDPRODUTO', ftString, 64)]
    [ForeignKey('FK_TESTORCAMENTOITENS_2', 'IDPRODUTO', 'TESTPRODUTO', 'CODIGO', SetNull, SetNull)]
    [Dictionary('IDPRODUTO', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property IDPRODUTO: String read FIDPRODUTO write FIDPRODUTO;

    [Column('QTDE', ftBCD)]
    [Dictionary('QTDE', 'Mensagem de validação', '0', '', '', taRightJustify)]
    property QTDE: Nullable<Double> read FQTDE write FQTDE;

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

    [Association(OneToOne,'IDPRODUTO','TESTPRODUTO','CODIGO')]
    property TESTPRODUTO: TTESTPRODUTO read FTESTPRODUTO_1 write FTESTPRODUTO_1;

  end;

implementation

constructor TTESTORCAMENTOITENS.Create;
begin
  FTESTORCAMENTO_0 := TTESTORCAMENTO.Create;
  FTESTPRODUTO_1 := TTESTPRODUTO.Create;
end;

destructor TTESTORCAMENTOITENS.Destroy;
begin
  if Assigned(FTESTORCAMENTO_0) then
    FTESTORCAMENTO_0.Free;

  if Assigned(FTESTPRODUTO_1) then
    FTESTPRODUTO_1.Free;

  inherited;
end;

function TTESTORCAMENTOITENS.getDATA_CADASTRO: TDateTime;
begin
  if FDATA_CADASTRO = StrToDateTime('30/12/1899 00:00') then
    FDATA_CADASTRO := Now;

  Result := FDATA_CADASTRO;
end;

function TTESTORCAMENTOITENS.getULTIMA_ATUALIZACAO: TDateTime;
begin
  FULTIMA_ATUALIZACAO := Now;

  Result := FULTIMA_ATUALIZACAO;
end;

initialization
  TRegisterClass.RegisterEntity(TTESTORCAMENTOITENS)

end.

