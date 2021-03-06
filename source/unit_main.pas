unit unit_main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  //Vcl.Menus,
  Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage,
  //ExtCtrls,
  Menus;
 // Controls,
  //ComCtrls,
  //Classes;

type
  Tfrm_name = class(TForm)
    StatusBar1: TStatusBar;
    main_menu: TMainMenu;
    Arquivo1: TMenuItem;
    fechar2: TMenuItem;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    Timer1: TTimer;
    Image1: TImage;
    OrdemdeServicos1: TMenuItem;
    Cadastro1: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure fechar2Click(Sender: TObject);
    procedure cadastro1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_name: Tfrm_name;

implementation

{$R *.dfm}

uses unit_clients, unit_data_module, unit_ordem_servico;

procedure Tfrm_name.cadastro1Click(Sender: TObject);
begin
  frm_ordem_servico.ShowModal;

  //application.createform(Tform,frm_ordem_servico);
  //frm_ordem_servico.ShowModal;
end;

procedure Tfrm_name.Clientes1Click(Sender: TObject);
begin
  //frm_clients_register := frm_clients_register.Create(self);
  frm_clients_register.ShowModal;
end;

procedure Tfrm_name.fechar2Click(Sender: TObject);
begin
  Application.Terminate;
end;


Procedure Tfrm_name.Timer1Timer(Sender: TObject);
begin

  StatusBar1.Panels[0].Text := 'Sistema de Gerenciamento de Clientes'
  + '      -      '
  + 'Hor?rio: ' + FormatDateTime('hh:mm:ss', Now)
  + '      -      '
  + 'Data: '    + FormatDateTime('dddd, dd "de" mmmm "de" yyyy', Now);

  StatusBar1.Font.Size := 10;

end;

end.
