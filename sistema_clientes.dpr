program sistema_clientes;

uses
  Vcl.Forms,
  unit_main in 'source\unit_main.pas' {frm_name},
  unit_data_module in 'source\unit_data_module.pas' {frm_data_module: TDataModule},
  unit_ordem_servico in 'source\unit_ordem_servico.pas' {frm_ordem_servico},
  unit_clients in 'source\unit_clients.pas' {frm_clients_register},
  Unit_cliets_pesquisa in 'source\Unit_cliets_pesquisa.pas' {frm_clients_pesquisa};

//Vcl.Themes,
  //Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  //TStyleManager.TrySetStyle('Luna');
  Application.CreateForm(Tfrm_name, frm_name);
  Application.CreateForm(Tfrm_data_module, frm_data_module);
  Application.CreateForm(Tfrm_clients_register, frm_clients_register);
  Application.CreateForm(Tfrm_ordem_servico, frm_ordem_servico);
  Application.CreateForm(Tfrm_clients_pesquisa, frm_clients_pesquisa);
  Application.Run;
end.
