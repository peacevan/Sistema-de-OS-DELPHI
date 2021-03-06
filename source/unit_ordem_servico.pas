unit unit_ordem_servico;

interface

uses
  // insercao manual da biblioteca 'Data.DB:'
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  Tfrm_ordem_servico = class(TForm)
    PageControl1: TPageControl;
    tbl_clients_query: TTabSheet;
    tbl_clients_register: TTabSheet;
    btn_return: TButton;
    DBGrid1: TDBGrid;
    btn_print: TButton;
    btn_query: TButton;
    txt_query: TEdit;
    lbl_query: TLabel;
    rg_options_query: TRadioGroup;
    DateTimePicker1: TDateTimePicker;
    lbl_msg: TLabel;
    btn_show_all: TButton;
    txt_print: TEdit;
    Panel1: TPanel;
    txt_id: TDBEdit;
    lbl_id: TLabel;
    txt_data_cad: TDBEdit;
    lbl_data_cad: TLabel;
    txt_nome: TDBEdit;
    lbl_nome: TLabel;
    txt_rg: TDBEdit;
    lbl_rg: TLabel;
    lbl_cpf: TLabel;
    txt_cpf: TDBEdit;
    Panel2: TPanel;
    btn_save: TSpeedButton;
    btn_insert: TSpeedButton;
    btn_edit: TSpeedButton;
    btn_remove: TSpeedButton;
    btn_search: TSpeedButton;
    btn_cancel: TSpeedButton;
    btn_close: TSpeedButton;
    Panel3: TPanel;
    Label2: TLabel;
    txt_endereco: TDBEdit;
    Label3: TLabel;
    txt_num_residencia: TDBEdit;
    txt_cep: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    cb_estado: TDBComboBox;
    txt_cidade: TDBEdit;
    Label6: TLabel;
    txt_bairro: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    txt_telefone: TDBEdit;
    txt_celular: TDBEdit;
    Label9: TLabel;
    txt_email: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Panel4: TPanel;
    txt_num_oc: TDBEdit;
    Label12: TLabel;
    txt_descricao_produco_servico: TDBEdit;
    txt_desc_produco_servico: TLabel;
    txt_serie: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    txt_cor: TDBEdit;
    txt_patrimonio: TDBEdit;
    Label15: TLabel;
    Label18: TLabel;
    txt_acessorio: TDBEdit;
    mm_prob_relat: TDBMemo;
    mm_prob_constatado: TDBMemo;
    mm_observacao: TDBMemo;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    cb_situacao: TDBComboBox;
    SpeedButtonCliente: TSpeedButton;
    txt_print_client: TEdit;
    txt_total_os: TDBEdit;
    txt_os_ciente_id: TDBEdit;
    procedure btn_insertClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure btn_removeClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
    procedure btn_closeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_searchClick(Sender: TObject);
    procedure btn_returnClick(Sender: TObject);
    procedure rg_options_queryClick(Sender: TObject);
    procedure btn_queryClick(Sender: TObject);
    procedure btn_show_allClick(Sender: TObject);
    procedure txt_queryKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn_printClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txt_total_osExit(Sender: TObject);

  private
    //Ctrl + shift + c = cria um procedimento:
    procedure QuantityRegisters;
    procedure DisableTextBox;
    procedure ClearTextBox;
    procedure EnableTextBox;

    procedure EnabledTextBoxOS;
    procedure EnableTextBoxOS;
  public
    { Public declarations }
  end;

var
  frm_ordem_servico: Tfrm_ordem_servico;

implementation

{$R *.dfm}

uses unit_data_module, unit_main, Unit_cliets_pesquisa;

procedure Tfrm_ordem_servico.btn_cancelClick(Sender: TObject);
begin

  //Cancela as altera??es na tabela:
  frm_data_module.tbl_clients.Cancel;

  //Desativa as caixas de texto:
  DisableTextBox;

  //Limpa as Caixas de Texto:
  ClearTextBox;

  //Habilita/desabilita bot?es:
  btn_insert.Enabled := True;
  btn_edit.Enabled := False;
  btn_save.Enabled := False;
  btn_remove.Enabled := False;
  btn_cancel.Enabled := False;
  btn_search.Enabled:=  False;
  SpeedButtonCliente.Enabled:=false;
