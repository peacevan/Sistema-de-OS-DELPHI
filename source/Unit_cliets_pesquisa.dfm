object frm_clients_pesquisa: Tfrm_clients_pesquisa
  Left = 0
  Top = 0
  Caption = 'frm_clients_pesquisa'
  ClientHeight = 417
  ClientWidth = 841
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 841
    Height = 417
    ActivePage = tbl_clients_query
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNone
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object tbl_clients_query: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object lbl_query: TLabel
        Left = 246
        Top = 6
        Width = 97
        Height = 13
        Caption = 'Campo de Consulta:'
      end
      object lbl_msg: TLabel
        Left = 3
        Top = 111
        Width = 35
        Height = 13
        Caption = 'lbl_msg'
        Visible = False
      end
      object btn_return: TButton
        Left = 342
        Top = 80
        Width = 90
        Height = 25
        Caption = 'Voltar'
        TabOrder = 0
        OnClick = btn_returnClick
        OnExit = btn_returnExit
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 130
        Width = 1014
        Height = 308
        DataSource = frm_data_module.data_source_query_clients
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNone
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'cliente_id'
            Title.Caption = 'ID:'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cliente_nome'
            Title.Caption = 'NOME:'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cliente_endereco'
            Title.Caption = 'ENDERE'#199'O:'
            Width = 135
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cliente_num_residencia'
            Title.Caption = 'N'#186':'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cliente_cep'
            Title.Caption = 'CEP:'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cliente_bairro'
            Title.Caption = 'BAIRRO:'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cliente_cidade'
            Title.Caption = 'CIDADE:'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cliente_estado'
            Title.Caption = 'ESTADO:'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cliente_rg'
            Title.Caption = 'RG:'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cliente_cpf'
            Title.Caption = 'CPF:'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cliente_telefone'
            Title.Caption = 'TELEFONE:'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cliente_celular'
            Title.Caption = 'CELULAR:'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cliente_email'
            Title.Caption = 'E-MAIL:'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cliente_data_nasc'
            Title.Caption = 'DATA:'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cliente_data_cad'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cliente_situacao'
            Title.Caption = 'SITUA'#199#195'O:'
            Width = 85
            Visible = True
          end>
      end
      object btn_print: TButton
        Left = 342
        Top = 52
        Width = 90
        Height = 25
        Caption = 'Imprimir'
        Enabled = False
        TabOrder = 2
      end
      object btn_query: TButton
        Left = 246
        Top = 52
        Width = 90
        Height = 25
        Caption = 'Consultar'
        TabOrder = 3
      end
      object txt_query: TEdit
        Left = 246
        Top = 25
        Width = 371
        Height = 21
        TabOrder = 4
      end
      object rg_options_query: TRadioGroup
        Left = 3
        Top = 0
        Width = 237
        Height = 105
        Caption = 'Op'#231#245'es de Consulta:'
        Color = clWhite
        Ctl3D = True
        Items.Strings = (
          'Por C'#243'digo'
          'Por Nome'
          'Por RG'
          'Por CPF'
          'Por Data de Nascimento')
        ParentBackground = False
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 5
      end
      object DateTimePicker1: TDateTimePicker
        Left = 246
        Top = 25
        Width = 371
        Height = 21
        Date = 43300.000000000000000000
        Time = 0.628348310186993300
        TabOrder = 6
      end
      object btn_show_all: TButton
        Left = 246
        Top = 80
        Width = 90
        Height = 25
        Caption = 'Mostrar Tudo'
        TabOrder = 7
      end
      object txt_print: TEdit
        Left = 527
        Top = 3
        Width = 90
        Height = 21
        Enabled = False
        TabOrder = 8
        Visible = False
      end
    end
  end
end
