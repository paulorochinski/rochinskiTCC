unit ConfiguracoesExportar.Model;

interface

uses ConfiguracoesExportar.Model.interf, Inifiles, System.SysUtils;

type
  TConfiguracoesExportarModel = class(TInterfacedObject,
    IConfiguracoesExportarModel)
  private
    FFileName: string;
    FFileIni: TIniFile;

    procedure verificarParametrosDeExportacao;
    procedure gravarParametrosPadraoDeExportacao;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IConfiguracoesExportarModel;

    function diretorioExportarOrcamentoCsv: string;
  end;

implementation

{ TConfiguracoesExportarModel }

constructor TConfiguracoesExportarModel.Create;
begin
  FFileName := ChangeFileExt(ParamStr(0), '.ini');
  FFileIni := TIniFile.Create(FFileName);

  verificarParametrosDeExportacao;
end;

destructor TConfiguracoesExportarModel.Destroy;
begin

  inherited;
end;

function TConfiguracoesExportarModel.diretorioExportarOrcamentoCsv: string;
begin
  Result := FFileIni.ReadString('Exportar', 'DiretorioOrcamento', 'c:\tcc\exportar');
end;

procedure TConfiguracoesExportarModel.gravarParametrosPadraoDeExportacao;
begin
  FFileIni.WriteString('Exportar', 'DiretorioOrcamento', 'c:\tcc\exportar');
end;

class function TConfiguracoesExportarModel.New: IConfiguracoesExportarModel;
begin
  Result := Self.Create;
end;

procedure TConfiguracoesExportarModel.verificarParametrosDeExportacao;
begin
  if not(FileExists(FFileName)) then
    gravarParametrosPadraoDeExportacao;

  if FileExists(FFileName) then
    if (FFileIni.ReadString('Exportar', 'DiretorioOrcamento', '') = EmptyStr) then
      gravarParametrosPadraoDeExportacao;
end;

end.