end;

procedure Tfrm_ordem_servico.btn_closeClick(Sender: TObject);
begin

  //Se estado de insercao ou edicao:
  if frm_data_module.tbl_clients.State in [dsInsert, dsEdit] then
     begin
       ShowMessage('Salve ou cancele o Registro antes de sair.');
       exit;
     end
     else
     begin
        //Destroy;
       close;


     end;

  //Habilita/desabilita bot?es:
  btn_insert.Enabled := True;
  btn_edit.Enabled := False;
  btn_save.Enabled := False;
  btn_remove.Enabled := False;
  btn_cancel.Enabled := False;

end;

procedure Tfrm_ordem_servico.btn_editClick(Sender: TObject);
var  i:Boolean;
begin
 //Ativa as caixas de texto:
 EnableTextBoxOS;
  //frm_data_module.tbl_OS.Close;
 //frm_data_module.tbl_OS.SQL.Clear;
 //frm_data_module.tbl_OS.SQL.Add('select * from ordem_servico where ordem_servico_id =:id');
 //frm_data_module.tbl_OS.ParamByName('id').Value := 8;//strToInt(txt_print.Text);
 frm_data_module.tbl_OS.Open;
 frm_data_module.tbl_OS.Locate('ordem_servico_id',txt_print.Text);
 txt_os_ciente_id.Text:=txt_print_client.Text;
 //frm_data_module.tbl_OS.Open;
 frm_data_module.tbl_OS.Active:=true;
 //Chama o metodo de edicao para a 'tabela':
 frm_data_module.tbl_OS.Edit;
 //Habilita/desabilita bot?es:
  btn_insert.Enabled := False;
  btn_edit.Enabled := False;
  btn_save.Enabled := True;
  btn_remove.Enabled := False;
  btn_cancel.Enabled := True;
  SpeedButtonCliente.Enabled:=true;

end;

procedure Tfrm_ordem_servico.btn_insertClick(Sender: TObject);
begin

  //Ativa as caixas de texto:
  //EnableTextBox;   //ivan
  //Habilita/desabilita bot?es:
  EnableTextBoxOS;
  btn_insert.Enabled := False;
  btn_edit.Enabled := False;
  btn_save.Enabled := True;
  btn_remove.Enabled := False;
  btn_cancel.Enabled := True;

     //Inicializa a insercao na tabela:

    frm_data_module.tbl_OS.Active:= True;
    frm_data_module.tbl_OS.Insert;
     //Posiciona o 'cursor' no txt_nome:
     txt_descricao_produco_servico.SetFocus;
   //Tratamento da data de cadastro:
  // frm_data_module.tbl_clientscliente_data_cad.Value := date;
  // frm_data_module.tbl_clientscliente_cidade.Value := 'Santa Cruz do Sul';
  // frm_data_module.tbl_clientscliente_estado.Value := 'RS';
  // frm_data_module.tbl_clientscliente_situacao.Value := 'Ativo';
   SpeedButtonCliente.Enabled:=true;

end;

procedure Tfrm_ordem_servico.btn_printClick(Sender: TObject);
begin

  with frm_data_module.sql_print_os do
  begin
    Close;
    SQL.Clear;
    if txt_print.Text = '' then
    begin
      SQL.Add('select * from ordem_servico');
    end
    else
    begin
      SQL.Add('select * from ordem_servico   where ordem_servico_id = :id');
      ParamByName('id').Value := strToInt(txt_print.Text);
    end;

    Open;

  end;


   with frm_data_module.sql_print_clients do
  begin
    Close;
    SQL.Clear;

    if txt_print.Text = '' then
    begin
      SQL.Add('select * from clientes');
    end
    else
    begin
      SQL.Add('select * from clientes where cliente_id = :id');
      ParamByName('id').Value := strToInt(txt_print_client.Text);
    end;
    Open;
    frm_data_module.report_OS.LoadFromFile(GetCurrentDir + '\reports\report_OS.fr3');
    frm_data_module.report_OS.ShowReport();
  end;


