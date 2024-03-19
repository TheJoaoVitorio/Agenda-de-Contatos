unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef;

type
  TDM = class(TDataModule)
    conexao: TFDConnection;
    TBcontatos: TFDTable;
    DScontatos: TDataSource;
    TBcontatosid: TFDAutoIncField;
    TBcontatosnome: TStringField;
    TBcontatoscelular: TStringField;
    TBcontatosbloqueado: TBooleanField;
    TBcontatosdata: TDateTimeField;
    TBcontatosobservaçoes: TMemoField;
    procedure TBcontatosAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.TBcontatosAfterInsert(DataSet: TDataSet);
begin
  TBcontatosdata.Value := Now();
end;

end.
