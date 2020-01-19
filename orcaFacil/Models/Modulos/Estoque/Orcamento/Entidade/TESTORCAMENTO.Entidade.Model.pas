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
  ormbr.mapping.classes, 
  ormbr.mapping.register, 
  ormbr.mapping.attributes; 

type
  [Entity]
  [Table('TESTORCAMENTO', '')]
  [PrimaryKey('CODIGO', NotInc, NoSort, False, 'Chave prim�ria')]
  TTESTORCAMENTO = class
  private
    { Private declarations } 
    FCODIGO: String;
    FIDORCAMENTO: Integer;
    FDESCRICAO: Nullable<String>;
    FDATA_CADASTRO: TDateTime;
    FULTIMA_ATUALIZACAO: TDateTime;
  public 
    { Public declarations } 
    [Restrictions([NotNull])]
    [Column('CODIGO', ftString, 64)]
    [Dictionary('CODIGO', 'Mensagem de valida��o', '', '', '', taLeftJustify)]
    property CODIGO: String read FCODIGO write FCODIGO;

    [Restrictions([NotNull])]
    [Column('IDORCAMENTO', ftInteger)]
    [Dictionary('IDORCAMENTO', 'Mensagem de valida��o', '', '', '', taCenter)]
    property IDORCAMENTO: Integer read FIDORCAMENTO write FIDORCAMENTO;

    [Column('DESCRICAO', ftString, 225)]
    [Dictionary('DESCRICAO', 'Mensagem de valida��o', '', '', '', taLeftJustify)]
    property DESCRICAO: Nullable<String> read FDESCRICAO write FDESCRICAO;

    [Restrictions([NotNull])]
    [Column('DATA_CADASTRO', ftDateTime)]
    [Dictionary('DATA_CADASTRO', 'Mensagem de valida��o', 'Now', '', '!##/##/####;1;_', taCenter)]
    property DATA_CADASTRO: TDateTime read FDATA_CADASTRO write FDATA_CADASTRO;

    [Restrictions([NotNull])]
    [Column('ULTIMA_ATUALIZACAO', ftDateTime)]
    [Dictionary('ULTIMA_ATUALIZACAO', 'Mensagem de valida��o', 'Now', '', '!##/##/####;1;_', taCenter)]
    property ULTIMA_ATUALIZACAO: TDateTime read FULTIMA_ATUALIZACAO write FULTIMA_ATUALIZACAO;
  end;

implementation

initialization
  TRegisterClass.RegisterEntity(TTESTORCAMENTO)

end.