end;

procedure Tfrm_ordem_servico.btn_queryClick(Sender: TObject);
begin

  //Verifica se o campo de consulta n?o esta vazio:
  if txt_query.Text = '' then
    begin
      ShowMessage('Digite a informa??o do Cliente a ser consultada.');
      txt_query.SetFocus;
      exit;
    end;

  //Passa mais de uma instru??o ao mesmo objeto:
  with frm_data_module.sql_query_os do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from ordem_servico');

    case rg_options_query.ItemIndex of
      0:
      begin
        SQL.Add('where ordem_servico_id = :codigo');
        ParamByName('codigo').Value := txt_query.Text;
        showmessage(inttostr(rg_options_query.ItemIndex));
      end;

      1:
      begin
        SQL.Add('where descricao_servico like :descricao_servico');
        ParamByName('descricao_servico').Value := '%' + txt_query.Text + '%';
      end;

      2:
      begin
        SQL.Add('where data_hora= :data_hora');
        ParamByName('data_hora').AsDate := strToDate(formatDateTime('dd/mm/yyyy', DateTimePicker1.Date));
        txt_query.Text := 'null';

      end;

      3:
      begin
       // SQL.Add('where cliente_cpf = :cpf');
       // ParamByName('cpf').Value := txt_query.Text;
      end;


    end;

    Open;
    QuantityRegisters;

  end;

end;

procedure Tfrm_ordem_servico.btn_removeClick(Sender: TObject);
begin

  frm_data_module.sql_query_os.Close;
  frm_data_module.sql_query_os.SQL.Clear;
  frm_data_module.sql_query_os.SQL.Add('select * from ordem_servico where ordem_servico_id = :id');
  frm_data_module.sql_query_os.ParamByName('id').Value := txt_print.Text;
  frm_data_module.sql_query_os.Open;
  SpeedButtonCliente.Enabled:=false;

  //Ao digitar 'case' + pressionar tab, cria a estrutura do case:
  case Application.MessageBox(('Deseja excluir Ordem de Servi?o ?') , 'Exclus?o de Orderm de Servi?o', MB_YESNO + MB_ICONQUESTION) of
    IDYES:
    begin
      //Se sim, deleta o cliente:
      frm_data_module.sql_query_os.Delete;
      ShowMessage('ordem de Servi?o exclu?do com sucesso.');
    end;
    IDNO:
    begin
      exit;
    end;

  end;

  //Limpa as Caixas de Texto:
  ClearTextBox;

  //Habilita/desabilita bot?es:
  btn_insert.Enabled := True;
  btn_edit.Enabled := False;
  btn_save.Enabled := False;
  btn_remove.Enabled := False;
  btn_cancel.Enabled := False;

end;

procedure Tfrm_ordem_servico.btn_saveClick(Sender: TObject);
begin
  //Salva os dados na tabela:
  //frm_data_module.tbl_OS.FieldByName('servico_produco').Value:=txt_id.Text;

  frm_data_module.tbl_OS.Post;
  frm_data_module.tbl_OS.Close;
   //Mostra uma mensagem de sucesso:
  ShowMessage('Novas informa??es cadastradas com sucesso.');
  //Desativa as caixas de texto:
  DisableTextBox;
  //Limpa as Caixas de Texto:
  ClearTextBox;
  //Habilita/desabilita bot?es:
  btn_insert.Enabled := True;
  btn_edit.Enabled := False;
  btn_save.Enabled := False;
  btn_remove.Enabled := False;
  btn_cancel.Enabled := False;
  SpeedButtonCliente.Enabled:=false;


end;

