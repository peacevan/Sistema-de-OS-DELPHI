object frm_ordem_servico: Tfrm_ordem_servico
  Left = 340
  Top = 0
  Caption = 'Cadastro de Ordem de Servi'#231'os'
  ClientHeight = 497
  ClientWidth = 1267
  Color = cl3DLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label14: TLabel
    Left = 253
    Top = 299
    Width = 65
    Height = 13
    Caption = 'N'#218'MERO OS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 477
    Top = 327
    Width = 65
    Height = 13
    Caption = 'N'#218'MERO OS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 629
    Top = 322
    Width = 65
    Height = 13
    Caption = 'N'#218'MERO OS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1267
    Height = 497
    ActivePage = tbl_clients_query
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNone
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object tbl_clients_register: TTabSheet
      Caption = 'Cadastro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      object Panel1: TPanel
        Left = 3
        Top = 24
        Width = 605
        Height = 182
        BorderStyle = bsSingle
        TabOrder = 0
        object lbl_id: TLabel
          Left = 404
          Top = 8
          Width = 19
          Height = 13
          Caption = 'ID.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object lbl_data_cad: TLabel
          Left = 476
          Top = 8
          Width = 101
          Height = 13
          Caption = 'DATA CADASTRO.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_nome: TLabel
          Left = 11
          Top = 54
          Width = 96
          Height = 13
          Caption = 'NOME COMPLETO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_rg: TLabel
          Left = 11
          Top = 117
          Width = 19
          Height = 13
          Caption = 'RG:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_cpf: TLabel
          Left = 314
          Top = 117
          Width = 23
          Height = 13
          Caption = 'CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButtonCliente: TSpeedButton
          Left = 17
          Top = 20
          Width = 117
          Height = 28
          Cursor = crHandPoint
          Caption = 'Procurar Clientes'
          Enabled = False
          OnClick = btn_searchClick
        end
        object txt_id: TDBEdit
          Left = 404
          Top = 27
          Width = 66
          Height = 21
          DataField = 'cliente_id'
          DataSource = frm_data_module.DataSource1
          Enabled = False
          TabOrder = 0
          Visible = False
        end
        object txt_data_cad: TDBEdit
          Left = 476
          Top = 27
          Width = 101
          Height = 21
          DataField = 'cliente_data_cad'
          DataSource = frm_data_module.DataSource1
          Enabled = False
          TabOrder = 1
        end
        object txt_nome: TDBEdit
          Left = 11
          Top = 73
          Width = 566
          Height = 21
          DataField = 'cliente_nome'
          DataSource = frm_data_module.DataSource1
          TabOrder = 2
        end
        object txt_rg: TDBEdit
          Left = 11
          Top = 136
          Width = 278
          Height = 21
          DataField = 'cliente_rg'
          DataSource = frm_data_module.DataSource1
          TabOrder = 3
        end
        object txt_cpf: TDBEdit
          Left = 314
          Top = 136
          Width = 263
          Height = 21
          DataField = 'cliente_cpf'
          DataSource = frm_data_module.DataSource1
          TabOrder = 4
        end
        object txt_os_ciente_id: TDBEdit
          Left = 292
          Top = 27
          Width = 66
          Height = 21
          DataField = 'cliente_id'
          DataSource = frm_data_module.DataSource_OS
          TabOrder = 5
          Visible = False
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 409
        Width = 1259
        Height = 60
        Align = alBottom
        BorderStyle = bsSingle
        TabOrder = 1
        object btn_save: TSpeedButton
          Left = 155
          Top = 4
          Width = 70
          Height = 35
          Cursor = crHandPoint
          Caption = 'Salvar'
          OnClick = btn_saveClick
        end
        object btn_insert: TSpeedButton
          Left = 3
          Top = 4
          Width = 70
          Height = 35
          Cursor = crHandPoint
          Caption = 'Adicionar'
          OnClick = btn_insertClick
        end
        object btn_edit: TSpeedButton
          Left = 79
          Top = 4
          Width = 70
          Height = 35
          Cursor = crHandPoint
          Caption = 'Editar'
          OnClick = btn_editClick
        end
        object btn_remove: TSpeedButton
          Left = 231
          Top = 4
          Width = 70
          Height = 35
          Cursor = crHandPoint
          Caption = 'Excluir'
          OnClick = btn_removeClick
        end
        object btn_search: TSpeedButton
          Left = 1005
          Top = 14
          Width = 70
          Height = 35
          Cursor = crHandPoint
          Caption = 'Procurar'
          OnClick = btn_searchClick
        end
        object btn_cancel: TSpeedButton
          Left = 1081
          Top = 14
          Width = 70
          Height = 35
          Cursor = crHandPoint
          Caption = 'Cancelar'
          OnClick = btn_cancelClick
        end
        object btn_close: TSpeedButton
          Left = 1168
          Top = 14
          Width = 70
          Height = 35
          Cursor = crHandPoint
          Caption = 'Sair'
          OnClick = btn_closeClick
        end
      end
      object Panel3: TPanel
        Left = 614
        Top = 23
        Width = 642
        Height = 183
        BorderStyle = bsSingle
        TabOrder = 2
        object Label2: TLabel
          Left = 11
          Top = 10
          Width = 59
          Height = 13
          Caption = 'ENDERE'#199'O:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 423
          Top = 10
          Width = 16
          Height = 13
          Caption = 'N'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 526
          Top = 10
          Width = 23
          Height = 13
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 543
          Top = 55
          Width = 47
          Height = 13
          Caption = 'ESTADO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 277
          Top = 56
          Width = 45
          Height = 13
          Caption = 'CIDADE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 11
          Top = 56
          Width = 47
          Height = 13
          Caption = 'BAIRRO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 11
          Top = 109
          Width = 55
          Height = 13
          Caption = 'TELEFONE:'
          Color = clGradientInactiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label9: TLabel
          Left = 217
          Top = 109
          Width = 52
          Height = 13
          Caption = 'CELULAR:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 423
          Top = 115
          Width = 43
          Height = 13
          Caption = 'E-MAIL:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 11
          Top = 136
          Width = 61
          Height = 13
          Caption = 'SITUA'#199#195'O:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object txt_endereco: TDBEdit
          Left = 11
          Top = 29
          Width = 406
          Height = 21
          DataField = 'cliente_endereco'
          DataSource = frm_data_module.DataSource1
          TabOrder = 0
        end
        object txt_num_residencia: TDBEdit
          Left = 423
          Top = 28
          Width = 97
          Height = 21
          DataField = 'cliente_num_residencia'
          DataSource = frm_data_module.DataSource1
          TabOrder = 1
        end
        object txt_cep: TDBEdit
          Left = 526
          Top = 28
          Width = 97
          Height = 21
          DataField = 'cliente_cep'
          DataSource = frm_data_module.DataSource1
          TabOrder = 2
        end
        object cb_estado: TDBComboBox
          Left = 543
          Top = 74
          Width = 80
          Height = 21
          DataField = 'cliente_estado'
          DataSource = frm_data_module.DataSource1
          Items.Strings = (
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RJ'
            'RN'
            'RS'
            'RO'
            'RR'
            'SC'
            'SP'
            'SE'
            'TO')
          TabOrder = 3
        end
        object txt_cidade: TDBEdit
          Left = 277
          Top = 72
          Width = 260
          Height = 21
          DataField = 'cliente_cidade'
          DataSource = frm_data_module.DataSource1
          TabOrder = 4
        end
        object txt_bairro: TDBEdit
          Left = 11
          Top = 72
          Width = 260
          Height = 21
          DataField = 'cliente_bairro'
          DataSource = frm_data_module.DataSource1
          TabOrder = 5
        end
        object txt_telefone: TDBEdit
          Left = 11
          Top = 128
          Width = 200
          Height = 21
          DataField = 'cliente_telefone'
          DataSource = frm_data_module.DataSource1
          TabOrder = 6
        end
        object txt_celular: TDBEdit
          Left = 217
          Top = 128
          Width = 200
          Height = 21
          DataField = 'cliente_celular'
          DataSource = frm_data_module.DataSource1
          TabOrder = 7
        end
        object txt_email: TDBEdit
          Left = 423
          Top = 128
          Width = 200
          Height = 21
          DataField = 'cliente_email'
          DataSource = frm_data_module.DataSource1
          TabOrder = 8
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 194
        Width = 1259
        Height = 215
        Align = alBottom
        BorderStyle = bsSingle
        ShowCaption = False
        TabOrder = 3
        object Label12: TLabel
          Left = 27
          Top = 7
          Width = 65
          Height = 13
          Caption = 'N'#218'MERO OS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object txt_desc_produco_servico: TLabel
          Left = 106
          Top = 7
          Width = 168
          Height = 13
          Caption = 'Descri'#231#227'o do produto/Servi'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 27
          Top = 58
          Width = 32
          Height = 13
          Caption = 'S'#201'RIE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 143
          Top = 58
          Width = 73
          Height = 13
          Caption = 'PATRIM'#212'NIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 318
          Top = 53
          Width = 23
          Height = 13
          Caption = 'COR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object TLabel
          Left = 967
          Top = 58
          Width = 58
          Height = 13
          Caption = 'SITUA'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 27
          Top = 109
          Width = 122
          Height = 13
          Caption = 'PROBLEMA RELATADO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 343
          Top = 109
          Width = 138
          Height = 13
          Caption = 'PROBLEMA CONSTATADO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 681
          Top = 109
          Width = 74
          Height = 13
          Caption = 'OBSERVA'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object TLabel
          Left = 517
          Top = 58
          Width = 71
          Height = 13
          Caption = 'ACESS'#211'RIOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object TLabel
          Left = 1143
          Top = 7
          Width = 69
          Height = 13
          Caption = 'TOTAL NOTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object txt_num_oc: TDBEdit
          Left = 27
          Top = 26
          Width = 65
          Height = 21
          DataField = 'ordem_servico_id'
          DataSource = frm_data_module.DataSource_OS
          Enabled = False
          ReadOnly = True
          TabOrder = 10
        end
        object txt_descricao_produco_servico: TDBEdit
          Left = 106
          Top = 26
          Width = 1031
          Height = 21
          DataField = 'descricao_servico'
          DataSource = frm_data_module.DataSource_OS
          Enabled = False
          TabOrder = 0
        end
        object txt_serie: TDBEdit
          Left = 27
          Top = 77
          Width = 110
          Height = 21
          DataField = 'serie'
          DataSource = frm_data_module.DataSource_OS
          Enabled = False
          TabOrder = 2
        end
        object txt_cor: TDBEdit
          Left = 318
          Top = 77
          Width = 175
          Height = 21
          DataField = 'cor'
          DataSource = frm_data_module.DataSource_OS
          TabOrder = 4
        end
        object txt_patrimonio: TDBEdit
          Left = 143
          Top = 77
          Width = 169
          Height = 21
          DataField = 'patrimonio'
          DataSource = frm_data_module.DataSource_OS
          Enabled = False
          TabOrder = 3
        end
        object txt_acessorio: TDBEdit
          Left = 517
          Top = 77
          Width = 444
          Height = 21
          DataField = 'acessorios'
          DataSource = frm_data_module.DataSource_OS
          Enabled = False
          TabOrder = 5
        end
        object mm_prob_relat: TDBMemo
          Left = 27
          Top = 128
          Width = 310
          Height = 57
          DataField = 'prob_relatado'
          DataSource = frm_data_module.DataSource_OS
          Enabled = False
          TabOrder = 6
        end
        object mm_prob_constatado: TDBMemo
          Left = 343
          Top = 128
          Width = 310
          Height = 57
          DataField = 'prob_constatado'
          DataSource = frm_data_module.DataSource_OS
          Enabled = False
          TabOrder = 7
        end
        object mm_observacao: TDBMemo
          Left = 681
          Top = 128
          Width = 536
          Height = 57
          DataField = 'observacao'
          DataSource = frm_data_module.DataSource_OS
          Enabled = False
          TabOrder = 8
        end
        object cb_situacao: TDBComboBox
          Left = 967
          Top = 77
          Width = 250
          Height = 21
          DataField = 'situacao'
          DataSource = frm_data_module.DataSource_OS
          Enabled = False
          Items.Strings = (
            'Ativo'
            'Inativo'
            'or'#231'amento')
          TabOrder = 9
        end
        object txt_total_os: TDBEdit
          Left = 1143
          Top = 26
          Width = 74
          Height = 21
          DataField = 'total_os'
          DataSource = frm_data_module.DataSource_OS
          Enabled = False
          TabOrder = 1
          OnExit = txt_total_osExit
        end
      end
    end
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
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 130
        Width = 1230
        Height = 308
        DataSource = frm_data_module.data_source_query_os
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNone
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid1CellClick
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ordem_servico_id'
            Title.Caption = 'COD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao_servico'
            Title.Caption = 'DESCRI'#199#195'O DO SERVI'#199'O'
            Width = 395
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_hora'
            Title.Caption = 'DATA OS'
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'status'
            Title.Caption = 'SITUA'#199#195'O'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cliente_id'
            Title.Caption = 'CODIGO DO CLIENTE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'prob_relatado'
            Title.Caption = 'PROBLEMA RELATADO'
            Width = 121
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'prob_constatado'
            Title.Caption = 'PROBLEMA CONSTATADO'
            Width = 131
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_disponibilidade'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'imagem'
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telefone_contato'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigo'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'serie'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'patrimonio'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cor'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'modelo'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'marca'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'acessorios'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'situacao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'observacao'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'servico_produto_id'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'user_id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'titulo'
            Title.Caption = 'DESCRI'#199#195'O DO PRODUTO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total_os'
            Width = 64
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
        OnClick = btn_printClick
      end
      object btn_query: TButton
        Left = 246
        Top = 52
        Width = 90
        Height = 25
        Caption = 'Consultar'
        TabOrder = 3
        OnClick = btn_queryClick
      end
      object txt_query: TEdit
        Left = 246
        Top = 25
        Width = 371
        Height = 21
        TabOrder = 4
        OnKeyPress = txt_queryKeyPress
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
          'Por Data')
        ParentBackground = False
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 5
        OnClick = rg_options_queryClick
      end
      object DateTimePicker1: TDateTimePicker
        Left = 246
        Top = 25
        Width = 371
        Height = 21
        Date = 43300.000000000000000000
        Time = 0.628348310186993300
        TabOrder = 6
        OnChange = DateTimePicker1Change
      end
      object btn_show_all: TButton
        Left = 246
        Top = 80
        Width = 90
        Height = 25
        Caption = 'Mostrar Tudo'
        TabOrder = 7
        OnClick = btn_show_allClick
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
      object txt_print_client: TEdit
        Left = 647
        Top = 3
        Width = 90
        Height = 21
        Enabled = False
        TabOrder = 9
        Visible = False
      end
    end
  end
end
