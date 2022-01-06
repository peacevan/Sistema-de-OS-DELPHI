unit Unit_cliets_pesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_clients_pesquisa = class(TForm)
    PageControl1: TPageControl;
    tbl_clients_query: TTabSheet;
    lbl_query: TLabel;
    lbl_msg: TLabel;
    btn_return: TButton;
    DBGrid1: TDBGrid;
    btn_print: TButton;
    btn_query: TButton;
    txt_query: TEdit;
    rg_options_query: TRadioGroup;
    DateTimePicker1: TDateTimePicker;
    btn_show_all: TButton;
    txt_print: TEdit;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btn_returnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btn_returnExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_clients_pesquisa: Tfrm_clients_pesquisa;

implementation

{$R *.dfm}

uses unit_data_module, unit_ordem_servico, funformatartexto;

procedure Tfrm_clients_pesquisa.btn_returnClick(Sender: TObject);
begin

  // Volta para a primeira pagina:
  frm_ordem_servico.PageControl1.TabIndex := 0;
  // Habilita a tabela de cadastro:
  frm_ordem_servico.tbl_clients_register.TabVisible := true;
  // Desabilita tabela de consulta:
  // frm_ordem_servico.tbl_clients_query.TabVisible := false;
  frm_clients_pesquisa.Close;
end;

procedure Tfrm_clients_pesquisa.btn_returnExit(Sender: TObject);
begin

  // Volta para a primeira pagina:
  frm_ordem_servico.PageControl1.TabIndex := 0;
  // Habilita a tabela de cadastro:
  frm_ordem_servico.tbl_clients_register.TabVisible := true;
  // Desabilita tabela de consulta:
  // frm_ordem_servico.tbl_clients_query.TabVisible := false;
end;

procedure Tfrm_clients_pesquisa.DBGrid1DblClick(Sender: TObject);
var
  id_clients: string;
begin

  id_clients := DBGrid1.Columns[0].Field.Value;
  frm_data_module.sql_query_clients.Close;
  frm_data_module.sql_query_clients.SQL.Clear;
  frm_data_module.sql_query_clients.SQL.Add
    ('select * from clientes where cliente_id = :id');
  frm_data_module.sql_query_clients.ParamByName('id').Value := id_clients;
  frm_data_module.sql_query_clients.Open;
  // Volta para a primeira pagina:
  frm_ordem_servico.PageControl1.TabIndex := 0;
  // Habilita a tabela de cadastro:
  frm_ordem_servico.tbl_clients_register.TabVisible := true;
  // Desabilita tabela de consulta:
  // frm_ordem_servico.tbl_clients_query.TabVisible := false;
  frm_clients_pesquisa.Close;
end;

procedure Tfrm_clients_pesquisa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // btn_returnClick(Sender);
end;

procedure Tfrm_clients_pesquisa.FormShow(Sender: TObject);
begin

  frm_data_module.sql_query_clients.Close;
  frm_data_module.sql_query_clients.SQL.Clear;
  frm_data_module.sql_query_clients.SQL.Add('select * from clientes');
  frm_data_module.sql_query_clients.Open;
end;

end.