procedure Tfrm_ordem_servico.btn_searchClick(Sender: TObject);
begin
    frm_clients_pesquisa.ShowModal;
  //PageControl1.TabIndex := 1;
  //Desabilita 'tabela' de cadastro:
  //tbl_clients_register.TabVisible := False;
  //Habilita 'tabela' de consulta:
  tbl_clients_query.TabVisible := True;
  //Refresh no bd:
   btn_search.Enabled:=    false;


  //inicio
  txt_id.Text := intToStr(frm_data_module.sql_query_clientscliente_id.Value);
  txt_data_cad.Text := dateToStr(frm_data_module.sql_query_clientscliente_data_cad.Value);
  txt_os_ciente_id.Text:=txt_id.Text;
  txt_nome.Text := frm_data_module.sql_query_clientscliente_nome.Value;
  txt_rg.Text := frm_data_module.sql_query_clientscliente_rg.Value;
  txt_cpf.Text := frm_data_module.sql_query_clientscliente_cpf.Value;
  //txt_data_nasc.Text := dateToStr(frm_data_module.sql_query_clientscliente_data_nasc.Value);

  txt_endereco.Text := frm_data_module.sql_query_clientscliente_endereco.Value;
  txt_num_residencia.Text := frm_data_module.sql_query_clientscliente_num_residencia.Value;
  txt_cep.Text := frm_data_module.sql_query_clientscliente_cep.Value;
  txt_bairro.Text := frm_data_module.sql_query_clientscliente_bairro.Value;
  txt_cidade.Text := frm_data_module.sql_query_clientscliente_cidade.Value;
  cb_estado.Text := frm_data_module.sql_query_clientscliente_estado.Value;

  txt_telefone.Text := frm_data_module.sql_query_clientscliente_telefone.Value;
  txt_celular.Text := frm_data_module.sql_query_clientscliente_celular.Value;
  txt_email.Text := frm_data_module.sql_query_clientscliente_email.Value;
  cb_situacao.Text := frm_data_module.sql_query_clientscliente_situacao.Value;

  //Desabilita as caixas de texto:
  //DisableTextBox;

  //Habilita/desabilita bot?es:
 // btn_insert.Enabled := False;
  //btn_edit.Enabled := True;
 // btn_save.Enabled := False;
 // btn_remove.Enabled := True;
 // btn_cancel.Enabled := True;



  //fim



  frm_data_module.sql_query_clients.Open;
  frm_data_module.sql_query_clients.Refresh;
  QuantityRegisters;
 // btn_searchClick(sender);

end;

procedure Tfrm_ordem_servico.btn_show_allClick(Sender: TObject);
begin

  frm_data_module.sql_query_os.Close;
  frm_data_module.sql_query_os.SQL.Clear;
  frm_data_module.sql_query_os.SQL.Add('select * from ordem_servico');
  frm_data_module.sql_query_os.Open;

  QuantityRegisters;
  btn_print.Enabled := True;

end;

procedure Tfrm_ordem_servico.ClearTextBox;
begin

  txt_id.Text := '';
  txt_data_cad.Text := '';

  txt_nome.Text := '';
  txt_rg.Text := '';
  txt_cpf.Text := '';
  //txt_data_nasc.Text := '';

  txt_endereco.Text := '';
  txt_num_residencia.Text := '';
  txt_cep.Text := '';
  txt_bairro.Text := '';
  txt_cidade.Text := '';
  cb_estado.Text := '';

  txt_telefone.Text := '';
  txt_celular.Text := '';
  txt_email.Text := '';

  cb_situacao.Text := '';

  txt_num_oc.Text:='';
  txt_descricao_produco_servico.Text:='';
  txt_serie.Text:='';
  txt_patrimonio.Text:='';
  txt_cor.Text:='';
  txt_acessorio.Text:='';
  cb_situacao.Text:='';
  mm_prob_relat.Text:='';
  mm_prob_constatado.Text:='';
  mm_observacao.Text:='';

end;

procedure Tfrm_ordem_servico.DBGrid1CellClick(Column: TColumn);
begin

  txt_print.Text := intToStr(frm_data_module.sql_query_osordem_servico_id.Value);
  txt_print_client.Text := intToStr(frm_data_module.sql_query_oscliente_id.Value);


  btn_print.Enabled := True;

