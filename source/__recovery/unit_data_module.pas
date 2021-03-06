unit unit_data_module;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.MySQL, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, frxClass, frxDBSet;

type
  Tfrm_data_module = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    tbl_clients: TFDTable;
    DataSource1: TDataSource;
    tbl_clientscliente_id: TFDAutoIncField;
    tbl_clientscliente_nome: TStringField;
    tbl_clientscliente_endereco: TStringField;
    tbl_clientscliente_bairro: TStringField;
    tbl_clientscliente_cidade: TStringField;
    tbl_clientscliente_estado: TStringField;
    tbl_clientscliente_rg: TStringField;
    tbl_clientscliente_cpf: TStringField;
    tbl_clientscliente_telefone: TStringField;
    tbl_clientscliente_celular: TStringField;
    tbl_clientscliente_data_nasc: TDateField;
    tbl_clientscliente_data_cad: TDateField;
    tbl_clientscliente_situacao: TStringField;
    tbl_clientscliente_email: TStringField;
    tbl_clientscliente_cep: TStringField;
    tbl_clientscliente_num_residencia: TStringField;
    sql_query_clients: TFDQuery;
    data_source_query_clients: TDataSource;
    sql_print_clients: TFDQuery;
    sql_query_clientscliente_id: TFDAutoIncField;
    sql_query_clientscliente_nome: TStringField;
    sql_query_clientscliente_endereco: TStringField;
    sql_query_clientscliente_num_residencia: TStringField;
    sql_query_clientscliente_cep: TStringField;
    sql_query_clientscliente_bairro: TStringField;
    sql_query_clientscliente_cidade: TStringField;
    sql_query_clientscliente_estado: TStringField;
    sql_query_clientscliente_rg: TStringField;
    sql_query_clientscliente_cpf: TStringField;
    sql_query_clientscliente_telefone: TStringField;
    sql_query_clientscliente_celular: TStringField;
    sql_query_clientscliente_email: TStringField;
    sql_query_clientscliente_data_nasc: TDateField;
    sql_query_clientscliente_data_cad: TDateField;
    sql_query_clientscliente_situacao: TStringField;
    sql_print_clientscliente_id: TFDAutoIncField;
    sql_print_clientscliente_nome: TStringField;
    sql_print_clientscliente_endereco: TStringField;
    sql_print_clientscliente_num_residencia: TStringField;
    sql_print_clientscliente_cep: TStringField;
    sql_print_clientscliente_bairro: TStringField;
    sql_print_clientscliente_cidade: TStringField;
    sql_print_clientscliente_estado: TStringField;
    sql_print_clientscliente_rg: TStringField;
    sql_print_clientscliente_cpf: TStringField;
    sql_print_clientscliente_telefone: TStringField;
    sql_print_clientscliente_celular: TStringField;
    sql_print_clientscliente_email: TStringField;
    sql_print_clientscliente_data_nasc: TDateField;
    sql_print_clientscliente_data_cad: TDateField;
    sql_print_clientscliente_situacao: TStringField;
    report_client: TfrxReport;
    data_set_report_client: TfrxDBDataset;
    tbl_OS: TFDTable;
    DataSource_OS: TDataSource;
    tbl_OSordem_servico_id: TFDAutoIncField;
    tbl_OStitulo: TStringField;
    tbl_OSprob_relatado: TStringField;
    tbl_OSprob_constatado: TStringField;
    tbl_OSdata_disponibilidade: TStringField;
    tbl_OSdata_hora: TStringField;
    tbl_OSimagem: TStringField;
    tbl_OStelefone_contato: TStringField;
    tbl_OScodigo: TStringField;
    tbl_OSserie: TStringField;
    tbl_OSpatrimonio: TStringField;
    tbl_OScor: TStringField;
    tbl_OSmodelo: TStringField;
    tbl_OSmarca: TStringField;
    tbl_OSstatus: TStringField;
    tbl_OSacessorios: TStringField;
    tbl_OSsituacao: TStringField;
    tbl_OSobservacao: TStringField;
    sql_print_os: TFDQuery;
    report_OS: TfrxReport;
    data_set_report_os: TfrxDBDataset;
    sql_print_osordem_servico_id: TFDAutoIncField;
    sql_print_osservico_produto_id: TIntegerField;
    sql_print_osuser_id: TIntegerField;
    sql_print_oscliente_id: TIntegerField;
    sql_print_ostitulo: TStringField;
    sql_print_osdescricao_servico: TStringField;
    sql_print_osprob_relatado: TStringField;
    sql_print_osprob_constatado: TStringField;
    sql_print_osdata_disponibilidade: TStringField;
    sql_print_osimagem: TStringField;
    sql_print_osdata_hora: TStringField;
    sql_print_ostelefone_contato: TStringField;
    sql_print_oscodigo: TStringField;
    sql_print_osserie: TStringField;
    sql_print_ospatrimonio: TStringField;
    sql_print_oscor: TStringField;
    sql_print_osmodelo: TStringField;
    sql_print_osmarca: TStringField;
    sql_print_osstatus: TStringField;
    sql_print_osacessorios: TStringField;
    sql_print_ossituacao: TStringField;
    sql_print_osobservacao: TStringField;
    sql_print_ostotal_os: TStringField;
    tbl_OSservico_produto_id: TIntegerField;
    tbl_OSuser_id: TIntegerField;
    tbl_OScliente_id: TIntegerField;
    tbl_OSdescricao_servico: TStringField;
    tbl_OStotal_os: TStringField;
    sql_query_os: TFDQuery;
    data_source_query_os: TDataSource;
    sql_query_osordem_servico_id: TFDAutoIncField;
    sql_query_osservico_produto_id: TIntegerField;
    sql_query_osuser_id: TIntegerField;
    sql_query_oscliente_id: TIntegerField;
    sql_query_ostitulo: TStringField;
    sql_query_osdescricao_servico: TStringField;
    sql_query_osprob_relatado: TStringField;
    sql_query_osprob_constatado: TStringField;
    sql_query_osdata_disponibilidade: TStringField;
    sql_query_osimagem: TStringField;
    sql_query_osdata_hora: TStringField;
    sql_query_ostelefone_contato: TStringField;
    sql_query_oscodigo: TStringField;
    sql_query_osserie: TStringField;
    sql_query_ospatrimonio: TStringField;
    sql_query_oscor: TStringField;
    sql_query_osmodelo: TStringField;
    sql_query_osmarca: TStringField;
    sql_query_osstatus: TStringField;
    sql_query_osacessorios: TStringField;
    sql_query_ossituacao: TStringField;
    sql_query_osobservacao: TStringField;
    sql_query_ostotal_os: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    //procedure DataSource_OSDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_data_module: Tfrm_data_module;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses unit_clients, unit_main;

{$R *.dfm}

procedure Tfrm_data_module.DataModuleCreate(Sender: TObject);
begin
  FDConnection1.Params.DataBase := 'sistema-gerencia-clientes';
  FDConnection1.Params.UserName := 'root';
  FDConnection1.Params.PassWord := '';

  FDConnection1.Connected := True;
  FDPhysMySQLDriverLink1.VendorLib := GetCurrentDir + '\lib\libmySQL.dll';
  tbl_clients.TableName := 'clientes';
  tbl_clients.Active := True;
end;



end.