end;

procedure Tfrm_ordem_servico.DBGrid1DblClick(Sender: TObject);
begin



  frm_data_module.sql_query_clients.Close;
  frm_data_module.sql_query_clients.SQL.Clear;
  frm_data_module.sql_query_clients.SQL.Add('select * from clientes where cliente_id = :id');
  frm_data_module.sql_query_clients.ParamByName('id').Value := txt_print_client.Text;
  frm_data_module.sql_query_clients.Open;




  frm_data_module.sql_query_os.Close;
  frm_data_module.sql_query_os.SQL.Clear;
  frm_data_module.sql_query_os.SQL.Add(' select * from ordem_servico where ordem_servico_id = :id');
  frm_data_module.sql_query_os.ParamByName('id').Value := txt_print.Text;
  frm_data_module.sql_query_os.Open;



  PageControl1.TabIndex := 0;
 // tbl_clients_query.TabVisible := False;
  tbl_clients_register.TabVisible := True;

  txt_id.Text := intToStr(frm_data_module.sql_query_clientscliente_id.Value);
  txt_data_cad.Text := dateToStr(frm_data_module.sql_query_clientscliente_data_cad.Value);

  txt_nome.Text := frm_data_module.sql_query_clientscliente_nome.Value;
  txt_rg.Text := frm_data_module.sql_query_clientscliente_rg.Value;
  txt_cpf.Text := frm_data_module.sql_query_clientscliente_cpf.Value;
  //txt_data_nasc.Text := dateToStr(frm_data_module.sql_query_clientscliente_data_nasc.Value);

  txt_endereco.Text := frm_data_module.sql_query_clientscliente_endereco.Value;
  txt_num_residencia.Text := frm_data_module.sql_query_clientscliente_num_residencia.Value;
  txt_cep.Text := frm_data_module.sql_query_clientscliente_cep.Value;
  txt_bairro.Text := frm_data_module.sql_query_clientscliente_bairro.Value;
  txt_cidade.Text := frm_data_module.sql_query_clientscliente_cidade.Value;
  cb_estado.Text := frm_data_module.sql_query_clientscliente_estado.Value;

  txt_telefone.Text := frm_data_module.sql_query_clientscliente_telefone.Value;
  txt_celular.Text := frm_data_module.sql_query_clientscliente_celular.Value;
  txt_email.Text := frm_data_module.sql_query_clientscliente_email.Value;

  //cb_situacao.Text := frm_data_module.sql_query_clientscliente_situacao.Value;

   txt_descricao_produco_servico.Text := frm_data_module.sql_query_osdescricao_servico.Value;
   txt_num_oc.Text:=frm_data_module.sql_query_oscodigo.Value;
   txt_serie.Text:=frm_data_module.sql_query_osserie.Value;
   txt_cor.Text:=frm_data_module.sql_query_oscor.Value;
   txt_patrimonio.Text:=frm_data_module.sql_query_ospatrimonio.Value;
   txt_acessorio.Text:=frm_data_module.sql_query_osacessorios.Value;
   txt_total_os.Text:=frm_data_module.sql_query_ostotal_os.Value;
   mm_prob_relat.Text:=frm_data_module.sql_query_osprob_relatado.Value;
   mm_prob_constatado.Text:=frm_data_module.sql_query_osprob_constatado.Value;
   mm_observacao.Text:=frm_data_module.sql_query_osobservacao.Value;






  //Desabilita as caixas de texto:
  DisableTextBox;
  //Habilita/desabilita bot?es:
  btn_insert.Enabled :=   False;
  btn_edit.Enabled   :=   True;
  btn_save.Enabled   :=   False;
  btn_remove.Enabled :=   True;
  btn_cancel.Enabled :=   True;
  btn_search.Enabled:=    false;


end;

procedure Tfrm_ordem_servico.DisableTextBox;
begin

  txt_id.Enabled := False;
  txt_data_cad.Enabled := False;

  txt_nome.Enabled := False;
  txt_rg.Enabled := False;
  txt_cpf.Enabled := False;
  //txt_data_nasc.Enabled := False;
  txt_endereco.Enabled := False;
  txt_num_residencia.Enabled := False;
  txt_cep.Enabled := False;
  txt_bairro.Enabled := False;
  txt_cidade.Enabled := False;
  cb_estado.Enabled := False;
  txt_telefone.Enabled := False;
  txt_celular.Enabled := False;
  txt_email.Enabled := False;
  cb_situacao.Enabled := False;


   //OS
   txt_descricao_produco_servico.Enabled := False;
   txt_num_oc.Enabled := False;
   txt_serie.Enabled := False;
   txt_cor.Enabled := False;
   txt_patrimonio.Enabled := False;
   txt_acessorio.Enabled := False;
   txt_total_os.Enabled := False;
   txt_cor.Enabled := False;
   cb_situacao.Enabled := False;
   mm_prob_relat.Enabled := False;
   mm_prob_constatado.Enabled := False;
   mm_observacao.Enabled := False;


end;

procedure Tfrm_ordem_servico.EnableTextBox;
begin

  txt_id.Enabled := True;
  txt_data_cad.Enabled := True;
  txt_nome.Enabled := True;
  txt_rg.Enabled := True;
  txt_cpf.Enabled := True;
  //txt_data_nasc.Enabled := True;
  txt_endereco.Enabled := True;
  txt_num_residencia.Enabled := True;
  txt_cep.Enabled := True;
  txt_bairro.Enabled := True;
  txt_cidade.Enabled := True;
  cb_estado.Enabled := True;

  txt_telefone.Enabled := True;
  txt_celular.Enabled := True;
  txt_email.Enabled := True;

  cb_situacao.Enabled := True;

end;
procedure Tfrm_ordem_servico.EnableTextBoxOS;
begin
   txt_descricao_produco_servico.Enabled := True;
   txt_num_oc.Enabled := True;
   txt_serie.Enabled := True;
   txt_cor.Enabled := True;
   txt_patrimonio.Enabled := True;
   txt_acessorio.Enabled := True;
   txt_total_os.Enabled := True;
   txt_cor.Enabled := True;
   cb_situacao.Enabled := True;
   mm_prob_relat.Enabled := True;
   mm_prob_constatado.Enabled := True;
   mm_observacao.Enabled := True;

end;

procedure Tfrm_ordem_servico.EnabledTextBoxOS;

begin




end;

procedure Tfrm_ordem_servico.btn_returnClick(Sender: TObject);
begin

  //Volta para a primeira pagina:
  PageControl1.TabIndex := 0;

  //Habilita a tabela de cadastro:
  tbl_clients_register.TabVisible := true;

  //Desabilita tabela de consulta:
  //tbl_clients_query.TabVisible := false;

end;

procedure Tfrm_ordem_servico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    // Action := caFree;
end;

procedure Tfrm_ordem_servico.FormCreate(Sender: TObject);
begin

  //Limpa as Caixas de Texto:
  ClearTextBox();
  PageControl1.TabIndex := 0;
 //tbl_clients_query.TabVisible := False;
  DisableTextBox;

  //Habilita/desabilita bot?es:
  btn_insert.Enabled := True;
  btn_edit.Enabled := False;
  btn_save.Enabled := False;
  btn_remove.Enabled := False;
  btn_cancel.Enabled := false;

  //Desabilita a visualiza??o do 'txt_query':
  txt_query.Visible := False;

  //Desabilita a visualiza??o do 'lbl_query':
  lbl_query.Visible := false;

  //Desabilita a visualiza??o do 'DateTimePicker1':
  DateTimePicker1.Visible := False;

  //Desabilita o 'btn_print':
  btn_print.Enabled := False;

  //Desabilita o 'btn_query':
  btn_query.Enabled := false;

end;

procedure Tfrm_ordem_servico.QuantityRegisters;
begin

    // caso nao encontre clientes:
    if frm_data_module.sql_query_clients.RecordCount = 0 then
    begin
      lbl_msg.Visible := true;
      lbl_msg.Caption := '';
      lbl_msg.Caption := 'Status: nenhum cliente encontrado.';

      // desabilita o botao imprimir:
      btn_print.Enabled := false;
    end;

    // caso encontre apenas 01 cliente:
    if frm_data_module.sql_query_clients.RecordCount = 1 then
    begin
      lbl_msg.Visible := true;
      lbl_msg.Caption := '';
      lbl_msg.Caption := 'Status: 1 cliente encontrado.';

      // habilita o botao imprimir:
      btn_print.Enabled := true;
    end;

    // caso encontre mais de 01 cliente:
    if frm_data_module.sql_query_clients.RecordCount > 1 then
    begin
      lbl_msg.Visible := true;
      lbl_msg.Caption := '';
      lbl_msg.Caption := 'Status: ' + IntToStr(frm_data_module.sql_query_clients.RecordCount) + ' clientes encontrados.';

      // habilita o botao imprimir:
      btn_print.Enabled := true;
    end;

end;

procedure Tfrm_ordem_servico.rg_options_queryClick(Sender: TObject);
begin

  case rg_options_query.ItemIndex of
    0:
    begin
      txt_query.Visible := true;
      txt_query.Clear;
      lbl_query.Visible := true;
      lbl_query.Caption := 'Digite o Codigo do Cliente:';
      DateTimePicker1.Visible := false;

      // habilita o bot?o 'btn_query':
      btn_query.Enabled := true;

      txt_query.SetFocus;
    end;

    1:
    begin
      txt_query.Visible := true;
      txt_query.Clear;
      lbl_query.Visible := true;
      lbl_query.Caption := 'Digite o Nome do Cliente:';
      DateTimePicker1.Visible := false;

      // habilita o bot?o 'btn_query':
      btn_query.Enabled := true;

      txt_query.SetFocus;
    end;

    2:
    begin
      txt_query.Visible := true;
      txt_query.Clear;
      lbl_query.Visible := true;
      lbl_query.Caption := 'Digite o RG do Cliente:';
      DateTimePicker1.Visible := false;

      // habilita o bot?o 'btn_query':
      btn_query.Enabled := true;

      txt_query.SetFocus;
    end;

    3:
    begin
      txt_query.Visible := true;
      txt_query.Clear;
      lbl_query.Visible := true;
      lbl_query.Caption := 'Digite o CPF do Cliente:';
      DateTimePicker1.Visible := false;

      // habilita o bot?o 'btn_query':
      btn_query.Enabled := true;

      txt_query.SetFocus;
    end;

    4:
    begin
      txt_query.Visible := false;

      lbl_query.Visible := true;
      lbl_query.Caption := 'Selecione a Data de Nasc. do Cliente:';
      DateTimePicker1.Visible := true;

      // habilita o bot?o 'btn_query':
      btn_query.Enabled := true;
    end;

  end;

end;

procedure Tfrm_ordem_servico.txt_queryKeyPress(Sender: TObject;
  var Key: Char);
begin

  case rg_options_query.ItemIndex of
  0:
  begin
    if(key in ['0'..'9'] = false) and (word(key) <> VK_BACK) then
    begin
      ShowMessage('Este campo permite apenas a entrada de valores num?ricos.');
      // invalidar tecla:
      key := #0;
    end;
  end;

  2:
  begin
    if(key in ['0'..'9'] = false) and (word(key) <> VK_BACK) then
    begin
      ShowMessage('Este campo permite apenas a entrada de valores num?ricos.');
      // invalidar tecla:
      key := #0;
    end;
  end;

  3:
  begin
    if(key in ['0'..'9'] = false) and (word(key) <> VK_BACK) then
    begin
      ShowMessage('Este campo permite apenas a entrada de valores num?ricos.');
      // invalidar tecla:
      key := #0;
    end;
  end;

end;
end;

procedure Tfrm_ordem_servico.txt_total_osExit(Sender: TObject);
begin
     txt_total_os.text:= FormatFloat(',0.00', StrToFloat(txt_total_os.text));
end;

end.
