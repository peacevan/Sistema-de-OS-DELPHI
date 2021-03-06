object frm_data_module: Tfrm_data_module
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 400
  Width = 726
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=sistema-gerencia-clientes'
      'User_Name=root'
      'Password=root'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 32
    Top = 8
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\sistema de notas\lib\libmySQL.dll'
    Left = 136
    Top = 8
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 256
    Top = 8
  end
  object tbl_clients: TFDTable
    IndexFieldNames = 'cliente_id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = '`sistema-gerencia-clientes`.clientes'
    TableName = '`sistema-gerencia-clientes`.clientes'
    Left = 336
    Top = 8
    object tbl_clientscliente_id: TFDAutoIncField
      FieldName = 'cliente_id'
      Origin = 'cliente_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbl_clientscliente_nome: TStringField
      FieldName = 'cliente_nome'
      Origin = 'cliente_nome'
      Required = True
      Size = 75
    end
    object tbl_clientscliente_rg: TStringField
      FieldName = 'cliente_rg'
      Origin = 'cliente_rg'
      Required = True
      EditMask = '0000000000;0;_'
      Size = 15
    end
    object tbl_clientscliente_cpf: TStringField
      FieldName = 'cliente_cpf'
      Origin = 'cliente_cpf'
      Required = True
      Size = 15
    end
    object tbl_clientscliente_data_nasc: TDateField
      FieldName = 'cliente_data_nasc'
      Origin = 'cliente_data_nasc'
      Visible = False
      EditMask = '!99/99/0000;1;_'
    end
    object tbl_clientscliente_data_cad: TDateField
      FieldName = 'cliente_data_cad'
      Origin = 'cliente_data_cad'
      Required = True
    end
    object tbl_clientscliente_endereco: TStringField
      FieldName = 'cliente_endereco'
      Origin = 'cliente_endereco'
      Required = True
      Size = 100
    end
    object tbl_clientscliente_num_residencia: TStringField
      FieldName = 'cliente_num_residencia'
      Origin = 'cliente_num_residencia'
      Required = True
      Size = 10
    end
    object tbl_clientscliente_cep: TStringField
      FieldName = 'cliente_cep'
      Origin = 'cliente_cep'
      Required = True
      EditMask = '00000\-999;0;_'
    end
    object tbl_clientscliente_bairro: TStringField
      FieldName = 'cliente_bairro'
      Origin = 'cliente_bairro'
      Required = True
      Size = 100
    end
    object tbl_clientscliente_cidade: TStringField
      FieldName = 'cliente_cidade'
      Origin = 'cliente_cidade'
      Required = True
      Size = 100
    end
    object tbl_clientscliente_estado: TStringField
      FieldName = 'cliente_estado'
      Origin = 'cliente_estado'
      Required = True
      Size = 30
    end
    object tbl_clientscliente_telefone: TStringField
      FieldName = 'cliente_telefone'
      Origin = 'cliente_telefone'
      Required = True
      EditMask = '!\(99\) 0000\-0000;0;_'
      Size = 15
    end
    object tbl_clientscliente_celular: TStringField
      FieldName = 'cliente_celular'
      Origin = 'cliente_celular'
      Required = True
      EditMask = '!\(99\) 00000\-0000;0;_'
      Size = 15
    end
    object tbl_clientscliente_email: TStringField
      FieldName = 'cliente_email'
      Origin = 'cliente_email'
      Required = True
      Size = 100
    end
    object tbl_clientscliente_situacao: TStringField
      FieldName = 'cliente_situacao'
      Origin = 'cliente_situacao'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = tbl_clients
    Left = 424
    Top = 8
  end
  object sql_query_clients: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from clientes')
    Left = 136
    Top = 112
    object sql_query_clientscliente_id: TFDAutoIncField
      FieldName = 'cliente_id'
      Origin = 'cliente_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sql_query_clientscliente_nome: TStringField
      FieldName = 'cliente_nome'
      Origin = 'cliente_nome'
      Required = True
      Size = 75
    end
    object sql_query_clientscliente_endereco: TStringField
      FieldName = 'cliente_endereco'
      Origin = 'cliente_endereco'
      Required = True
      Size = 100
    end
    object sql_query_clientscliente_num_residencia: TStringField
      FieldName = 'cliente_num_residencia'
      Origin = 'cliente_num_residencia'
      Required = True
      Size = 10
    end
    object sql_query_clientscliente_cep: TStringField
      FieldName = 'cliente_cep'
      Origin = 'cliente_cep'
      Required = True
    end
    object sql_query_clientscliente_bairro: TStringField
      FieldName = 'cliente_bairro'
      Origin = 'cliente_bairro'
      Required = True
      Size = 100
    end
    object sql_query_clientscliente_cidade: TStringField
      FieldName = 'cliente_cidade'
      Origin = 'cliente_cidade'
      Required = True
      Size = 100
    end
    object sql_query_clientscliente_estado: TStringField
      FieldName = 'cliente_estado'
      Origin = 'cliente_estado'
      Required = True
      Size = 30
    end
    object sql_query_clientscliente_rg: TStringField
      FieldName = 'cliente_rg'
      Origin = 'cliente_rg'
      Required = True
      Size = 15
    end
    object sql_query_clientscliente_cpf: TStringField
      FieldName = 'cliente_cpf'
      Origin = 'cliente_cpf'
      Required = True
      Size = 15
    end
    object sql_query_clientscliente_telefone: TStringField
      FieldName = 'cliente_telefone'
      Origin = 'cliente_telefone'
      Required = True
      Size = 15
    end
    object sql_query_clientscliente_celular: TStringField
      FieldName = 'cliente_celular'
      Origin = 'cliente_celular'
      Required = True
      Size = 15
    end
    object sql_query_clientscliente_email: TStringField
      FieldName = 'cliente_email'
      Origin = 'cliente_email'
      Required = True
      Size = 100
    end
    object sql_query_clientscliente_data_nasc: TDateField
      FieldName = 'cliente_data_nasc'
      Origin = 'cliente_data_nasc'
      Required = True
    end
    object sql_query_clientscliente_data_cad: TDateField
      FieldName = 'cliente_data_cad'
      Origin = 'cliente_data_cad'
      Required = True
    end
    object sql_query_clientscliente_situacao: TStringField
      FieldName = 'cliente_situacao'
      Origin = 'cliente_situacao'
      Required = True
    end
  end
  object data_source_query_clients: TDataSource
    DataSet = sql_query_clients
    Left = 256
    Top = 112
  end
  object sql_print_clients: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      ''
      'select * from clientes')
    Left = 120
    Top = 200
    object sql_print_clientscliente_id: TFDAutoIncField
      FieldName = 'cliente_id'
      Origin = 'cliente_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sql_print_clientscliente_nome: TStringField
      FieldName = 'cliente_nome'
      Origin = 'cliente_nome'
      Required = True
      Size = 75
    end
    object sql_print_clientscliente_endereco: TStringField
      FieldName = 'cliente_endereco'
      Origin = 'cliente_endereco'
      Required = True
      Size = 50
    end
    object sql_print_clientscliente_num_residencia: TStringField
      FieldName = 'cliente_num_residencia'
      Origin = 'cliente_num_residencia'
      Required = True
      Size = 8
    end
    object sql_print_clientscliente_cep: TStringField
      FieldName = 'cliente_cep'
      Origin = 'cliente_cep'
      Required = True
      Size = 8
    end
    object sql_print_clientscliente_bairro: TStringField
      FieldName = 'cliente_bairro'
      Origin = 'cliente_bairro'
      Required = True
      Size = 45
    end
    object sql_print_clientscliente_cidade: TStringField
      FieldName = 'cliente_cidade'
      Origin = 'cliente_cidade'
      Required = True
      Size = 50
    end
    object sql_print_clientscliente_estado: TStringField
      FieldName = 'cliente_estado'
      Origin = 'cliente_estado'
      Required = True
      Size = 30
    end
    object sql_print_clientscliente_rg: TStringField
      FieldName = 'cliente_rg'
      Origin = 'cliente_rg'
      Required = True
      Size = 11
    end
    object sql_print_clientscliente_cpf: TStringField
      FieldName = 'cliente_cpf'
      Origin = 'cliente_cpf'
      Required = True
      Size = 15
    end
    object sql_print_clientscliente_telefone: TStringField
      FieldName = 'cliente_telefone'
      Origin = 'cliente_telefone'
      Required = True
      Size = 15
    end
    object sql_print_clientscliente_celular: TStringField
      FieldName = 'cliente_celular'
      Origin = 'cliente_celular'
      Required = True
      Size = 10
    end
    object sql_print_clientscliente_email: TStringField
      FieldName = 'cliente_email'
      Origin = 'cliente_email'
      Required = True
      Size = 45
    end
    object sql_print_clientscliente_data_nasc: TDateField
      FieldName = 'cliente_data_nasc'
      Origin = 'cliente_data_nasc'
      Required = True
    end
    object sql_print_clientscliente_data_cad: TDateField
      FieldName = 'cliente_data_cad'
      Origin = 'cliente_data_cad'
      Required = True
    end
    object sql_print_clientscliente_situacao: TStringField
      FieldName = 'cliente_situacao'
      Origin = 'cliente_situacao'
      Required = True
      Size = 8
    end
  end
  object report_client: TfrxReport
    Version = '6.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43311.707672256900000000
    ReportOptions.LastChange = 43321.557124664350000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 208
    Top = 200
    Datasets = <
      item
        DataSet = data_set_report_client
        DataSetName = 'data_set_report_client'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 94.102350000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 18.897650000000000000
          Width = 264.567100000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Color = clNone
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Cliente')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 56.692950000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Sistema de Cadastro de Clientes')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 13421772
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'jamesschulzm.github.io')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 262.228510000000000000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        DataSet = data_set_report_client
        DataSetName = 'data_set_report_client'
        RowCount = 0
        object data_set_report_clientcliente_id: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 109.606370000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_data_nasc'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_data_nasc"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 15.118120000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo:')
          ParentFont = False
        end
        object data_set_report_clientcliente_nome: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 52.913420000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_nome'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_nome"]')
          ParentFont = False
        end
        object data_set_report_clientcliente_rg: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 71.811070000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_rg'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_rg"]')
          ParentFont = False
        end
        object data_set_report_clientcliente_cpf: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 90.708720000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_cpf"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'NOME:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'RG:')
          ParentFont = False
        end
        object data_set_report_clientcliente_celular: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 128.504020000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_celular'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_celular"]')
          ParentFont = False
        end
        object data_set_report_clientcliente_telefone: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 147.401670000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_telefone'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_telefone"]')
          ParentFont = False
        end
        object data_set_report_clientcliente_email: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 166.299320000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_email'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_email"]')
          ParentFont = False
        end
        object data_set_report_clientcliente_endereco: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 52.913420000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_endereco'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_endereco"]')
          ParentFont = False
        end
        object data_set_report_clientcliente_num_residencia: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 71.811070000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_num_residencia'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_num_residencia"]')
          ParentFont = False
        end
        object data_set_report_clientcliente_cep: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 90.708720000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_cep'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_cep"]')
          ParentFont = False
        end
        object data_set_report_clientcliente_bairro: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 109.606370000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_bairro'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_bairro"]')
          ParentFont = False
        end
        object data_set_report_clientcliente_cidade: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 128.504020000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_cidade'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_cidade"]')
          ParentFont = False
        end
        object data_set_report_clientcliente_estado: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 147.401670000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_estado'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_estado"]')
          ParentFont = False
        end
        object data_set_report_clientcliente_data_cad: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 215.433210000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_data_cad'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_data_cad"]')
          ParentFont = False
        end
        object data_set_report_clientcliente_situacao: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 215.433210000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_situacao'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_situacao"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 90.708720000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CPF:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 128.504020000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CELULAR')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 147.401670000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TELEFONE:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 166.299320000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'E-MAIL:')
          ParentFont = False
        end
        object data_set_report_clientcliente_id1: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 15.118120000000000000
          Width = 585.827150000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_id'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_id"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186':')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 90.708720000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 109.606370000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'BAIRRO:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 128.504020000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CIDADE')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 147.401670000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ESTADO:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 109.606370000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DATA NASC.:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 34.015770000000000000
          Height = 170.078850000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 34.015770000000000000
          Height = 170.078850000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 680.315400000000000000
          Top = 34.015770000000000000
          Height = 170.078850000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 215.433210000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DATA CAD.:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 215.433210000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'SITUA'#199#195'O:')
          ParentFont = False
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 204.094620000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 680.315400000000000000
          Top = 204.094620000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 241.889920000000000000
          Width = 642.520100000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 680.315400000000000000
          Top = 204.094620000000000000
          Width = -642.520100000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 34.015770000000000000
          Width = 642.520100000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
  object data_set_report_client: TfrxDBDataset
    UserName = 'data_set_report_client'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cliente_id=cliente_id'
      'cliente_nome=cliente_nome'
      'cliente_endereco=cliente_endereco'
      'cliente_num_residencia=cliente_num_residencia'
      'cliente_cep=cliente_cep'
      'cliente_bairro=cliente_bairro'
      'cliente_cidade=cliente_cidade'
      'cliente_estado=cliente_estado'
      'cliente_rg=cliente_rg'
      'cliente_cpf=cliente_cpf'
      'cliente_telefone=cliente_telefone'
      'cliente_celular=cliente_celular'
      'cliente_email=cliente_email'
      'cliente_data_nasc=cliente_data_nasc'
      'cliente_data_cad=cliente_data_cad'
      'cliente_situacao=cliente_situacao')
    DataSet = sql_print_clients
    BCDToCurrency = False
    Left = 296
    Top = 200
  end
  object tbl_OS: TFDTable
    IndexFieldNames = 'ordem_servico_id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = '`sistema-gerencia-clientes`.ordem_servico'
    TableName = '`sistema-gerencia-clientes`.ordem_servico'
    Left = 584
    Top = 296
    object tbl_OSordem_servico_id: TFDAutoIncField
      FieldName = 'ordem_servico_id'
      Origin = 'ordem_servico_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbl_OStitulo: TStringField
      FieldName = 'titulo'
      Origin = 'titulo'
      Size = 45
    end
    object tbl_OSprob_relatado: TStringField
      FieldName = 'prob_relatado'
      Origin = 'prob_relatado'
      Size = 255
    end
    object tbl_OSprob_constatado: TStringField
      FieldName = 'prob_constatado'
      Origin = 'prob_constatado'
      Size = 255
    end
    object tbl_OSdata_disponibilidade: TStringField
      FieldName = 'data_disponibilidade'
      Origin = 'data_disponibilidade'
      Size = 50
    end
    object tbl_OSdata_hora: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'data_hora'
      Origin = 'data_hora'
      Size = 50
    end
    object tbl_OSimagem: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'imagem'
      Origin = 'imagem'
      Size = 50
    end
    object tbl_OStelefone_contato: TStringField
      FieldName = 'telefone_contato'
      Origin = 'telefone_contato'
      Size = 50
    end
    object tbl_OScodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigo'
      Origin = 'codigo'
      Size = 50
    end
    object tbl_OSserie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'serie'
      Origin = 'serie'
      Size = 50
    end
    object tbl_OSpatrimonio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'patrimonio'
      Origin = 'patrimonio'
      Size = 50
    end
    object tbl_OScor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cor'
      Origin = 'cor'
      Size = 50
    end
    object tbl_OSmodelo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'modelo'
      Origin = 'modelo'
      Size = 50
    end
    object tbl_OSmarca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'marca'
      Origin = 'marca'
      Size = 50
    end
    object tbl_OSstatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = '`status`'
      Size = 50
    end
    object tbl_OSacessorios: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'acessorios'
      Origin = 'acessorios'
      Size = 50
    end
    object tbl_OSsituacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'situacao'
      Origin = 'situacao'
      Size = 10
    end
    object tbl_OSobservacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'observacao'
      Origin = 'observacao'
      Size = 50
    end
    object tbl_OSservico_produto_id: TIntegerField
      FieldName = 'servico_produto_id'
      Origin = 'servico_produto_id'
    end
    object tbl_OSuser_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'user_id'
      Origin = 'user_id'
    end
    object tbl_OScliente_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cliente_id'
      Origin = 'cliente_id'
    end
    object tbl_OSdescricao_servico: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao_servico'
      Origin = 'descricao_servico'
      Size = 255
    end
    object tbl_OStotal_os: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'total_os'
      Origin = 'total_os'
      Size = 50
    end
  end
  object DataSource_OS: TDataSource
    DataSet = tbl_OS
    Left = 656
    Top = 288
  end
  object sql_print_os: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from ordem_servico')
    Left = 64
    Top = 304
    object sql_print_osordem_servico_id: TFDAutoIncField
      FieldName = 'ordem_servico_id'
      ReadOnly = True
    end
    object sql_print_osservico_produto_id: TIntegerField
      FieldName = 'servico_produto_id'
      Required = True
    end
    object sql_print_osuser_id: TIntegerField
      FieldName = 'user_id'
    end
    object sql_print_oscliente_id: TIntegerField
      FieldName = 'cliente_id'
    end
    object sql_print_ostitulo: TStringField
      FieldName = 'titulo'
      Size = 45
    end
    object sql_print_osdescricao_servico: TStringField
      FieldName = 'descricao_servico'
      Size = 255
    end
    object sql_print_osprob_relatado: TStringField
      FieldName = 'prob_relatado'
      Size = 255
    end
    object sql_print_osprob_constatado: TStringField
      FieldName = 'prob_constatado'
      Size = 255
    end
    object sql_print_osdata_disponibilidade: TStringField
      FieldName = 'data_disponibilidade'
      Size = 50
    end
    object sql_print_osimagem: TStringField
      FieldName = 'imagem'
      Size = 50
    end
    object sql_print_osdata_hora: TStringField
      FieldName = 'data_hora'
      Size = 50
    end
    object sql_print_ostelefone_contato: TStringField
      FieldName = 'telefone_contato'
      Size = 50
    end
    object sql_print_oscodigo: TStringField
      FieldName = 'codigo'
      Size = 50
    end
    object sql_print_osserie: TStringField
      FieldName = 'serie'
      Size = 50
    end
    object sql_print_ospatrimonio: TStringField
      FieldName = 'patrimonio'
      Size = 50
    end
    object sql_print_oscor: TStringField
      FieldName = 'cor'
      Size = 50
    end
    object sql_print_osmodelo: TStringField
      FieldName = 'modelo'
      Size = 50
    end
    object sql_print_osmarca: TStringField
      FieldName = 'marca'
      Size = 50
    end
    object sql_print_osstatus: TStringField
      FieldName = 'status'
      Size = 50
    end
    object sql_print_osacessorios: TStringField
      FieldName = 'acessorios'
      Size = 50
    end
    object sql_print_ossituacao: TStringField
      FieldName = 'situacao'
      Size = 10
    end
    object sql_print_osobservacao: TStringField
      FieldName = 'observacao'
      Size = 50
    end
    object sql_print_ostotal_os: TStringField
      FieldName = 'total_os'
      Size = 50
    end
  end
  object report_OS: TfrxReport
    Version = '6.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43311.707672256900000000
    ReportOptions.LastChange = 43940.379175659720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 152
    Top = 312
    Datasets = <
      item
        DataSet = data_set_report_client
        DataSetName = 'data_set_report_client'
      end
      item
        DataSet = data_set_report_os
        DataSetName = 'data_set_report_os'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 332.598640000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        AllowSplit = True
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 124.724490000000000000
          Width = 449.764070000000000000
          Height = 75.590600000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Color = clNone
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Ordem de Servi'#231'o N'#186'.: ')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 222.992125980000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Top = 11.338590000000000000
          Width = 453.543600000000000000
          Height = 98.267780000000000000
          Visible = False
          Frame.Typ = []
          Memo.UTF8W = (
            'Insc Estadual: XXXXXXXXXX                CNPJ: XXXXXXXXXXXXXXXXX'
            'Rua  das Ortencia   N'#186'. 123-B  Cabula'
            '41100-420 -SALVADOR-BA'
            'Fone(71)9875-0000'
            'email@email.com')
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 166.299320000000000000
          Width = 631.181510000000000000
          Height = 56.692950000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              'N'#227'o  '#233' documento fiscal, N'#227'o '#233' v'#225'lido como recibo e como garanti' +
              'a de mercadoria'
            
              '     N'#227'o comprova pagamento '#233' vedada a autentica'#231#227'o desse docume' +
              'nto.')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 241.889763780000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endereco')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 260.787401570000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Bairro')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 283.464566930000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 306.141930000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Atendente')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 366.614173230000000000
          Top = 222.992125980000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF/CNPJ')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Top = 222.992125980000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'IE/RG')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 366.614173228346000000
          Top = 260.787401570000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Contato')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 366.614173228346000000
          Top = 283.464750000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fone')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Top = 283.464566930000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Celular')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 366.614410000000000000
          Top = 306.141930000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Data/Hora')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Top = 306.141930000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Status')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 222.992125980000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_nome'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_nome"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 449.764070000000000000
          Top = 222.992125980000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_cpf'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_cpf"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 612.283860000000000000
          Top = 222.992125980000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_rg'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_rg"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 241.889763780000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_endereco'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_endereco"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 260.787401570000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_bairro'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_bairro"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 283.464566930000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_cidade'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_cidade"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 260.787401570000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_email'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_email"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 283.464566930000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_telefone'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_telefone"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 283.464566930000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_celular'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_celular"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 124.724490000000000000
          Width = 139.842610000000000000
          Height = 37.795300000000000000
          DataField = 'ordem_servico_id'
          DataSet = data_set_report_os
          DataSetName = 'data_set_report_os'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Color = clNone
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_os."ordem_servico_id"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 325.039291970000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 306.141930000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'data_hora'
          DataSet = data_set_report_os
          DataSetName = 'data_set_report_os'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_os."data_hora"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 306.141930000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_situacao'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_situacao"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 306.141930000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Administrador')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 124.724490000000000000
          Width = 200.315090000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[YearOf(Now)] / ')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 11.338590000000000000
          Width = 196.535560000000000000
          Height = 128.504020000000000000
          Frame.Typ = []
          Picture.Data = {
            0A544A504547496D6167653AAA0000FFD8FFE000104A46494600010101006000
            600000FFE110E84578696600004D4D002A000000080005011200030000000100
            010000013B0002000000060000085687690004000000010000085C9C9D000100
            00000C000010D4EA1C00070000080C0000004A000000001CEA00000008000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000416D61646F0000059003000200000014000010AA900400020000001400
            0010BE929100020000000331300000929200020000000331300000EA1C000700
            00080C0000089E000000001CEA00000008000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000323032303A30343A31
            392030383A34383A303700323032303A30343A31392030383A34383A30370000
            0041006D00610064006F000000FFE10B18687474703A2F2F6E732E61646F6265
            2E636F6D2F7861702F312E302F003C3F787061636B657420626567696E3D27EF
            BBBF272069643D2757354D304D7043656869487A7265537A4E54637A6B633964
            273F3E0D0A3C783A786D706D65746120786D6C6E733A783D2261646F62653A6E
            733A6D6574612F223E3C7264663A52444620786D6C6E733A7264663D22687474
            703A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D7379
            6E7461782D6E7323223E3C7264663A4465736372697074696F6E207264663A61
            626F75743D22757569643A66616635626464352D626133642D313164612D6164
            33312D6433336437353138326631622220786D6C6E733A64633D22687474703A
            2F2F7075726C2E6F72672F64632F656C656D656E74732F312E312F222F3E3C72
            64663A4465736372697074696F6E207264663A61626F75743D22757569643A66
            616635626464352D626133642D313164612D616433312D643333643735313832
            6631622220786D6C6E733A786D703D22687474703A2F2F6E732E61646F62652E
            636F6D2F7861702F312E302F223E3C786D703A437265617465446174653E3230
            32302D30342D31395430383A34383A30372E3039393C2F786D703A4372656174
            65446174653E3C2F7264663A4465736372697074696F6E3E3C7264663A446573
            6372697074696F6E207264663A61626F75743D22757569643A66616635626464
            352D626133642D313164612D616433312D643333643735313832663162222078
            6D6C6E733A64633D22687474703A2F2F7075726C2E6F72672F64632F656C656D
            656E74732F312E312F223E3C64633A63726561746F723E3C7264663A53657120
            786D6C6E733A7264663D22687474703A2F2F7777772E77332E6F72672F313939
            392F30322F32322D7264662D73796E7461782D6E7323223E3C7264663A6C693E
            416D61646F3C2F7264663A6C693E3C2F7264663A5365713E0D0A0909093C2F64
            633A63726561746F723E3C2F7264663A4465736372697074696F6E3E3C2F7264
            663A5244463E3C2F783A786D706D6574613E0D0A202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020200A20202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020202020202020200A2020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20200A2020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020200A202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020200A20202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020200A2020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020200A202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020200A20202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            0A20202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020200A2020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020200A202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020200A20202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020200A2020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020200A202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020200A20
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020200A20202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020200A2020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020200A202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020200A20202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020200A2020202020202020
            20202020202020202020202020202020202020203C3F787061636B657420656E
            643D2777273F3EFFDB0043000201010201010202020202020202030503030303
            030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C
            0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C
            0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108016202B7030122000211
            01031101FFC4001F000001050101010101010000000000000000010203040506
            0708090A0BFFC400B5100002010303020403050504040000017D010203000411
            05122131410613516107227114328191A1082342B1C11552D1F0243362728209
            0A161718191A25262728292A3435363738393A434445464748494A5354555657
            58595A636465666768696A737475767778797A838485868788898A9293949596
            9798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2
            D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F
            0100030101010101010101010000000000000102030405060708090A0BFFC400
            B511000201020404030407050404000102770001020311040521310612415107
            61711322328108144291A1B1C109233352F0156272D10A162434E125F1171819
            1A262728292A35363738393A434445464748494A535455565758595A63646566
            6768696A737475767778797A82838485868788898A92939495969798999AA2A3
            A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8
            D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C0301000211031100
            3F00FDFCA28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A334536438238A1B
            B6E03A8A6139A466DB52EE83D4928A844A09E0FE942CB96A39823AEA89B34557
            F34EEFBB4FF331EF531A8A5B0475D8968CD57F354372547E34E0E24355CD7DBF
            116AF626A339A60E94B1F535431D451450014514500145145001451450014514
            5001451450014514500145145001451450014514500145145001451450014514
            5001451450014514500145145001451450014514500145145001451450014514
            5001451450014514500145145001451450014514500145145001451450014514
            5001451450014514500145145001451450014514500145145001451450014514
            679A0028A69C0A476A9E6403E9931C639AADA96AB6FA75B3CF732470C30A9677
            91B6C68A3A96278007A9AFCF4FDBFBFE0E0AF86FFB334D79A0F80D63F881E2E8
            77C45A098FF66DAB71F7A65FF58413F753078FBC33CFA180CB7158CA8A9E1A1C
            CCE3C666187C2C79EB4AC7DDFF00123E27E81F08BC2D75AEF89357B0D1B49B14
            2F3DD5E4E218E303DDB827DBAFA57E507FC1433FE0E48B5B1175E1BF8136EB79
            7058C52F892F6026155E84C11B7DE6073866E3A63BD7E747C77FDABFE377FC14
            C3E2D476BAAEA1AE78A350BD9FFD0742D36065B688646152DE3E38E3E7396E3E
            666E31EB1A1FEC4DF0B7F626B2875DFDA2BC48756F122AFDA21F877E1DBB8E6B
            B91FAA8BB987CB076C83F375F4AFD232DE11C1605AA998FEF2A748A3E271DC45
            89C526B0EB961DCECFFE09F7FB697ED99F1C7E37C7A8F83FC45AC78AACE19C3E
            AD26B088BA4A47925FCC95B1147F28E8AC1CE3E5CE0D7DF3FB66FF00C1C0FF00
            0FFF0065CD0D744D0D6CBE207C408ED825DC7A4C85B4BB39F037A998E77807B2
            9278E71C67F257F69CFF00829D78DBE3DE88BE0EF0AD958FC35F8790612DBC39
            E1C56B68D80E079B28FDECCF81CB0F94926B82F85BFB2C6ADE3378EFB5A6934D
            B290EF3BF025941F51FD4F2735F4D4B83966B5635B114A318AD9415AFF00E267
            CB665C6F0C9E83752B7CDE9F72D5BFC0F75D5BFE0BD3FB45EA9F1B23F17C5E2C
            B7B5B7824F97458ADA31A6F93FF3CCAB77E31B9B9F4EF5FA2DFB26FF00C1C23E
            14FDA67C1171E1FD63FB2FE1EFC4D9AD5934E7D59D8E87717041085A51CA0271
            C371CF1DEBF37CFECEDE0F1E19363FD8F6ECA463CE1FEB81F515E29F147F650D
            57C2664BCD19DB53B1CE447D6641EE3DBD7B57B99D787785AD4A3CB4ACE36B59
            1F1FC3FE3152C5D6952A9371FF001697F46AFF0089F43FEDA9FB4CFED87F003E
            35B6ADE36F17F8A3497B893ED16779A55C93A2DC20208FB3B45FBA75C15E1B9E
            7DEBEB7FF827A7FC1C8B63A9AD8F867E39C2B6B744AC49E26B284F90CDC81F68
            45FBADD3E61C75CD7E787ECE9FF051DF1BFC08D05FC1FE23B7B5F881F0FEE0F9
            575E19F11A8B9B70A339F265E2485C678642082075E2BBCD6BF63FF85FFB68DA
            CBACFECFFE20FEC7F14480CB37C3CF11DCAC572A7AE2CE67C8B8FE2C2962E7E5
            CE38AF99CC725C354A6B0F8EA4928AB2947A7AAE87E8784CD2BF32AD86A9CD7E
            8FFAD4FE8C7E1D7C49D07E2B785EDB5BF0DEAFA7EB3A5DE2868AEACE71345277
            E0AF19F51D7D6BA18DF1DF35FCB47C05FDAEFE37FF00C1353E2ABD9E937FAF78
            62EEC66DB7DA16A76EC2D66504E55E193819C9E461B9F95979CFEC37EC07FF00
            07047C35FDA6E6B5D07C7620F87DE2E995625373295D36E98E7EE4ADFEAC9E3E
            57C93B87CC71C7E799D706E2B05FBCC37BF4FBADD1F6196F1451ADFBBC47BB2F
            EBA9FA2A1B34552D3750B7D4AD63B8B69239A1951591E36DD1BA9E8548E083EA
            2AD44D926BE3A5249F2BDCFA84D349A1F4514018AA00A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A08E
            68A86F1B6AE7380064F38A35E8294ACAEC598E016E7A718AF97BF6EBFF0082AF
            FC27FD843489A1F10EB09AB7899632D0685A6CB1C974EDC7FACE71129C8F99BD
            F1D0D7E76FFC1533FE0E05F136A1E28D73E1EFC1E8EE3C3B6BA7DC4BA7DEEBD3
            026F2E245622448507DC03B31EB9F6AF87FF00656FD827E317FC145FC7D34DE1
            FD3F50D52DAE25DF7DAFEA6F20B2425803E649D1A4EA76FB57DEE53C171543EB
            B9A4B921DBBE97DCF91C7713394FEAF818F34F6BF6F91DD7EDDFFF000598F8B5
            FB71DFDC699FDA0FE15F07DC49B62D174A908322F18F326FBF21F503839E2B0B
            E0F7FC1382F53C1D6FE3CF8D1E208FE14F80E6FDEC035050DAB6B43A84B5B3FF
            0058C5B821FA0C827AD7B9FED39E04F03FFC1133C41A7785749F0F5AF8FF00E3
            45F6991EA6FE26D6E153A6E8FBD9D17ECD69D0B8D8D876FEE8F7AF8C7C67E33F
            889FB5F7C409B58D7750D5BC4DAB5D1DAF7170F98A21EE47CA83D00F4AFD1F27
            C3FB4A518E5B0E4835BA576FD36FEBA1F0D99632387E6AD984D73A7D5D923DCB
            E207FC147749F837E12BAF05FECE7E1CFF00840744990C179E26BB22E3C45AD7
            667794FCB16EC91B579F5E82BC0FC0FF0009FC51F1AF5792FA46B878E77DF35F
            EA0ED264F39C93C31FA74FC6BD77E15FEC91A7F85D63BAD79FFB46E9304448DF
            B943F5FE2ED5EC7696D1D8C0B1470AC71A8C2855C281EDEB5F7194F0BD1A6B9E
            A75DEFBF97E27E2FC51E292F7A8655EF79F45FE7E4707F0BFF00678D0FE1CAAC
            BB1AFF0050C0669E51F74FFB2BD8577C9B576A90ADF3679F940EBDE9E62C0CED
            F4C0C7079E87FC3BD7BCFC45FF0082767C41F05FC38D33C51A6E9E7C45A3EA7A
            7C17CC6C1374B0892357C183D06EEB5F478ACD3018074E8D69C60E5B745F7F53
            F27860F36CEDD4C5A8CEB72FC4D5DDBD7B791E57A7FC11F18EA9E135D72D7C2F
            AF4FA2F945CDF0D3E730041D5BCDE9C7F5AE63878D70BB63EDF2E437A1CF5E7D
            EBF577E1668C6C3FE093D7567246AB32F85B53C865CE0FEFFE5FAFB57C27F06B
            FE09F9F10BE32786EE3596D2E4D17408206B83737CBE5B4A1412362FF10E3F0E
            3D6BE4723E3AA38A58978D92A6A9C9C63AFC5DADEA7D8712786789C1C709F505
            3A92AD05395D7C1A26F55DAFD4F953E297C03D0FE23C3249242D67A8374B8878
            63F55FE21FCABE78F1E7C17F127C1CD4BED9179E2185C18AFECA468F6E3DC70A
            7A75EB8F6AFB33FB366D47528ECA087CE92693CA091AF272594903B74AA57B14
            5A82E268D5FCE077ACAB8CFA835F538AC0D1C4E91B2764F4F357D51E3E43C659
            A655CAA4DCE176ADBECBA33CAFC01FF0508D33E28F85ADBC1BF1FF00C38BF10B
            41854416DAF5B116DE20D20740629C6565C606637521B68E9DE87C57FF008277
            5F5E783AE3C79F0675E8FE2A781EDFF7B3B69EA06ADA3A1E47DA6D389148C365
            8285F932BDF0EF8ADFB27E9BE2469AF345636178E493085CC721AF27F06F8BBE
            227EC8BF10E1D5F42D4B52F0DEAD64DFBB9A03B15C77EBF2B03E87AE6BE23199
            0D6C22F6B85BA4F7BEB17FE47EF7C3DC6F9666B4A34EF66D2BA7A34FF53DFBF6
            0CFF0082CD7C5AFD87EFEDB4B935093C5DE0F864D8FA3EA721668D79CF952FDF
            43F5E06057EDB7EC25FF000555F857FB76E911C3E1DD663D2FC48101B8D07519
            A38AF633CE7629E245E0FCCBED9ED5F93FFB397843E1B7FC169B56B8F0DEB1A2
            43F0E7E385B593DF47AE6896BFF12BD7760D8C6E6D87CA8FF32E5C75DE7D057C
            D3FB547EC21F193FE09C7E3CB593C41A5DE696B1CEA34ED774D766B29581F97C
            B947DD9303EE9F5AF80CCB23CBF32C4BC335ECABD93D7ADDF4EE7E9781CD71B8
            2A7CFF001D2BDBD34F99FD4ADBBEE193E8300F0C07BD4B9AFC5DFF008249FF00
            C179BC55E24F889E1FF85FF15A293C40DAE5C2D8695AF4208BA8DDB8449D0FDF
            1F29CB0E9F8D7ECE5A1F94FE639ED5F97E71936272EC47B1AEBD1F73EE32CCD2
            8E3A97B4A3F35D89A8A28AF2CF4828A28A0028A28A0028A28A0028A28A0028A2
            8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
            8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
            8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
            8A0028A28A0028A28A0028A28A0028A28A002A3B91F267DAA4A6C9F72807AAB1
            FC8E7ED2AC57F683F1D7DEC7F6E5EE71FF005D9EBFA19FF820E5BC69FF0004C7
            F878C91AAB325C92477FF487AFE793F698FF009386F1C7FD876F7FF473D7F43B
            FF000420FF0094617C3DFF00B79FFD297AFD8F8F24D64F452FEEFF00E927E6DC
            2A93CC2A2F37F9D8FCC1FF00839BD4AFFC14134BC7FD09F64C3EA26B9FF1AF36
            F803A2C1A27C29D145BA6DF3EDD657F7624E6BD2BFE0E6D1FF001B0BD27FEC51
            B11FF91AE6B86F8483C8F863A22FFD38C27FF1C15FA3F87692CBA8CB6F757E87
            E1BE395771938749499E93F09FE126B9F1CFC7B69E1BF0FC11CFA85EE70B236D
            4550324B1F4E2BAED0FE06789FE137C7EF0BE8FE2BD1AF74DB89B55B752275FD
            DDC279A06437F121EC2A5FD90FF6A2BDFD953E252F882D74DB5D563BA88DA5DC
            322E24309219B63FF09F9471DF03D2BF57BE097C5AF05FED99F0EACFC416FA7A
            DE476F3AC861D42DF0F6730F987FDF3D8F7AE5E36E2ACD329AF394A87361EA46
            CA5D6ED58F98F0DF81F2ACFF000EA10AEA38AA72527169F2B8A69FCEEB43E35F
            F82BDFECD3E10F85BE1FD0BC4FE1ED360D2F51D52FFECB74902F9704E3CB2FBB
            CB1C6F1B4F3EE6BA4FD8E7FE0ACFA15A785349F0B78FAC4E969A7411D8C1A8C4
            BBA0744508BE60FE16E3F1FC2BD4BFE0AC3FB3FF00883E387C0BD39BC376B25F
            5FE83A8FDADEDD399248CC4E85947AA92A47D0D7CDBFB39FEC9575FB60FECBE7
            C2B71A40F09F893C1BAA3797A8DCD86D6BB89CB33C2C7BB06041FF007457C660
            3119563F866947376E5284DA6EFAC13D9BEAD5ECAC7E859A6073AC9F8BEABC86
            1C91A94E325151F76A3566D5B6DAEEEDF43F47E1F13E8F7BE0AFED686E6CDB44
            9ADCDD0B827F721319248F4C75AF8ABF6C3FF82B0E8BA6E83A8785FE1DDA45AB
            CF710C96F2EA32FC96880A907CB1FC7C67E9F8D7D3FE17F800FA3FECA63E1BBE
            A0B2CCFA1CDA52DE85F9774913A6F03D46E35F1D41FF0004EFD4BF657F83FE33
            D424D3A2F1D78B75C85B44D16DACADBCC58A39061A523B3EDDC49F6AF92E15A5
            922C4D5A98F9B9F24972453B736BBBF45A9F7DC758AE28960A8D2CBE0A0A74DB
            A924AFCAECAF15EB6B7CCED3FE08E5F09BC3B7BF0675AF18496505C6BD36A92D
            A2DC3A7CD144A9190147604BB7D715F21FC2AFD88FC71FB44F8F356B3D0F486B
            7D36D6F65866D4AEC7976F1287249C7735FA25FF0004D3FD9C7C45FB347C0CBC
            D27C4DF668EEB50D41EF7C885BCC11298D14063FDE21467E82BB7FDAABE3CC9F
            B347C27BAD734DF0DDF6B6C8D85B7B74DA91120FCF21ECBFCF15EDFF00AE98BC
            2E778BFECF6AA4AB4928B6FDD49791F35FF10EB2EC670DE06AE68A54A9D14DCD
            462D4E4DDBF3B5CFC7FF00DA13E036B3FB38FC4DD4BC33AE057BAB52AF1CCAB8
            13C6C3E561F91AF14FDA0B4B82FF00E136B4D3431CBB60DCA5BF848F4AF72FDA
            1FF68AF11FED2BE3E6D73C492C7F68F2C470C3126C8EDD3270AA3D3DFBE2BC4F
            E3AAEDF84DAF7FD7B9AFE81C2CB16F2E8BC75BDAF2EB6D63AAFEBD0FE6372C2C
            78817F66732A5CEADCDA3B5FA9D5FF00C1B76BBBFE0A2B6FBBFE8017640F41BA
            2AFD19FF0083906351FF0004E9BBFF00B0CDB63F37AFCEAFF836BBFE52229FF6
            2FDD7FE851D7E8BFFC1C87FF0028EBB9FF00B0CDB7F37AFE79CFA2A3C5142306
            EDA6FB9FDCB95CBFE11AAB7FD687E2AFFC138989FDBAFE157B789ACF1FF7F96B
            FAAC8075AFE54FFE09C7FF0027DDF0AFFEC66B3FFD1CB5FD5745F77FCFAD71F8
            95AE2A8B7FCAFF00336E07D30D512EFF00F047521FBC29690FDE15F9A9F702D1
            4514005145140051451400514514005145140051451400514514005145140051
            4514005145140051451400514514005145140051451400514514005145140051
            4514005145140051451400514514005145140051451400514514005145140051
            4514005145140051451400514514005145140051451400514514005145140051
            4514005364FBB4EA6CBD05007F239FB49FFC9C478E3FEC3B7BFF00A39EBFA1AF
            F820EFFCA307E1EFD6E7FF004A5EBF9E4FDA5BFE4E1BC71FF61DBDFF00D1CF5F
            D0CFFC105BFE5185F0F7FEDEBFF4A1EBF62E3EFF0091451FFB77FF00493F35E1
            597FC28D4F9FE67E627FC1CDFF00F290AD27FEC52B2FFD19775C5FC2B3B7E1D6
            8A7D2CE2FF00D06BB4FF00839B7FE5211A4FFD8A367FFA36EAB8BF85ABBBE1BE
            8BEBF628B8FF0080D7E9BE1BC9ACBA8FF851F83F8ED7F68ADFCCFF0023E82FD8
            A6DFE1BDFF00C67B78FE26174D2190B5B33395B7330230B2E392A467DB8E6BEF
            6F8D1FF0527F85FF00B37F8361D2BC20DA7EB979144AB6761A6623B58547DDCB
            8F940EB80393835F9CBF013F667F16FED27E247D3FC2BA6F9E6DD43CF33C8A91
            C20E7EF31F5C1C7D2AFF00C79FD90FC7DFB39DCAFF00C245A05C4764E7E4BD88
            2CD6FDBF8C746E98FA9AE6E22E1FC9F34CCD53CC714F9A2B4A5CDA5EDA687CBF
            09F1367B9364D39E5B835CAF4F6CA3AA5D93EA7DA7FB137FC14F3C5BF1D7E365
            AF857C45A0DAFD9F58797ECF736A9E5FD9B646F26D63FC5F7473EC6BEE88E25B
            7DCDB55549CE4B704F3CD7E79FFC1343F6C3D73E227C55D0FC1B2784F45B5D3A
            DF4F11B5E5A596D987970AE1A47EECD9FC315FA0DE21D39B55F0E5F59C521864
            BAB77891C0F9A325301BF0CD7E1FC7181A385CD150A549515CAAEA32E6BEBBFA
            9FD2FE17E6D88C7E4F2C4622B4B1128B69394395A696A95B7EC79AC9FB6A7C34
            4F892BE131E2DD2CEB5E6F9020DF96F37FBB5EA0CE8E9E6300C3A90BFC4719E3
            F9FE15F91FFF000ECDF8B707C6DFECD8F4591ECD750DFF00DB1E7FFA3347E66F
            DF8FEF0AFD6AF0ED849A3F87F4FB59646B89AD604491F1CC855704FE27158716
            64F9565F0A32CBABBA9CCBDEDB7D35D0E9E04E24CE337A98859B619D154DA51D
            1ABABFE27E7CFEDE7FF0511F895F09BF680D4BC33E1A6B5D16C74374512BC1E7
            3DF6E557DE4760738FC2BA1F80DFF0598D0B5CF0FB5AFC42D26E74FD43CB28D3
            D8C424B79CFA94C865FC3239E71C56E7FC1467E2CF8BBE1978900B1F865A0F89
            B43BCB50AFAACB65F699A394E55948ED8CAE3D7F0AF943F664FF00826D78F3F6
            90BB92FAE2DDBC2FA0A16CCD77018D9C124ED8E31DBEBED5FA4E5397F0EE2B26
            856CCA942872A5EFC5FBD27DDAE8FEF3F1ECF33DE2BC2F1255A194D79E21CDBF
            7250F763DADD345E8723FB687C69F097C6EF8B936ADE0FF0D47E1DB0DA564C22
            46D78FFF003D19518A8FE7CF35F38FC754DBF0975EFF00AF6FFD996BEACFDB27
            F612D73F642BDB1BA6BEB6D5B43D45C4115D460ABC4FFDD653D3DB1EF5F2AFC7
            9663F0875C2DC335B3330F7CE3FA57EAD92D4C254CA97D4AA735249A8DDDE5A7
            73F16CD30F9951E238C733828D594E2E49596ADAE8B63B0FF836ABFE52209FF6
            2EDE7FE8C4AFD12FF83917FE51DB2FFD86ED7FF6A57E78FF00C1B4B1EFFF0082
            8649FECF86EEBFF438ABF43BFE0E49FF009475B7FD87AD3FF67AFC173E95F8AA
            8FC8FED4CA75C8EABF267E2BFF00C1387FE4FB7E13FF00D8C765FF00A3857F56
            117DDFF3EB5FCA8FFC1388FF00C6767C27FF00B192CFFF00472D7F55D17DDFF3
            EB5C9E247FBCD2FF000BFCCE9E08FE054FF12FC87521FBC2968EF5F9B1F6E145
            1450014514500145145001451450014514500145145001451450014514500145
            1450014514500145145001451450014514500145145001451450014514500145
            1450014514500145145001451450014514500145145001451450014514500145
            1450014514500145145001451450014514500145145001451450014514500145
            1450014D97A53A9931C2D00CFE473F696FF9386F1BFF00D87AF3FF00473D7F42
            DFF0413FF9460F803EB77FFA3DEBF9E9FDA61777ED0BE37FFB0F5E7FE8E7AFE8
            5BFE0824D9FF0082607807FDEBBFFD1EF5FB1F881EEE51479BB2FF00D24FCCF8
            56FF00DA553E7F99F993FF000737B63FE0A19A5FFD8A565FFA51755C2FC236DD
            F0C743CFFCF943C6EC67E415DCFF00C1CE1C7FC142F4B1B777FC52367CFA7FA4
            5D5701F05C893E15682FBB76DB48B0BF4415FA4F86F25FD9F4ADFCA8FC33C70B
            B9A6B7E67A7C99EDDFB397C7DF1BFC0BF1D5BDEF83EF27FB5DD3AC6D6289E72D
            E75C23277EA791F30C9C77AFD82F82FAB6A9F1B7E1059DDF8F3C289A3DF5F45B
            6E74D9CACB1B03FC583D3393C1F9BD7B57E6C7FC12EBE377827E0E7C4FD5A4F1
            747A7C264B533D96A1751F99F6675CEE55F76563FF007CD7D2EFFF000563B4F8
            83FB42F85FC27E0BD2CB695A86A31C175A8DD8DBE64471CC6BD874FD2BE27C44
            C162F30C73860B0D6953577576BA4AFF00D6ACF4BC22CD32ECB32E52CC319CCA
            AB518D1B689B765A5FCCF6CF88FE2BF85DFB03F8066D63FB2F4DD060BC97CB8E
            0D3AD5526BC93B28C75EA7F3ADFF00D99BF69FD0FF00699F8743C49A3C5776B6
            D1CED6D24778BE5C8AE3A83F4AF8FBFE0B86B3C375E0143348AA3ED0400D850C
            0A1DDF80FE75F32EABF1E7C4DF153C1BE0DF87FE08D2F54D2ECB42842A5A6952
            3F9D7D74C77199B6F18E7393D326BC7CAB81639A6514B1CEA7BF393E69C9E892
            BF47BEDDCFA6CEBC52AF92F1055CB6952FDDC23A538AF7A52938EABD15FEE3F6
            911558A9565D9D721EBCAFF6B0FDA6ED7F667F83F7BE2A5B093566B794411C30
            9F95646E14BB7F0A8239ACBF05F81BC5D6DFB0F2E837525DC7E346F0D4D6C8C6
            E374CB7262709FBDEB90C579EDF8D7E6AE91F19BC61FB3AE87E39F02F8F345D4
            AFA0F14593C72DADFBBC9F67BA0A562B8566E1B2E172C3AE07A0AF9FE18E1259
            856A8A335374E4972ECE71BD9B4EFDBFE1CFACE38F102B65184A4D539C3DBC1C
            94DEAA0ED749E9DF4F99FA0DFB0B7EDD965FB62695AA58DE694BA4F88B4B556B
            8815FCC86557DD8643E9F2FEB5ED1F12CF88ADFC0FA87FC22B169B36BCB11366
            B74CC90938E3257F91E0D7E797FC1126DFCCF8BFE2F9A490315D2E38F6FF00CF
            40D248377FE3BFA56EFC68FF008293F8C3F676FDB3FC5D605975AF0B5B5E2C47
            4F93E568C041928FFC3D7A77E2BD2CE382652CF6AE0B2A8E94E2A4A327A3DAE8
            F0F87FC4A8C385E86639ED4F7AACA50738A575A3D7FE09F2FF00ED71AB7C4FD5
            BE25DC0F898DA92EAD1C8408A562B6E8BFF4C40F93670395E4E067B57CF5F1DF
            70F849E20DCAAADE41E8739AFB1FFE0A17FB7358FED657BE1FB4D0ED5ADF49D2
            D3ED4ED716FF00BD691B00A9F65C707BE4D7C71F1CC11F08F5C5FEEDB11D7DF3
            FD6BF7CE1F755652A589A0A8CAD6692EDDBB1FCCD9C53C2AE244F015E55E1CF1
            7CD2F8B75BBEA775FF0006D0FF00CA422E3FEC5ABAFF00D0E2AFD07FF8391FFE
            51D6DFF61DB4FF00D9EBF3E7FE0DA05DDFF0504BCFFB15EE7FF475BD7E81FF00
            C1C9C73FF04F2FFB8F5AFF0026AFC173EB7FAD545F4D0FED2CA2DFD89523E4FF
            00CCFC5BFF008271FF00C9F7FC29FF00B196CFFF00472D7F55F17DDFF3EA6BF9
            51FF0082727FC9F6FC28FF00B196CFFF00472D7F55901E0FD6B9FC4A8B589A37
            FE57F99B703B7EC2AA7DD7E449477A28EF5F9A9F701451450014514500145145
            0014514500145145001451450014514500145145001451450014514500145145
            0014514500145145001451450014514500145145001451450014514500145145
            0014514500145145001451450014514500145145001451450014514500145145
            00145145001451450014514500145145001451450014514500151DCB6D0BFA7F
            2FEB52532519228F403F945FDB97E0C789BE07FED43E32D37C55A2EA1A1DC5C6
            AD35DC06EE1C79F0348591D4FF0074F6AFD43FF82187FC159BE16FC3DF807E1F
            F83BE31D49BC2BAD69323ADBDE6A2716779E64BB82F987E543961F7BAE78E95F
            A3FF00B50FEC79F0F7F6C1F01CDE1FF1F787ECF58B59437953796639ED98E30C
            922FCCA46073D3819AFC5AFF008282FF00C1BCFE3FFD9C26BEF127C337BEF1EF
            84E1DD29B6540352B35E0E0A2FFAD03D57938E7B57EA94F3DC0677848E5F8C97
            24D5927BAD15BC8FCF6BE538CCB714F1941732EAB6EB735FFE0E5BF861E20D53
            F6AFD07C716FA5DE5E7842EBC3B6B683588A3696CDA6124C593CD5F946432631
            EF5F1D7C0AFDA8E3F0AE9767A3EBB6F2476900D89731AB79918C9E093D45771F
            B25FFC1523E257EC925FC23AD247E36F033136D7DE18F1047E7C2ABC8744CFCD
            1B73F74E76E07CADDBD9B56FD8D7E02FFC1496D26D63E007882D7E1D7C40950B
            CDE02D7EE163B7B87EA45B4A79EA0F4C6DDCBF2AE79FB4C9B30AB91A8E1EAAF7
            12B29AD57CFB1F15C4D916078814F9D36DBBDB669F97730F45F10597896C63BB
            B1B886EA0939578FA7FF00AEBB0F851F10AE3E187C48D17C456F6EB7571A25C8
            BA8A262C164233C1DBCE39AF8D3C7BE01F89BFB11FC499B42F13693AB786F53B
            7724DADE44CB0CCA3BA93C3A9CF0C3AE6BD57E16FED53A3F8D123B5D53FE2577
            ED80C4FF00A973ED5FA661736C363B0FF579DAD35ABE925E4CFE76CFB80733C9
            2BAAF855CCA2EEBF9A3D9B47D41FB45FED59E2EFDA9FC510DE78A2EA32966EE2
            D6D6DE25586CC3614807EF13F77EF7A71DEBF453E1178BBE0CFEC47F017C3FAA
            4EFA4E97AA6ABA65BDEDC08D3ED1A8DD33C2ACDF22FCDCE7AF4F5AFC9F8CF9D1
            EE56DCAC32BE5F43E8454F7DAA5C6A92AC97134D218D02C65DD9F04023803A75
            AF173EE0BA78FA1470742A7B3A107F0C7ADFFAEC470DF88789CAF175F30AD4D5
            6C44EC94A7AB8BBEE97A687EE3E9DFB40E917FF0065F88CB1DC47A2AE992EABE
            5B00CFE522B363038CE17A751DEBCD3C63E25F847FB76FC18D5BC9B8D375668E
            CE4740CA16FAC5F6EE1F2F51D3F4AF9DAD7F6EDF87B6BFF04FB1E03875698789
            FF00B064D36387EC92F331461D471FC47AD7C23A47882FBC3971E758DE5D59C9
            B7CBDD03EC66079391D48F9BBFAD7E63C3DE1BD4AD2AD554A74670A9683EF15F
            9E87ECBC61E2ED1A34B0F8654E9D7A55295EA2DED36B6EB6B1B5E08F887AF7C1
            EF1836ABE1DD5AF34CBDB59D9629606FF5A15885DCBFC59C1CD53F891E3FD43E
            2A78DB50F11EAD24726A1AB4BE6CE635D80B600CE3B138AC7B9B875DCF2347B5
            89773D23E7924B7635E4BF14BF6A8D27C1465B5D2BCBD4AFB940C3E6443F5EF5
            FBAFB1C3D09AC4D64B9D4546F6F7B4F33F9DF034F32CC97D4F0B17287336A2B5
            8A5E7DADDCF4CD6BC4967E17D364B9BEB88EDE051CB31C1FC2BE7DF8E3FB525B
            F89B43BDD1747B5668AE3E47B8666DD20CF40476F5FC2B9FF02F807E257EDA3F
            11E3D17C3BA5EA9E24D5266F96DAD22DF1C0BEAC4FCAA9EA4F4C57D091FC06F8
            17FF0004FE0B73F1535587E2DFC48B65CA783F41BA53A5584BFDDBCB9E3201C6
            51187DD6CE78AF96CDB8A1539BA74B56D6896AFEE3F64E13F0BE9506B158D7CD
            2DFB25F3EA7A6FFC1B93E0ED4BC11FB4FF00887E22EAF672E91E06D27C3D7105
            C6BB7919B7D3A390CD0613CD7E19B86F7F4AEFBFE0BAFF00F056DF86FF00B4DF
            C2F6F857E036BAD7FEC9A9477771ACA931DA878D5818D3772D9DC79E9C0C57C3
            DF1E7F6D5F8A5FB6CEBFA7F866D57ECBA0B482DB4CF09F86AD9E2B2887015163
            8F2F2741CB3107DB9AFB53FE09EFFF0006E0F883E214F61E25F8DD7171E1BD21
            8895340B52BF6E9C760F260AC4BD328177F3C11839FCCF30A182C363239C6652
            4A4B68ADCFDC3075ABD7C23CBF011BC5EED9F25FFC1253F67AF187C6DFDB6BC0
            97FE1BD06FB52D3BC35AD5B5FEA776A98B7B28119725A4FE13CF03BE0FA57F4F
            36A721B19F4248E4FBD70DF02FF67DF07FECE3E06B6F0DF82F40B0F0FE936A00
            586DA3DA5CFF0079D892CCDEEC49E7B5779192457E6DC4BC41FDAB895562AD18
            DD2FBCFB6C8B299606872CDDDBB3FC0751DE8A3BD7CE1EE05145140051451400
            5145140051451400514514005145140051451400514514005145140051451400
            5145140051451400514514005145140051451400514514005145140051451400
            5145140051451400514514005145140051451400514514005145140051451400
            5145140051451400514514005145140051451400514514005145140053646C1A
            7518CD00340DC2A39E3591369E41E3A66A6E9454B4164F467C83FB787FC11B7E
            12FEDC565717F79A5AF86BC60E3F77AE69A81662DDBCD43F2CAA3D0E0F270C32
            73F8A7FB6CFF00C125BE327FC13FB59FED7BAB1B8D63C3768FBADFC43A309446
            A01E3CCC730B7230AD907070C7071FD343A6FAA7ACE896BAE584969796F0DCDB
            DC298E48E54DE8EA472083D8D7D7649C618ECBEF49BE7A6F74F5D3D59F3F9970
            EE1B14FDA47DD9F46B43F9CBF819FF0005713E2AF05DBFC3FF00DA2BC2D67F16
            FC0B810C77B2AECD634D038531CD904EDF4247DD1C8E86E7C53FF825368FF1C7
            C2D79E3AFD97FC5D0FC45F0DAA19EEBC3F34BB75ED2BB9431E079A386C0C0FB9
            D3B9FD0EFDBFFF00E0DE2F877FB41C579E22F870F1F80FC5ACA58C31A93A6DD1
            EB8655F9A3279F98640CF2A7B7E457C59F80DF1C3FE0981F196DE6BD875AF06E
            B56AE4E9DAAD84A63B6BB008CEC957E570411B8704E46557BFE8394E6580C77E
            F32AA9ECA7D62FE16FD3FC8F8CCCB2FAF4138E3E1CF05F6BED1C57847E3478AF
            E076B72693A8C570AB63218E6B0BF4F2DA3C13C63F80FF00B35EFDF0DFF680F0
            FF00C4B8E3863956CEFDBEF5BDC37CC7FDD3DC5761E1DFDBFBE10FEDE9A543A0
            FED2DE18FECAF133462DED3E2178760582F22C70A2E6200974CF5241EFC771E7
            BFB60FFC120FE247ECBDA1C5E31F0FAAF8F7E1CDEA0BCB2D7F484DEB1C4D82A6
            58F276020F5C9E879EC3EDF2DE2CAB86A8B0F8EB41F4BBD25E8FA9F97F12786F
            80CD69CB13422D4BA38AB5BD55F5FC0F4A6919536F1D71F7F835C7FC47F8D7A1
            FC33B7717D3F9D798C0B683E691FFF00ADEB5F32E99FB4078B74FD1FFB261D56
            730EEDA18FCD2C7DBE57EC3DABDDBF66BFF82567C42F8F3E0DD43E2178C7CCF0
            2FC35D3E06BBBFD7F5280992688724C302E1A46381FC4074CE7B7D1661C5D428
            53E69B51BF77BBF23E1324F082B4EBFF00B63728AE91EBEAFA1E41E30F8DBE28
            F8E1ADC7A3E910DC6CBB93CA82C6CE2679263D36ED5E58F4E3BD7B9783FF00E0
            9EFE19FD9E345B5F147ED25E263E11B7741716BE10D3992E7C43A97755653936
            A872325D491B8E3183977887F6F3F03FECADA4CFE1FF00D9CBC37FD97A849118
            6F7C77ACC693EB57B9C06102722007B28627919C605721FB2C7EC17F1ABFE0A5
            3F116E350D26D6FB508EE2E49D4BC43AA4ADF658DCF5DD21072E00E5429EDC8A
            F87CC334AF5D3C46267ECA9FAEAD791FB465392E0F0318E13074BDEF256FBDF5
            347E35FF00C14BB56D4FC2737817E1168367F09BE1FB6617B3D2642D7DA86782
            D737470F213E8140F98F5AEEFF0060EFF821D7C5AFDB32E2CB5FD66197C17E0D
            B821DB52D4D3171748739314190C73D9891D7A1E71FA99FB047FC109BE16FEC8
            9158EB5AF5BC7E3AF1941B6537D7B062D6D65193BA183240619FBD939C0E057D
            D16D68B1A2AA851B4638AFCF331E36A586E6A394C757BCDEAFE47DD60785DD6B
            4F18DB8FF2F6F4EDF89F3CFEC4BFF04C6F853FB0DF87A18FC27A0ADC6B9E585B
            8D6AFD44B7971D73CE06D19CE0003AF535F4543B51718C6381EF8A980C0A2BF3
            AC5626B6225ED2ACB99F77A9F6D87C3D2A3054E92B24373C511F53CD3A8C62B1
            360A334514005145140051451400514514005145140051451400514514005145
            1400514514005145140051451400514514005145140051451400514514005145
            1400514514005145140051451400514514005145140051451400514514005145
            1400514514005145140051451400514514005145140051451400514514005145
            1400514514005145140051451400514514005324E5979A7D1407A91B60BD71BF
            19FE06784BF681F05DC7877C65A0E9BE22D16EBE592DAF22F313EA3D0FBD76D8
            A2884A7097345D9AEC4CA1192B4D5CF887C05FF0407FD9C3E1FF00C4887C496F
            E13D46F9EDA6F3E1B2BED40CD6313039184F41D876AFB22DF40B58748160B6F6
            EB691C3E4A43E4ED8D500C05C7A01DAB5A8AE9C563B15887175A6E56DAFADBD3
            B18D0C2D1A37F671B5CF98E3FF0082497C014F8E9FF0B0BFE15EE9035E622530
            F95FE87E767FD7793D37E7BD7D0B79A059DFE86FA6CF6D6F2D8CD1181ADD9374
            4F1E318C7A63B76AD7C51535B1788AB6E79B95B6BEB6F41D1C2D0A57F6714AFB
            F99F1BEB3FF042CFD9AF5BF88F2788A7F0044249E5F3DEC92E192C1E42724F96
            38EBD8F5AFAA3C01F0FB45F86BE17B5D1741D2ECB46D274F411416B6B088628C
            0E3851FCCD741455D7C7626B4546B4DCADB5DEC2A384A349B94229318136D2A0
            C1A7515C8925B1D1A8514514C028A28A0028A28A0028A28A0028A28A0028A28A
            0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
            0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
            0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
            0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
            0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
            0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
            0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
            0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
            0028A28A0028CE683D2A37915216666555C756E94807EF50719193D052EEAF2F
            F8F1FB5EFC33FD9A34D92E3C6FE30D1F41F2D0B8B79262F70EA0678850173F82
            9AF93FC75FF07157C0CF0B5DC90E9F69E2CF114719C24D6564888FF4133C6C3E
            A457A784C9F1D8A57A149B5E8673AB18E923EFF2C00EA2973C57E6DD9FFC1CB9
            F086E2E36CDE0DF8856E84E3779368C07B9C4D9FCABDA3E087FC16BBE007C68D
            462B28FC56DE1DD425C620D62136EAC49E019798F3F5615BD6E1DCCE8ABD4A32
            5F2256220DDAE7D799E68ACFD0FC4763E23D3A0BCB1BAB7BCB3B950F1CF0C81E
            3707A61870735A19AF1A578BB48D828CE29ACD8A6CA70A4FB54CA4D012039A2B
            C1F5EFF82937C0EF0E6B775A76A1F123C356B79A7CC61B88A498EE8DD4E187E0
            6ABFFC3D0FF67FFF00A2A5E15FFC086FFE26BBBFB3B16F58D397DCC8F6913E80
            CD1BABE7FF00F87A1FECFF00FF00454BC2BFF810DFFC4D03FE0A87F0049F97E2
            9784F3DBF7E7FF0089A3FB3319FF003EE5FF0080B17B48F73DFF0070F514B5E4
            7E13FDBBFE0EF8DE454D37E25783EE2462142FF69C68493EC5857A7693AF59EB
            D6897163796D790483724904AB2230F504120D73D6C3D6A5FC4835F2654649EC
            5ECD19E29A1B70E36D19F94AF1D2B1524F62876EA2B8DF8C3F1C7C2BF017C2AB
            ADF8CB5AB1F0FE93E72C1F6ABC6DB1EF6FBA33EA70715E63FF000F43FD9FFF00
            E8A97857FF00021BFF0089AEAA783C4545CD4E0DAF24D93CC96E7D01457CFF00
            FF000F43FD9FFF00E8A97857FF00021BFF0089A3FE1E87FB3FFF00D152F0AFFE
            0437FF00135A7F66E33FE7DCBFF0161ED23DCFA028AF9FFF00E1E87FB3FF00FD
            152F0AFF00E0437FF1347FC3D0FF0067FF00FA2A5E15FF00C086FF00E268FECD
            C67FCFB97FE02C3DA47B9F40668CE6BE7FFF0087A1FECFFF00F454BC2BFF0081
            0DFF00C4D3AD7FE0A77F012FAEA3861F89FE15926998471A8B83F3313803918E
            B47F66E2D2BBA72FB98BDA47B9EFC5B14555B3B94BB8D268CA98E550C840C6E5
            3CF43FE79AB55C7669EA5851451400519A0F4A6838149BB00ECD1BAA3620A9F4
            F7E95E29FB467FC141BE11FECB10B7FC263E34D2B4FBD5E058C2C6EAE9BD3F75
            1E48CFAB607B8ADA8E1EAD6972D257F40BAB5CF6EDC29735F9D3E2BFF83923E0
            BE8976F0D9F877C71AC46A48F3A1B48551FF00E0324A1AB43E1FFF00C1C61F03
            FC5BA8476FA869FE2FF0D42C40335E594724683B9C4523371EC09F6AF5E5C339
            A45734A8B48C7EB14DBB5CFD06CE68CD79CFC0AFDA9FE1FF00ED25A1C7A8781F
            C55A5F882DDC02CB6F36658FFDE43F32FE22BD132A7F8BAD78D529D4A72E5A8A
            DEA6C3B346EE698FCAF639E2BC53C71FF050BF831F0E3C5979A0EB9F107C3FA5
            EADA5C862B9B69A62AD038EAAC06707D8D3A342AD57CB4A2E5E9A932924AECF6
            ECF3457CFDFF000F45FD9FCFFCD51F0A7FE0437FF134BFF0F43FD9FF00FE8A97
            857FF021BFF89AE8FECDC67FCFA97DCC3DA47B9F40519C57CFE3FE0A85FB3FB7
            0BF14BC2BB8F03FD20FF00F135B9E13FDBEFE0CF8D2658EC3E2578426762142B
            6A31C7927A7DE61532CBF171D5D395BD18BDA47B9EC7BC7A8A5CD6568BE2ED2F
            C4966B73A7EA1637D6D20DCB2DBCEB24647A86524568960A33DBDEB95DD3E592
            B3F32F47B12673413814C079ED4E2696A02EEA2B8AF8CDF1EFC23FB3FF008761
            D63C65AE58F87F4B9A61025C5DBEC4690E7E5CFAE01381CE01AF34FF0087A1FE
            CFFF00F454BC2BFF00810DFF00C4D7553C1622A479A941B5E49B23DA2BD99F40
            51B857CFC7FE0A85FB3FB0FF0092A5E15FFC086FFE26BBBF825FB527C3FF00DA
            2A6BC8FC11E2AD2BC4C74B0A6E7EC4E5FC8DD9C6ECF23383D7D2954C1E229479
            AA41A5E8C6A716EC8F46CD14D3F7A9D5CE50519C5151BCCAABBB72EDC6739ED4
            9BB00F2C051BD73D6B1BC5FE3AD1FC0DA44D7DAD6A9A7E93650217927BC9D218
            D001924962057CB3F18FFE0B73FB3F7C1EBB92D5BC58DE21BE85B6B43A55ABCC
            B91D848408C9FA362BB30797E2B14ED429CA5E8B42655231F899F5FEF5F5A0B8
            1DEBF38356FF0083967E0FD8CAD1DBF83FC7B78A0FDE586D941FCE5ADEF04FFC
            1C63F02FC51731C3A858F8C3C3EAD8064BAB049153DCF95231E3D813E80D7A8F
            85F364AF2A1233FAC52BDAE7E816EC9A339AF22F80BFB6FF00C2BFDA52D616F0
            6F8D347D526906E16A6711DD0FAC4E43FE95EB425565C8C63AE41AF12B51AD46
            5C95A0E2FCCD96BB0FCD14DDC334EAC934F600A28A2980514514005145140051
            4514005145140051451400514514005145140051451400514514005145140050
            4E28A09E686035E4508DCD7E6EFF00C15F3FE0B16DFB33CF75F0EFE1B5C43378
            D9A20B7DA92E19348DDC055EDBFBE0F4AFB03F6EAFDA460FD953F65DF1778DA4
            DAD71A5D8B2D947DA4BA7056253EDBF19FC6BF99DF1AF8BB50F881E30D4B5AD5
            AEA4BDD4B549DEE2E6690962CECE58007D00E057DE704F0EC31B5BEB3595E317
            6B77EA70E231128BE544FE39F889AD7C50D7EE358F106A9A86AFA95E4AD2C93D
            E4CF23B31EBECA3D05635006E381C93D050A778E39E3771E9EB5FB752C3C22F9
            6946D6EC79EE4DFC40393D71EFE94E46CFCC59948E3729C1A6FF005008FA1EF4
            557BED7BDB3DD13E87D71FF04D2FF82A9F8BBF62BF1F58E9BAA5F5E6B5F0FEF6
            558AFB4E9E4697EC6198032DB93CAED0492A7AE38AFE813C09E35D3FE23F8434
            DD7749BA86F34DD56DE3BCB69A36DCAE8EA08C11C1EBDABF9436008F9B3B7BE2
            BF71BFE0DD7FDA3EEBE297ECB5AB784353B933DE7827502B01724BFD9E7CB85E
            7F851C328F602BF29F10387E94282C761E3677B3FF0033D2C1D46FDD91FA207E
            61EF4C9977C6DEE29EA29A7AD7E4FB58EE3F96EFDAC5B1FB4DF8F3EF328D6EEF
            186231FBDAF3EDEDFDEFFC78D7A07ED5FF00F272FE3EFF00B0E5DFFE8EAF3DAF
            EA4C07FBAD35E48F0EADF9B71DBDBFBDFF008F1A048DFDE3F9934DA4DE33D474
            CFE15D5ABD15CCD36BA8B1B309376E28D9E1972A7F319FE47F1AF5BFD9D3F6EB
            F8A5FB2D6B96F79E11F176A96B6F0B077B09A679EC65C1CE0C3216519C637285
            6E78E6BC93FBBFED723DE865F306D3FC5C7358D4C2E1EB45C6AC39BD4A8CE49D
            D33FA06FF82627FC15A7C3BFB76592683ABC30F877E2158C7FBEB02C0C57E146
            5A4B73DBD4A9E6BECC590311861CF4C1EB5FCA5FC2EF89BAC7C21F881A4F89FC
            3F79269FAB6917497704B1B98F04303B5BD54E391DC57F4B5FB127ED2567FB5B
            7ECD7E15F1C5998F76AB6A3EDB10E1A0B94F9645C76FDE06201FE12A7BD7E1FC
            61C330CBA6B13875EE4B47E4CF4F0B8873F7647CC5FF000714263F61256F9B3F
            DB769FC58EEF5F84DBDBFBDFF8F1AFDDAFF838A87FC60729FE1FEDBB4E7F16AF
            C23CD7DDF87B6FECCBF9B3931D27CF61DBDBFBDFF8F1A37B7F7BFF001E34DA33
            9FC3AD7DDDD1C6AFDC76F6FEF7FE3C68DEDFDEFF00C78D349C0A0A95EA318383
            EC6995EAC76F6FEF7FE3C6B63E1E331F1FE87F37FCC42DFB9FF9E8B58B5AFF00
            0F5B1E3ED0F9FF0098841FFA316B0C647F715347F0BE814A4F9CFEAB3C223678
            7B4FFF00AF68F9FF0080AFF9FC2B56B2FC28C1BC37A7FF00D714FF00D06B52BF
            976AA6AA4AFDD9EF476D028A28ACCA06385350CCEA23639190338CE2A561953F
            4AF88BFE0B7BFB6CCFFB2A7ECC2DA4E8775F67F1578E0BD8D8C88FB5EDE0DB99
            E51CE4119400FF00B55D581C04F1B88861A9AD5B26A4B96373E72FF82B5FFC16
            C6EF42D6B50F86DF0875285648018B55F11444FCAC7E5315B119E8786619C76A
            FC9ED6FC437DE26D5A7BED42F2F2FAF2EDDA592E6E252D2CCC7AEE6C938F638C
            D569EEA5BA9E496591E692463BE490EE67627713F89A613815FD0F9464B86CB6
            9AA508ABF56D6B73C5AD564F54C283EFD3BF247EA39FCA9769CE30738CFE148A
            7278E79FAD7B8F9A2EEF55D96A61AA5CC74DF097E32F8A7E06F8C6D7C41E15D7
            B53D0756B56561716D21562148203007E75E390C391C57EE07FC1273FE0AF3A7
            FEDA1A743E12F17B59E93F102CE301761DB06B0ABD648F3F75BD57BF6AFC3DF8
            4BF07FC4DF1E7C6F65E1EF08E937DAE6B1AA3848A3B58D98839C64900ED519E5
            8F0A393C57ED27FC12E7FE08A1A5FECB3AB69BE3CF1E48756F1E43896D6DE297
            FD1746EE0023FD63E475E95F9E71D472AFAB7EF2DED3A5B7F99E861949EA7E86
            6415EB9AFE697FE0A8076FFC141BE2C60B1FF89FCDC6E200E057F4B489B56BF9
            A5FF0082A07FCA423E2D7FD87AE3F9AD7CCF86B15F5DA8D6CA26F8C9351B1E0F
            BDBFBDFF008F1A37B7F7BFF1E34DA2BF688E9EEA3CBBF76296623EF1FCCD0A4A
            FDDDA87FBDC83F8953485803D7B67F0A3BE3BF5C512516ECE2DFAA04E499E99F
            00BF6C4F895FB34EBD6D7DE0DF176B5A3F92C19AD44E64B593073CC5CA907DF9
            F6AFD94FF825CFFC165749FDB20DBF84BC61159F87FC791A7EE4C6D8B5D5C0EA
            D113C0727AAF524F15F83EDF74F5FC2AF785FC4BA87837C5363AAE9775259EA3
            A7CD1CD04F0B1578195830C11D790335F339F70C6131F49C54529F46BF23A615
            9AD8FEB1239048A3D69CC09FCABE7BFF0082677ED72BFB68FECA5E1DF164C635
            D6EDE3161AC46A4109768A32719E03290DFF0003F6AFA15BFD5FE15FCFB8AC34
            B0F5A5879AB38BB33D784AE933F3B3FE0E48F97F635F0FEDDD9FF848E2C90D8F
            F9652D7E1FEF6FEF7FE3C6BF707FE0E47FF9333F0FFF00D8C717FE8A92BF0F2B
            F72F0FE296529F9BFCCF27177E7159D8A9E7FF001E35FAC3FF0006C52B1D47E2
            867FB965FC44F792BF276BF58FFE0D8BFF009087C4FF00F72CBF9C95D5C6FF00
            F2299DBBA270ADAA973F5CD4E053B34D5FBB4313FA57F3E45FBA7B035E7411B1
            DCA76E73CF4AF89FFE0A51FF000586F0AFEC4B6B71A0E862D7C51E3F9A3DA2C5
            1BF71A71ECD3BA9EA3AEC520D37FE0B0FF00F05304FD8A3E1747A0786E7824F8
            81E25B722D7F8CE9F0B0653704763C36DCF04AE3B57E08F887C4BA978BF5EBCD
            5354BAB8BCD4EFE6796E2E6590C923BB1CB124F55238E3A57E83C25C23F5EE5C
            5E297EEFA2EE70E2310E2F9627A57ED37FB6CFC49FDADBC4B71A878CBC4DA85E
            C3248648F4F590C5676FFDD091A61491FDE652DEF5E52061B23E5561CF3924FE
            3450CDB3EF7CBF5AFDA28E0E9524A14A2928EC8F3652BBF79851F86EF63DE8ED
            FAD19C123FBBD7DABA2CDBD98B44CB9E1ED7AFBC27AA5BDEE937B75A7DD5AB07
            8E7B695ADE48D81C82194E78383919AFD1BFF8275FFC17A7C49F0CB50D37C2BF
            172497C49E1DF9618759083EDB65C803CC0701D07527EF903819AFCD82714138
            1C578F9A64783C6D274EA4757D7AA378D770578B3FAB8F87FF0011347F89FE12
            B1D7B43D42D754D2752812E2DAEEDE40D1CA8DEE0E38ADF0C0F7AFC11FF8238F
            FC150AFF00F647F8976BE0BF155F4973F0FBC413884F9CE5BFB267621566563C
            08D89C30E8A3935FBC7A5EA306AF6505C5BCCB3433A8962753C3AB2E463D7839
            AFC1788323AB96621D39AF75ECCF5A954538A7D4B99A2917814B5E19A0514514
            0051451400514514005145140051451400514514005145140051451400514514
            0051451400535FAD3A9ADD4D4CBB01F9B7FF000728FC4497C37FB2E7847C3F1C
            AD1A788B5C669429FBE9045B803FF03707F0AFC4DAFD7EFF00839F5997C0FF00
            0A173F2FF68DFB63D3F771D7E40D7EF9C034D4328835D5BFCCF2714EF3061953
            FD6BE8FF00F8270FFC1393C45FF050DF887A958586A0BA1E87A08592FF005478
            8C861DF9D91C6071BB824648E95F380201E7A77AFD9DFF008365F4C823FD9F3C
            7978113ED126AD6F14922FF10588B0FC8B1FCABD0E2CCD2B6032D9E228BB3D17
            DE461E3CD2E53E40FF008291FF00C11AB58FD85FE19DAF8C74EF117FC247E1F6
            BB4B5BB56B4314D625D4B2B13BCE50B0DA4F62C075E2BE21AFE85BFE0BA1691D
            CFFC1383C6CD22AB79325ABAE7AAFEFD706BF9E9AE1E0BCD2BE3B04EA577769D
            8788A7C92B202703FC2BF4ABFE0DA1F15CDA7FED31E38D23CC3E4EA1E1F590A1
            3F2978EE13E61F55735F9AB5FA19FF0006DC39FF0086CDD7BFEC5C93FF0046C5
            5DDC594D4F28AC9F4570C2FF00111FB94A7E51F5A69EB4E538FCA9A7AD7F38C7
            6B1EC1FCB6FED5FF00F272FE3EFF00B0E5DFFE8EAF3DAF42FDABFF00E4E5FC7D
            FF0061CBBFFD1D5E7B5FD4D81FF76A7FE15F91E1D5F8D9369D65FDA5A8416FBF
            CBFB448B1EF033B72719C7B66BF60AF3FE0D9BF0ACFA7486C7E2278820B8625A
            212DB23C6B9249E07200E315F909E1B5DFE21B01D737318C7FC0857F52DE32F8
            D5E0FF0085C218FC47E23D0F436921F3552F6EE383747C0DDF391F2F079E9C1A
            F83E3ACD31F84A946181934E57BA4BB58E8C2D28CEFCC7F3D1FF00050EFF0082
            7078A3FE09F3E39B1B1D5AFADF5AD135C0CFA7EA30A18D672BC95914FDD7191F
            5E2BE73AFD18FF0082FAFEDCBE0BFDA63C59E17F0A782F52B7F105BF85FCF9AF
            B52B560F0798FB02A46E321BA1CE0F635F9CF5F59C3B8BC5D7C053A98C5EFD8E
            7AD652B44338AFDA2FF8368BE22CFACFECEDE36F0DCD34B247A4EB9F69B607FE
            59C72C49903DB72B7E75F8BAC38E7A57ECC7FC1B39E03B8D3BE03F8F75F9A3F2
            E3D53598E0801EA55218DBFF006635E371F38BCA5A7DD1B612EAA5D1F4E7FC15
            6BF63AF12FEDBBFB32AF83FC2F75A7D9EA4FA95BDD992F7223544E48C8CFF235
            F9AEDFF06DBFC6B23FE43DE0BFFC0993FF008DD7EE4C4314E7FB87E95F94653C
            578FCBB0FEC30CD25E6AE7A5528C66EECFC14F8ABFF06FFF00C5CF843F0E75EF
            146A3ACF84A5D3F40B296F6E121B991A468E342EDB47963E6C02073D715F0AB2
            84665EBB18A93FDEC77AFE9F7F6E5FF933AF89BFF62E5F7FE8A7AFE601BFD61F
            F3DDABF54E0DCFB1599529CB14D369A4ADA743CDC553506AC2A1C38E9D7BD773
            FB33FC00D63F6A0F8D5E1EF00E83716B06ADAFB986DE5B96C42088DA462C79F4
            EC09E2B85AFA7FFE08D1FF002925F857FF005FB37FE92CD5F519A56950C254AD
            0DE29B463492735167B68FF836E3E351FF0098FF00827FEFFCBFFC6EAFF85BFE
            0DCEF8CDA1789F4DBD9B5DF07B43677514EEA970E58AAB862066303381DC8AFD
            BBEDF8D3ABF13971E66D38CA2E4ACF4B5BFE09EB470F0467F876CA4D3B47B482
            5F9A586248DCE382CAA1491EDC56851457C6B777766C1451450023FDC38EB8AF
            C1BFF83873E2B4DE34FDB997C3E970CD63E15D2618121DDF2A4B265DC8F7DA13
            F4AFDE473F2D7F399FF05A1BA92EBFE0A3DF114C87714B98157D808538AFBDF0
            EE8A9E6529BDE316CE6C53F72C7CB74AA4061BB7019E4AF5FC292851B9B1EBC5
            7EE1BAE76790A2D9FAE9FF0004E0FF0082197803E25FECC9A2F8C3E247F6A6A5
            AB78AAD85F416B6D2F976F650C83F77EEE4A90D91C722BCF7E367FC1BB1E2A9B
            F6A0B3D23C137D27FC2BDD4944F36AB7EF9974A00F31103FD61233B71D3BD7EA
            57EC2C889FB18FC26D9C2FFC223A5F1EFF00648EBD6F807B57F3F55E2FCCA862
            EA4E9546B56ADD11EC7D5E2E2AE7847EC59FF04FEF00FEC45E095D3FC33A5ACB
            AB5C006FF58B94592F6F5B1CE5B1F2AFA015EEA000385E29F9A2BE5F115EA622
            A3AD5A4E4D9B462A2AC84230BC57F345FF000540FF0094847C5AFF00B0F5C7F3
            5AFE978F4AFE687FE0A81FF2908F8B5FF61EB8FE6B5FA1786B1B632AFF0087F5
            38F1BF09E0B525A43F69BA8E3F98798E172BD464F6CF151D58D206756B5FFAEC
            9D7EA2BF64A97B3B6F65AF6D0F3E3672499FAD1F0F3FE0DC0F0C78E7E1968BAC
            AFC40D72D6EF56B186F0466DA3648CBA86E0F71CD7C67FF051BFF825B789FF00
            E09F73E97A85C6A90F88FC2BACCC60B5D4638CC5E54B827CB910FF00190AC47D
            0FA1AFDD9F86BF157C35F0CBF67EF020F116BBA4688B71A05AECFB6DCADBF980
            411EEC162338C8CE3A6457E667FC17F7F6FBF02FC6CF05E81F0EBC19AD69FE24
            9B4FD506A5A8DF594E25821C4522244ACB904E5F9AFC9721E20CEAB665ECE6DC
            A9B6F5B688EEC453828268FCB5A08C8E3AF6A2954E187D6BF5EE57CE9AEFA9C1
            1D8FD67FF8363BC7F3CD2FC4DF0CF98E6C60169A9C3196E119F721E3E8AA3FE0
            35FADA4FEEFF000AFC8CFF008362FC153477FF00143C4455BECF24767A72B6DF
            94B2976201E99191C7B8F5AFD721C27E15FCF3C69C8F37AAE1DD1EBE16FCBA9F
            9DDFF0723FFC999F87FF00EC638BFF0045495F8795FB87FF000723FF00C999F8
            7FFEC638BFF45495F8795FA77007FC8A57F8A470E2BE30AFD63FF8362FFE421F
            13FF00DCB2FE7257E4E57EB27FC1B17FF1FF00F143FEB9D9FF00392BAB8DBFE4
            5153CB5270DFC43F5C81C25617C47F1ED8FC33F026B1E20D4E61069FA2D94B7B
            71213F752342CDF8E0703D6B6DBE656FA57C63FF0005D4F8C73FC27FF827F6BF
            0DA4CD0DE789AEA1D2E3607076B3798E3F18D5857E1195E0DE2B154B0EB69357
            3D6A92E58B91F88BFB61FED1FAB7ED59FB43789FC65ACCCCEDAA5EC8B6B19CED
            B485587971A8EC3CB451F507FBD5E674EDD919EBC9273D4934D24A8C8EBDABFA
            7705878D1A6A94344B64787277BC98848D9C9C2E339F6AF79FD8CFFE09CDF12B
            F6E1D4D97C23A5FD9747B77093EB376192D22E467E6E8C40E76839358FFB0A7E
            CAB79FB647ED3BA0781A091E2B5BC94CBA8CC9F7A0B48C83291E8DB738CF7C57
            F48FF077E0E787FE06FC3FD2FC33E1BD36DF4CD2F4989628638630B92000CC7D
            4B7726BE278BF8B165A952A5FC47F81D587C329FBCCFCBEF0DFF00C1B1EC7485
            6D63E272B5EB28674834C2D1A37B33499C7D39AF18FDA97FE0DF3F8A5F04B42B
            8D5BC27A95BF8FB4FB406492D6D60786F36819384DC4C840ECA0E7A57EEAECC1
            A478165460C3E561835F9FE1F8EB35A753DA4AA5D763B65878347F2617B65369
            17B25ADC4335BCD03324F149C323038E41E473C5475FABFF00F07017FC13E74F
            D0F4A87E3478574F4B376945AF8821853646FBC8297257F84E70873DD87735F9
            400E457EC99366B4B32C247114F47D7D4F32B53E495803B46772FDE5E47D6BF7
            93FE0831FB64CBFB45FECC6DE17D5EF3ED1E20F00C9FD9FBA463E6CF6872D139
            EE70311E7FE99FBD7E0DFD7A77AFB9FF00E0DF1F8C527C3EFDBBAD7413332DAF
            8C74E9ED2442708248D0CCAC7DFF0076C3EAD8AF278DF031C565D29B5EF47543
            C2D471A891FBE20F14522FDDA5AFC056C7B21451450014514500145145001451
            450014514500145145001451450014514500145145001451450014D6EA69D4D3
            F7BF11532DD01F94FF00F073E7FC893F0ABFEBFAFBFF00408EBF206BF5F7FE0E
            7AFF00912BE15FFD7F5EFF00E811D7E4157F40703FFC89E9FABFCCF1F12EF302
            76F3F37E1D6BF473FE08D9FF00053EF869FB0F7C1EF13685E3A935EFED0D5352
            59E1363622E13604EA497AFCE3A54FBE3EB5ED66F9551CC30EF0D5B67FA6A634
            EA3A72E647EECFFC148BF692F0EFED61FF00047AF14F8DBC2BF6F1A26AA62580
            DD4421958A5CA83B9467D2BF096BF56B4FFF00956E64FF00AECDFF00A5A2BF29
            6BE7F82F0B0C3D2AF4A9ED19B5F71D18A6DB527D4075AFD0CFF836EFFE4F3F5E
            FF00B1724FFD1D157E798EB5FA19FF0006DD7FC9E7EBDFF62E49FF00A362AF53
            8A9FFC24D7FF0009385FE21FB94BFD29A7AD381C2D34F5AFE6F5FE47B07F2DBF
            B57FFC9CBF8FBFEC3977FF00A3ABCF6BD0BF6AFF00F9397F1F7FD872EFFF0047
            579ED7F53607FDDA9FF857E478757E365EF0B0DDE26D3474CDD44338E9F38AFD
            11FF008391AE24B5FDA67C0E88F2C69278706E456D83FD6B73C1AFCEEF0C7FC8
            C9A7FF00D7CC7FFA10AFD10FF8394413FB4FF81BFEC5BCFF00E46AF9FCCA29E7
            784E6ED3FD0D29DF91D8FCE191B77A31CF420FE79F5A09E38EB45231C29F9437
            1D09C67F1AFAAD9248E63A1F85FF000DB58F8BFF0010F49F0C787ACE4D4356D6
            674B7B782342ECECCDB73819381DCF600D7F4A9FB0A7ECC967FB23FECC3E15F0
            4DAC6BE7E976A1EFA4520F9F7527CF2B67B80C4A83FDD02BE37FF82007EC91F0
            EF4DF81F6DF156DA74D77C65A94B35BCF35C4633A56D95A3F2957F8490B9CFA3
            83DEBF4A224DBF4EC057E1FC759F7D6B12F054F454F7F367AB85A2E2AEC72F53
            4AFF0070FD29691FEE1FA57C0CB63B0F27FDB97FE4CEBE26FF00D8B97DFF00A2
            9EBF9806FF00587FCF76AFE9FF00F6E5FF00933AF89BFF0062E5F7FE8A7AFE60
            1BFD61FF003DDABF60F0D7F8157FC4BF23CDC77C482BE9FF00F82347FCA497E1
            5FFD7ECDFF00A4B357CC15F4FF00FC11A3FE524BF0AFFEBF66FF00D259ABEEB3
            C77CBEB7F85FE472D0FE2A3FA37EDF8D3A9BDBF1A757F32C4F7028A28AA00A28
            A2801B257F393FF059AFF948E7C46FFAFD5FFD151D7F46D2F4AFE727FE0B33FF
            00291CF88DFF005FABFF00A2A3AFD0BC38FF0091854FF03FCCE3C5FC27CBF437
            228A2BF6AE58A92E657B1E55DB3F417E11FF00C1C21F113E127C2DF0DF84ECFC
            27E1B9EC7C31A75BE9B04B2093CC912145881FBFD70335FB53F05FC633FC45F8
            4DE17F105D451C371AE693697F2247F751A58524207E2C6BF9538FFD62FD6BFA
            94FD95BFE4D97E1DFF00D8B3A67FE92455F8DF1F65185C22A73A11B73377FCCF
            570955C9599E847AD14DEFFE7D69D5F9B4763B00F4AFE687FE0A81FF002908F8
            B5FF0061EB8FE6B5FD2F1E95FCD0FF00C1503FE5211F16BFEC3D71FCD6BF48F0
            DBFDF2AFF87F53871BF09E0B56348FF90ADAE7A79A99C0CF71DAABD58D239D56
            D7FEBAA7F315FB24B697A2FC8F36F668FD29FF0082F54AF69F07BF67BF2E478B
            CCF0E3799E59D9E67EEADF1F74F5AFCCE2377CCDF9027F324F5AFD2EFF0082F7
            9DDF07BF676EF9F0E311EE3CAB7AFCD1AF9EE138B8E5B1E5D2EE5F9B36AB74D3
            0ABFE18F0BEA1E34F11D8691A5DA5C5F6A5AA5C2DADADBC31979269188015540
            249C91C0AA1C1FBD9DBDF15FAE9FF06F17EC81F0FBC4FE0EBEF8A179347AE78C
            B4EBA364B6D32868F4838C8651DD98739ED8AE9CFB368E5B8396264BCBE64D2A
            4E73B1F697FC1303F63F1FB197ECA1E1DF0D5C63FB6EF33A96AEC8010F7320C6
            DCF70A8117EB1FBD7D1EDF729902EC017A8FA631521FF1AFE71C662255EABAD3
            DDBB9ED463CAAC7E767FC1C8FF00F2667E1FFF00B18E2FFD15257E1E57EE1FFC
            1C8FFF002667E1FF00FB18E2FF00D15257E1E57EE3E1FF00FC8A63FE291E5E2B
            E30AFD63FF008362F9BEF8A1FF005CECFF009C95F9395FAC7FF06C5FFC843E27
            FF00B965FCE4AEAE36FF0091454F3D09C37C67EB8F45FC2BF36BFE0E62D424B5
            FD947C0B6F19C4773E29D927B6DB49D80AFD270C150E6BF3F3FE0E2FF03CDE28
            FD88EC7548A36923F0EEBB0DCC842E768915E0C9F4E5C0CFA915F8DF0AC94733
            A127B267A95BF86CFC2CA14E0F3CFB7AD18E3F1C7E3D681D7D3DF19C57F474EE
            A4ADDCF0E513F4BBFE0D9DF0EDADFF00ED0FE3CD4A7556BCD3F44B75B762B923
            CD924DE41FF8001F8D7ED32B679AFE7EBFE0849FB4C58FECF9FB6F58DAEB1730
            D9697E37B5FEC796463B516E1886B7C93C2FCE36F3DDC0EF5FD01C732CF12BAB
            02AC0118F435F84F1F61E71CD253A8B47AA3D6C1D4BC794793C50C33F950A772
            F623DA937E01C7E55F137EAF63A95F73E7DFF82A6E836BE26FF827DFC52B7B95
            4645D11E6527F85D59194FE6057F35B8D995EDF77F235FBE9FF05DEFDA6F4FF8
            2DFB146A9E175BA0BADF8F1974FB4894FCDE507F324723AEDDA9B73D32C2BF02
            CC9B987CBF773F8935FB5F8734274F01394B694B4FBAC79B8EF8901E95F457FC
            127EF65D33FE0A1DF0C4C5B964FED6F2DF1FDD68E4047EB5F3A83835F597FC11
            23C05378EFFE0A33E030ABBE1D2FED37F72E064284865DA49EDF36073DC81D4D
            7D7E7538D3C0D69CF6E567361D7EF11FD124677203EB4EA44E107E54B5FCCE7B
            6145145001451450014514500145145001451450014514500145145001451450
            0145145001451450014D3F7BF114EA69FBDF88A996E80FCA6FF839EBFE44AF85
            7FF5FD7BFF00A0475F9055FAFBFF00073D7FC895F0AFFEBFAF7FF408EBF20ABF
            A0B8195F27A7EAFF0033C6C47C604E052C7F348A0725B181EB481B69CFA735FA
            79FF000438FF00827DFC2CFDADFE08F8B354F1DF86D75ABED37585B48A437524
            784F2F3D178AF633ACD2965D859626AECADF8E8650A6E6EC8DEB03B7FE0DBA90
            1E0F9CDC1FFAFD15F94B5FBD9FF054EF819E1BFD9C3FE092DE2DF09F8474FF00
            ECBD0EC4C060B712B36CDF72AEDC9AFC13AF9FE0BC5471146BD686D29B7F79D1
            8A8B5CA980EB5FA19FF06DD7FC9E7EBDFF0062E49FFA362AFCF31D6BF433FE0D
            BBFF0093CFD7BFEC5C93FF0047455EA7152BE535FF00C24E17F887EE52F4A69E
            B4E538FCA9A7AD7F37AFF23D83F96DFDABFF00E4E5FC7DFF0061CBBFFD1D5E7B
            5E85FB57FF00C9CBF8FBFEC3977FFA3ABCF6BFA9B03FEED4FF00C2BF23C3ABF1
            B2F7863FE465D3FF00EBE63EDFED0AFD45FF008393FE06EAADAC780FE22C5FBE
            D1DACDB46BB600E21943AC919CF401F3201EBB78AFCBAF0D1C788F4FCE71F698
            F38FF7857F4BDFB6EFECD56FFB567ECADE26F04CE9099EFAC4CB652C833F67B9
            400C4C3F2233FED57C4F15665F52CCF095FB5D7DF646F423CD068FE64F3475EB
            D3BE6AEF88BC3D77E11F105F693A846D6FA869F2B5BCF1BAEC68DD1995810790
            772E39EFC55256DA73E9CF4AFBD8C949270DB4699CB28DB43F4BBFE0DC8FDAB1
            7C0DF19B5DF85FA95C24561E2C87FB434F566FBB771A92C801E81A204FD715FB
            4D1371D7B57F2A9F047E29EA5F033E2C7877C59A4CED1DFF0087EF21BB8DD4ED
            326C23729F665C8FC6BFA7DF81DF14F4FF008DBF09FC37E2CD2E4592C7C45611
            5EC5B1B705DEA0B0247F74E47B1E2BF16F1072A861F14B154D7C7BFAFF00C31E
            9E0EA3946CCECB348FF70FD29318C7D695FEE1FA57E7B26AC761E4FF00B72FFC
            99D7C4DFFB172FBFF453D7F300DFEB0FF9EED5FD3FFEDCBFF2675F137FEC5CBE
            FF00D14F5FCC037FAC3FE7BB57EC1E1AFF0002AFF897E479B8EF89057D3FFF00
            0468FF009492FC2BFF00AFD9BFF4966AF982BE9FFF0082347FCA497E15FF00D7
            ECDFFA4B357DCE79FF0022FADFE17F91CB43F8A8FE8DFB7E34EA6F6FC69D5FCC
            D13DC0A28A2A8028A28A006CBD2BF9C9FF0082CCFF00CA473E237FD7EAFF00E8
            A8EBFA3697A57F393FF0599FF948E7C46FFAFD5FFD151D7E85E1CFFBFCFF00C2
            FF00338F19F09F2FD039A28562AD90C548E841E457ED93694B5EDFA1E544BD6D
            E1CD42758A44B0BD78E45595196062AC8D82AC0E39072307BE6BFA8AFD96A268
            7F66AF87F1BAB2C91F86F4E565230548B5881047A820823D45717FB127C37D06
            F3F636F85524DA1E9734971E12D2DE567B5462E5AD2363B895E79F5AF6DB7B55
            B60A88A02A00A38C0503A0007615F80F167123CCE4A97272AA6DFCFA1EC61E8A
            82BAEA4B8E69D4515F1EB43A40F4AFE687FE0A81FF002908F8B5FF0061EB8FE6
            B5FD2F1E95FCD0FF00C1503FE5211F16BFEC3D71FCD6BF46F0DFFDF6A7F87F53
            871BB23C16A7D31B66A56ED9DB8954E7D39150558D246ED52D87ACABFCC57EC9
            55DA2D797E8799D51FAB9FF05CFF00817ABF8A7F635F835E38B48DA6D3FC2FA7
            43637CAA87312CF145E5B9F450CA173D32C07535F9364E0FD4647BF38FE7C7D6
            BFA66D43E0869BFB45FEC2763E0DD5A149ED75EF0B5BC04B7F0486DD0A383EA1
            B073ED5FCDDFC5AF86DAA7C1DF891AE785F5885ADF54D0B509ACAE54F037A315
            38FF00648048F526BE0F817345569CF0727AC24EDE8D9D78AA7CB1524738DF74
            FDE1C75032457DEDFF000400FDAADBE0AFED68FE11D42E1A1D1FE2046D6AA0BE
            235BB5C189BD06EE107A938EB5F050CE78C67B67A5697833C597BE02F15E97AE
            69721B5D4749BA8AEED268F21E392370E38FA815F579C65F1C660E742A2E8EDE
            A63464E2D48FEB02DE559114F1F373FE7F3A90F1FAD797FEC79F1EEC3F695FD9
            CFC23E32B090491EAFA7C6D32EEF9A3997E470476F9D5FF215E9EC7E4FC2BF99
            EBD1952A8E94B74CF6E2EEAE7E76FF00C1C8FF00F2667E1FFF00B18E2FFD1525
            7E1E57EE1FFC1C8FFF002667E1FF00FB18E2FF00D15257E1E57EEBE1FF00FC8A
            63FE291E562BE30AFD62FF0083633FE3FF00E287FB965FCE4AFC9DAFD63FF836
            2FFE421F13FF00DCB2FE7257571B7FC8A67EA4E1BE33F5C4AEE5AF28FDB63E05
            43FB47FECBDE34F07C91ABC9ABE9B20B50C3859D4178CFFDF6057ACA74A6CA33
            F5ED5F80E16ACA94E3523BAD4F5A71E6563F939F14786EEBC1DE27BED275085A
            DAFB4CB992DA7888C32C89952083C8238C8ED5449C57E96FFC17C3FE09DD37C3
            7F1DBFC60F0A58C92685AEC8A9AE430A7169718C24D80385619C93C6715F9A5B
            ABFA5323CCE9E3F070AB4DFBD6B3F2678B5A0E12B0EB3BA96C2E16685DE39558
            32BA3156423A1047208F5AFD6DFF00826AFF00C178F49B7F0C69FE0DF8CF712D
            8DC58E20B4F1163CC8AE235002ACEABF32B0ECE38F5AFC90A0F4F5F6A8CE323C
            36654BD9E216ABAF54146B383BA3FA8CF0CFED6FF0C7C67A1FDBF4BF1E7852F6
            C993CC12AEA319C2E3272198115E23FB587FC1637E0BFECD7A05E791E24B0F16
            EBB1A910E97A54A6E18BE0E3748328AB9C670735FCEF8F9F1BBE6DBC81B178FA
            74A73313FD72BB4FE609CD7C8D1F0D70509A94AA49AED6474CB1B26AD63D6BF6
            CDFDB1FC59FB6CFC66BAF1678A6E1976968EC2C637FF0047B187F855474C91D6
            BC968A339036ED6DDF773D0D7DFE0F094E8538E1E82B2471B6DBBB03D39E9FE3
            5FACDFF06D4FECDB32DCF8BBE295F40560991348D359D080D8C348CA7A1E700E
            3B9AFCDFFD967F66AF107ED5BF1A345F05F866CEE2EA6D42E4A4B2F48ECE018D
            F237B28C9E7D2BFA4CFD99BF67FD1FF65FF831E1DF05E830A2D8E8B691C0D204
            C35C381F3C87FDA6725BE87DABE0FC40CEE9D1C2FD4A0FDE96E75E128B6F9DF4
            3D1874A281C515F8BA3D40A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A69FBDF8D3A98570CC693EE07E
            547FC1CF0377827E15639FF4DBD3C7A6C8B9AFC81AFE843FE0ACFF00F04DBD73
            FE0A23A07836CF45F1069BA049E19B8B99E47BE8A5956512845006D1C11B735F
            147FC4327E3C3FF351BC27FF0080D73FE15FB0F0971465D84CB61431353964AF
            F8B3CEC461E4E5747E62B9C237D2BF69FF00E0D9E3B7F66EF1D67A7F6F2FFE8A
            AF121FF06C7F8F47FCD48F09FF00E03DCFF857DDBFF04A7FD80B5AFF00827DFC
            2DF10683AD6B9A7EBB36B5A82DF249671B858F09820EF19ACF8C38932FC765B2
            C3E1A7CD26D7E0C30B4651A979157FE0B8A7FE35BFE38FADBFFE8D15FCF1E6BF
            A69FDBFF00F661D43F6C2FD97BC43E01D2F51B5D1EF359F2825D5CC6CE89B240
            C73B79C11E9CD7E67FFC431FE3CFFA28FE13FF00C07B9FF0AE3E09E20C0E0707
            2A58A9F2BBDEDF21E2A94E72BA3F3197EF57E867FC1B7876FED9DAF678FF008A
            724FFD1D18FE75D67FC431DE3CFF00A291E136F616F73CFE95F4B7FC12E7FE08
            EBE26FD813E3A6A5E2DD5BC59A26B76F7FA6358082C6DE589D72DBF24B0C1E45
            7B5C41C5796D7CBAA51A33E6949589A3427197333F4214FF002A6B9DB93DBD68
            5E57DE89C7EE7DF15F89E8B73D2BE87F2DBFB581C7ED2FE3CFF6B5CBBC7BFEF6
            BCF6BF57FE32FF00C1B95E36F895F15BC49E20B7F1F785EDA0D73509AF2289ED
            6732441E4DD866C7F2AE67FE218FF1E8FF009A91E13FFC07B9FF000AFDF305C6
            395470F08CEA59A497DC793530F372BA3F353C33FF0023269FFF005F31FF00E8
            42BFABDB73E65AC3E8500CFE55F8E9A4FF00C1B41E3AD3F55B5B87F889E16748
            25591956DAE3730041C0C8C67EBC57EC65946C96A81B1E66C192176A923AF07A
            739AFCFF008F338C2E3E749E127CDCA9FE68EAC253941DA47E12FF00C17E7F64
            A6F81BFB558F18E9B6BE5E81E3E56BAC4630B05E26DF354F61BB7EF03BE2BE0D
            CD7F49DFF0521FD872DBF6EFFD9E6E3C22B716FA6EAF04F1DDE9B7F321616F2A
            1DBF3639DACACF9C7270B5F9D5FF0010C778F3FE8A3F84FF00F01EE7FC2BEAB8
            6B8C3050C14696327CB28E9EA615B0F2736E27E630009E4ED1DCFA57ED2FFC1B
            97FB56B78EFE0BEB5F0D353B86FED1F09CE6F6C51DB39B698EE703FDD99A4207
            A381DABC48FF00C1B1BE3C23FE4A4784FF000B6B9FF0AF6BFD807FE08A9F11BF
            621FDA5F46F1C47E3EF0FEA1A7DB8960D46CA1B6995AF2074D857A63702770CF
            03151C519F6538FC0BA34E7796E8BC3D1A9195CFD35EB48FF74FD2A38DCE1770
            E7152935F8EF2F43D03C97F6E638FD8E7E277B786EF89FFBF2F5FCC031F9FEA7
            03DF96AFEA8FF683F86771F193E0778ABC2B6B711D9DD78874B9EC639E504A44
            D2C6C819B1CE067271CF15F92C7FE0D94F1F5C7CDFF0B1FC2EBB8EF00DBDCFCB
            9CF1D3DEBF49E07CF30580A35238A9F2B6D5BEE387154A536AC7E632A976000C
            93C003BD7D3FFF000468E7FE0A4BF0B3FEBF663F9DACD8FE47F2AFA6BFE218CF
            1E9FF9A91E13FF00C06B9FF0AF5AFD85BFE0839E2EFD947F6A8F08FC40D4BC6B
            E1FD52C7C3770F2B5A5B5ACA8EE1A374006476F30F5AFAACD38BB2BAD83AB4A1
            52EDA7631A387929A933F50F3FCE9D4C0327F1A7D7E171D55CF5028A28AA00A2
            8A2801B2F4AFE727FE0B30777FC1477E23639FF4D5E9FF005C93FC0FE55FD1BB
            F28DF4AFCBCFDB9BFE083DE30FDACFF69DF1378F34FF001B78774BB3D7A759A3
            B7BAB799A48B0B8EAA2BED382334C2E07192A98B9F2C5C5A39B114E525647E35
            D0466BF4E0FF00C1B1FE3D1FF3523C267E96F73FE14E5FF83653C779F9BE22F8
            4D97B836B7273FA57E9D2E36CADC6F1AABEE7E879D4F0F52F668FD46FD86980F
            D8D7E142E7E6FF0084474BE3FEDD62AF58AE1FF675F86971F06BE067837C2379
            3457573E18D0ECB499278576C733C10246CCA3AE095CD7715F81622A4675E728
            BBABB3D8845A56614514564501E95FCD0FFC15039FF82837C5A6FE16D7A720FA
            F2B5FD2E4BFEA9BE9EB5F94FFB5B7FC1BF9E30FDA3BF696F1978E2C7C73E1BD3
            6CFC4FA9497D0DBCF6D334B0A90000CC063DF8AFB5E07CDB0B81C5CE58A9F2A7
            1397154E528E87E40D59D1C1FED6B5FF00AEC9FCC57E97FF00C431FE3DFF00A2
            93E13FFC07B9FF000A92C7FE0D97F1E5BDEC3237C46F0AB2C6EAC40B6B9C900F
            B8C7E75FA64B8DB28E472552EED6B1E7C70B55D9D8FD63FD9DDB77ECFF00E0BD
            B863FD8767C67FE98257E457FC1C57FB24FF00C205F19B45F8A5A4DABAE9FE2C
            8C69DA8945C2C7771A965247ABC6A727D63CF7AFD8AF85BE1497C09F0E741D16
            6904D369761059BC8ABB55CC6814903B671DEBCEFF006E7FD936C7F6C9FD9BB5
            EF02DE4CB6D71A846AF65792296FB1DC2307493819C6E5DA71CED635F9064B9B
            2C0E67EDD3F75B77F46CF4AA53728729FCC70607B8A5CEDE48C81D47AD7E9D37
            FC1B25E3C73F2FC47F0BAF276E6DEE781EFC527FC431DE3DFF00A291E133FF00
            6ED73FE15FB1438D328E6F7AADBE479DF55A973B2FF836DFF6A8DC9E28F849A9
            5D2E2DDFFB5B46121E57E50B3C433D86DDE3FDE635FAD05BB57E597EC7DFF042
            1F895FB26FED13E19F1DE9FF00113C3337F62DD249736D15ACCAD776E5879B1E
            48C659320678E6BF52A22CD17EF17E6083771904FB57E3FC5557075B1B2C460E
            5CD196AFC99E9E1F992B48FCF2FF0083918E7F634F0F8EFF00F091C5FF00A264
            AFC3CAFE8DBFE0A95FB0A6ADFB7D7C0CD3BC23A3EB1A7E877367A9A5F9B8BC89
            A48C8552B81B791C135F017FC431DE3DFF00A291E13FFC07B9FF000AFB5E0EE2
            4CBF0797468E227CB2BB7F79CB89A1294AF13F3189C0AFD62FF8362DBFE263F1
            3BFDDB3FE72572DFF10C778F0FFCD48F0A7E105C83FCABEC7FF824F7FC1317C4
            1FF04F2BCF1749AD788B49F107FC249E418FEC56F2218B66FCEE32633D474AE9
            E28E26CBB17974A850A9CD264E1E8C954D4FB594FCB48DD3F0A45ED5257E374F
            63D2EA61F8DFC0BA5FC46F096A1A26B7A7C3A8E97A9C0D6B756D32068E58C820
            E47D09AFC2FF00F82A27FC11C3C49FB287886EFC55E07B1BDD77C03792C93B47
            0832DCE944E49122A825907661C28EB5FBD6E70A7E954F52D361D56CE686E215
            B886652AF13A2BA38C720AB71CFBD7BD9167B5F2CABCF0D63D51955A2A68FE4D
            08C123BA92A7D88EA28CF15FBD5FB63FFC1077E16FED237F79AD786D66F01F89
            2E09732592EEB399BD5E13C0C9EBB6BE04F8C7FF0006F6FC74F015CCCDE1F8F4
            3F195BA3131BDB5D2DBCA147AACC5403FEE9CD7EC597F1C657894B9E4E327BDC
            F2E5859C5D91F0876A01C8FA75AFA3F50FF8247FED11A5DDB432FC35D699BA65
            1E3994FE2B262BA9F007FC10FF00F68CF1D5F4692782468D6ED8FDF5F6A50461
            7DF6F99B863E84FB57B1533CC0423CEEAC6DEA0B0F51F43E47DAC71B7396E01F
            7AF42FD9ABF656F1B7ED6BF11EDBC3BE0BD16EB53BB9D944F3A2B47059A92013
            23E3681DCF3D2BF4A7F66CFF00836B162BE8750F8A3E2B5B88CEDDFA768E9B4B
            0CF2AF23F5047076F35FA57F017F665F057ECCFE0EB7D0BC1BE1FB1D16C2DC28
            3E4C43CC9D87F13B7526BE3B3BF103094A0E183F7A4FAF446F4B06DBBC8F21FF
            00826DFF00C1367C33FB01FC345B7B758F54F176AD1A9D635731EDF38F511460
            F29129E83A93C9AFA755714A47229D5F9062B11531351D5ACEED9E8422A2AC80
            74A28A2B12828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
            A0028A28A0028A28A0028A28A0029B939A7504E2801BC9A3652EF1EA3D2949DA
            326A79406F979A026D34ECE451428D9DC0663068DBF5FCA9F451CA0331F5FCA9
            DB463A505D41EA3F3A5DC28E501A0F3D295BE94BB8019A33540371ED49B7EBF9
            53C3668A9E5019B7FCE2955723A53A8A146C035BAF4A31FE714EA28E501A179E
            FF00952ED14B450A2037186E94EA28AA003C8A66DA7D14980D0BCD017069D454
            B8DC0453ED4B48181EE3A6694B01DEAC028A370DDB73F375C51400514514001E
            94CDB9A7D14980CD98A0AE29F452B00C039A7D145500514519C5000DD2980607
            3FCA9E1813F4EBED48AC187041FA526037CBA5551E94EA28E540237D2931934E
            A294A2980DDB9ED414C53A8A3956E047B49A76DE29D4D1229FE25EB8EBDE9806
            38E949B7EBF9538382D8C8C8ED4A5B14B94066DFF38A55E474A751472801A28A
            2A8029B8E29D450037FEFAA0A0C74A75142B811B440FF083F80A5550A3A7E429
            E5B68E78A4DE036DC8DDD7153CA00578A441CD3A8A7E803483BA9D4514C028A2
            8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
            8A0028A28A0028A28A00291FEE37D29683D2803F2DFF00E0A29FF0726F87FF00
            60BFDA7F5AF85F67F0DF52F18EA5E1D585751BC3AC2D9224AF109B62A98A4CE0
            48B9F415E2327FC1E1B6E0306F80B7CBE5FDFF00F8AA42ECFA9FB2715F28FF00
            C1416EACECFF00E0E57BE9B506852CE1F889A0B4CD3102344D96192D9E318CF5
            AFDFBF147C58F822BE1693FB6B5DF877FD9E917EFBED3716A63030321B271F9D
            05247CC1FF0004DFFF008384FE14FEDF9F12ECFC1336937DE01F196A3FF1E563
            7D74B710DE30EA8B36D4DCE7070B8C9F4AFD06F31463E65E4E073D6BF96AF889
            6BE15F1EFF00C1752C4FECFF001C0FE1FB8F1B59CBA43E940ADB1903A79CF16D
            FE0DCAC49E8437BD7EF6FF00C14D7FE0A91E0BFF008262FC26B5D63C4D149AC7
            88758DD0E91A2C326D9EFD9464BB300DB625380485246E1C127140729F556EA6
            97DC182B2EEFCF15F89BFF000FF4FDB0B54F01FF00C2CAB5FD9BD57E1795FB4F
            DB7EC375246F6FF795D670D8DA57F8B601DEBED2FD893FE0B31A1FEDEBFB2A78
            BBC61E0BF0ADE5E78FBC176125C5E78404CAD34D2AA314F25FABA3300B900919
            F5A0394E6BFE0AE7FF0005DAD07FE099DE3AD2BC1D63E129FC69E2FD56CD6F5A
            DFEDFF00658B4E46E143911BE5986081907078ABBFF04B7FF82B47C41FDBABE2
            85F785FC69F04FC41F0FE3B7D3DB51B7D5A5127D92501C054C4912B6E2181CFA
            1CFBD7E1BFFC1443F6B3F887FB437FC14674EF885E32F86F79E13F18DA4FA598
            3C3572B247249E4989A28CEE19FDE614640E77719AFDADF0A7FC1583E237867F
            E099DF12BE34F8F3E0CDE7C3DD7BC0F34363A769B782445D4C4AD0C514C43A2B
            8547957200E7691D6813563F445381CFEB5E73FB58FED056BFB2CFECE7E2EF88
            179A75D6AD6FE13D2E5D49ED2DDB6BCDB119B1BB0DB41C6371040CE706BF202D
            FF00E0EA2F1F78FBE05E836BE0BF85F6FAB7C51B832DC6AF1DB2CB7161676C09
            D8E8AA32C5BD7A66BE9DFD983FE0B63AA7ED0FFF0004E0F8B3F153C55F0BD749
            D5BE1ADB4B04B65216FECCD5E4319C22B38DCA03603A90460D023DD3FE0933FF
            00053FB7FF0082A07C1ED67C549E13BCF08C9A26AADA6CB6F35C7DA2397091BA
            B2C9B1067E7CE315F5BEF53DC7A57C05FF000413FDBE6DFF006E7FD9BFC4174B
            E08F0EF81EE3C31AA7D9DED7454F22CE6DC8AC24DA07CAE4960C46410066BC27
            F6FF00FF0083932F3E127ED0979F0AFE08781D3E2178834CBAFECFB8BF95A492
            39AEB3830C30A7CEE782321B8E78A0695CFD735756190C0E79E0D05C01D457E3
            DC7FF071F78F7E077C39F10D97C70F833A9F813C79FD9B2DEF871A682586CB59
            9D781195752540054E73C8FAE6BEBDFF0082427FC149750FF82847EC6779F11B
            C59A769FE1BBED26FEE2CAFC5BB9F22358D77EFCE78F948EFE9EB40F94FB1F7A
            F1F30E7A73D68F317FBC38E0F35F8F5F1A3FE0E3DF1C7C62F8EBA8780FF65DF8
            4B75F11A6B1770DA849134ED7B8E0BA411E3F77D30E5F0722AEFECDFFF00071C
            F8ABC17FB4658FC35FDA73E184FF000DF55D4A58D21BF88496E2CFCC608864B7
            954B6C24FF00AC12951D707140729FAF01811D452E735F25FF00C15B3FE0A177
            9FF04F6FD8D26F891A0E9B65AEEA577756D6D609364DBEE9467CC38232A13240
            079C1E6BF3C7C51FF074A78F3C67F0DFC3927C37F8536FAA789ADAC9AE3C5A64
            8A59ED34C6133A88A2118DDB4C61640E4B0FDE11CEDA093F70448A7F8874CF5E
            D4A5B15F9CBF0FBFE0BF7A1587FC136A3F8E9F107C257DE1FD55B539743B6D16
            19370D5EF55777EE19B9F27E600B0076ED6F422BE71D03FE0BA7FB667C7ED05B
            C61F0DFF0066D6BEF04CED21B5BA5D3AEAED648D7249F3032AB6075C66803F69
            F78C751CF1433AAAE4B003D49AFCE0FF0082427FC177AD7FE0A25F14352F873E
            30F099F04FC40B1864BA8D239FCCB7BE48F89130407475C1CA92D5ECDFF0551F
            F82B8781FF00E097BE00B3BCD62D64D7BC59AE233697A2432F9325C85C8DF236
            0948C363276938CE01E9401F5D6714DF31648CED656EA010735F86917FC1C69F
            B540F0D1F1F37ECFD6E7E1CAB799F6CFB0DD088C24F53741B6E3B6760AFD19FF
            00825C7FC157BC13FF000542F8597DA8683673689E24D14226AFA25CCC267B52
            DC0657C61E363C0201C77A00C7FF008281FF00C15AADFF0062AF8C9E1FF01E83
            F0CBC5BF153C55AA5936AD73A7E838DF6162ADB5A66FDDBE707A0CAE4F1919AF
            37D03FE0E20F85FF0015BC49E06F0BF80F41F11EADE3DF15EBB6BA4DE787EF2C
            E4B79F488A4602695C818711E4E7B71DABCB7FE0A1BFF05BFD27E05FED9D79E0
            3F827F0A61F891F18E18BFB12EF55219A4DBBF7FD8E348F2F2ED653B83326DC1
            E38AF03F19FF00C1647E3E7EC89F13749F881F193F652F0DF8746A4E2DA2D64E
            8EDA75DDCAB46731A5C4809076E78E01F5EF401FBB8ADF2A9E8BD4F3D3A1EB53
            1603BD792FECB1FB59F86FF6B8FD9AF40F8A5E1CB8F2741F1059BDD813B056B4
            68F724C923720796CAD9FF0074F15F9AFF00B4BFFC1CB3AEF893E3B5D7C3BFD9
            BFE19DC7C43D4ACE578FFB42447945D9538668A08F71F2C7F78B0247453D281A
            47EC16EA3766BF1BFE087FC1CBBE30F859F1B6C7C17FB4CFC23BAF00B5FB2335
            F4024864B10CC143B5BCA0E63E7258480819F96BF5F3C29E27B1F19F87AC356D
            2EEA1D434FD5214B8B7BA81B747346CBB95D4F20820F514035635293783DC541
            A8DFA58D9C933322A22962CC70A0633D6BF243F690FF0083903C4DE39FDA0AF3
            E1A7ECCBF0C6EBE266A7665B75FB2B4C2E42B04778E18F398D58801CB0CE47CB
            DA804AE7EBBE682D83F5E95F8EFF0004BFE0E3FF001F7C1CF8FDA7F807F6A1F8
            4D71F0EEE353640B7704725BBD88670A19A0903074E796590103F87B57EBC687
            ADDA788B47B3D42CAE23BAB2D42249E09E16CC73232865707D0823F3A01AB1A1
            9A40EA71C8E7A73D6A878875CB5D0346BBBDBCB84B6B3B485E69E666DAB12202
            5989ED8009CD7E3FFED17FF0734F897C6BF1CAEFC0BFB36FC336F1DCD68D22AD
            FCF1CB7125EEC254BC7044B9F2C11C39639C743D2811FB219AF8BFFE0B19FF00
            05584FF825A7C2AF0AEB11785DBC55A9F8AAFE4B3B681AE0408A9100D2124FFB
            24007DC57C7FFB37FF00C1CC9E24F07FC6FB1F027ED27F0C26F00DC6A12C686F
            ADE39217B06770A8CF04A1B31E4E4B0901033F2D657FC1DEBAAC3AEFC00F81B7
            9672C735BDF6ABA8CF03C67E596336D03AB03F91A0695CFD17FF0086F8D364FF
            008274B7ED0D1E8DA85CE99FF08B3789934A8DBF7DF2A3178B7056C0CA91BCA9
            03AE0D72BFF0492FF829DDBFFC14FF00E0EEB3E2A87C277BE119347D4DAC6482
            7B9FB4A4CB8051D5F620E410781DEBCEFF00668F8F16FF00B2EFFC101BC2FE3E
            9B498F5E87C33E037BC5D3EE0FEEAE9977958DF83F296001FA9A8FFE0835FF00
            05008BF6DEFD99BC457ABE04F0FF0082EE7C2BAA3412D9E869E459CFBA30FBC2
            E30AC7E619190D81D2806AC7E80505B02BF1A7C17FF0749DC69FF1D7E21F867C
            43F0F5B548F4D9A7B2F0A5AE92EDF6BD56E5252891C9C315F314172403B71D2B
            91BEFF0083A03E30FC0CF8D3A7D8FC5CF8271785B40D45FCCFB348935AEA115B
            EE1970641FBD2AA73808A0F1C8CD023F710366937AE3EF0F4EB5F8DDFB48FF00
            C1CA9E3DF11DD6ADAAFC03F8397DE29F87FE1904EA1E24D4ED279206390180F2
            C111A8E4658F38E2BEA6FF008234FF00C16674EFF82A2F85B5CB0BFD113C3BE3
            8F0BC6B35ED9433F990DD42481E7427BA82CA3EAC077A00FBA8C8A33F32FCBD7
            9E94EDD5F9A7FF00053DFF0082FB41FB227C7A8FE117C31F05CDF113E23978A2
            9E3595D6DED2590068E211A02D23B060703B1CF4E6BE74F881FF0005F1FDAF3F
            65CB4B1F127C58FD9DA3D27C237B2A47E6CF633D8ACDBCFCA8257380CC320647
            5EC681A573F6B756D521D2B4ABABA9587956D134AFFEEA8C9FD2BE32FF008271
            FF00C1697C0DFF00051BF8E5E37F03E81A0EB1A1EA1E13DD25BCD7922C8BA8DB
            A3ECF346DFBBF311C1E4822B9CF8B5FF00055ED4BE2CFF00C130E1F8CDF077E1
            DEADE39BCD79CE9D7BA4236F9B46241591E40884B85186046382B5F88FFF0004
            77FDAF7E24FECA1FB55F883C4DF0E7E1ADF7C48D7758B19209F45B4491DEDA37
            9D77905413C300013C648A01AB1FBE5FF0571FF82A4DBFFC12F3E14787FC4537
            84750F174DE22BF36714115C0B78ADD53E667790F0090C02827922BE80FD993E
            3645FB48FC06F08F8F20B0B9D2E1F1569B0EA09673FF00ADB5DEB968DBD70457
            C37FF05B0FF82945D7EC91FB267C33D5B56F85FA06B9AF78FA659A7D13C448B3
            DBE96F147148E1F8C971E60518E8579AF4AF8A7FF0515F1C7863FE09A3F0F7E3
            27C31F84B7DE35D67C5D63653A681645CAE990CB116662B1A9CA26DC0C74C806
            811F6D519AFC61F117FC1C1DFB52F85343BCD4B55FD96F50B1D36C2233DD4F71
            15DC71C31852C59894C01B413F4AF42FF824F7FC1C23E2EFF8281FED4F6FF0DF
            55F86B0D9C3716D34F26A3A7DD975B3F28672EA53EE9E1412402481401FAB464
            519F997E5EBCF4A76EAFCDDFF82A4FFC17BAD3F62DF8D56FF0A3E1DF8424F887
            F1266F2D25804AF1DBD9BCAA0C5184505A572194E01E86BE6CF889FF0005E4FD
            B1BF661D2ED3C53F143F6738F47F09DCC8B199AE6C27B157DDD13CD76C0623A6
            681A573F6D43027AD3448A4FDE5EB8EBDEBC27FE09F9FB757867FE0A11FB35E9
            1F117C390CD670DE96B6BDB09D8192C2E114178DBF0208CF620D7C2FFF000500
            FF008390E1F83BF1C24F85BF04FC1A7E2478B6CEEBFB3EEAF0B3C96E6E81E618
            635C34AC31824918C75E33408FD60DD8351DCC822B6918F45524F19FD2BF157C
            23FF0007307C5FFD9F3E24E99A77ED19F0566F0BE8BABE2413DB5ADC595C5BC5
            91991524DDE6E179DAA79C63BD7EA9F887F6C5F02E8BFB295C7C66B8D5619BC0
            31E8E7583748039920D858803203370542E796E3AD007C5B07FC1C7BE0FB2F18
            EA37BA87C2AF8876DF0AADF50934EB6F1DC30B4F6377246E51CB288942A820E3
            123138E3278AF7BFD83BFE0A8FE19FF8286FC64F1B69FF000FF4DBDBEF04784E
            DAC9A2F10CA1E14BCB897CC2F1796C3219760AFCE8F047FC16BFE307C79D3F52
            F0BFECCFFB2D58EA9F0F7477646B46B09B5043BCB6E69123DB1A97CE4AB33119
            E86BB2FF008273FF00C175A5F01FED3761F02FE29FC1AD23E11EA5ACEA09661B
            4CB7FECF16F77260A79F6ECA786C11BF703F371401FB2E0E682702BC57F6E6FD
            B87C17FB00FC05D43C7DE39BD682C60716F6B6D09027BEB82ACC91460F5276B7
            638009C601AFCADB4FF838B3F69AF8EEFA9789FE17FECF5F6FF05E9B33C724EB
            6973A87951A9C92D3205C310395038A00FDBCCF3457E7BFF00C127BFE0BC1E15
            FF008289F895BC17AF68CFE07F8916AAF8D31EE3CD82FC47932189F006E50AD9
            4C123072462BF41924DDF5F4A007514514005145140051451400514514005145
            1400514514005145140051451400514514005145140051451400504F14536419
            1D33EA2803F97CFF0082AF7C2D83E397FC1C03E30F06DD5C4D616FE2CF17691A
            4CF711AEE92059EDECE36651DD82B1207B57AFFF00C151BFE0DB9D77F63CF815
            7BF11BE1F78BB52F1B699A2A35C6AF63736261BAB28400CF2A3C6E7CC8D54127
            2300039ADCFDB1BF627F8A3E2BFF00838F6C75CB1F06EB975A1EABE33D0F5A8F
            514B43F647B7812D84B33498DA360858E33CE71DEBF7E358F0F5AF897C3F71A6
            EA36D15D59DE4060B98245DD1CAA460820F1823340EE7E31FF00C1ADFE24FD9F
            7C430DF5869BE15B7D17E38E8B6C3ED17B7D3B5D4D7D678C192D8B7310DC4075
            F703BD7CE5FF00073EF8AF56F107FC154B41D166B79EFAC34CD0F4F3636666DA
            B2C923C82403B02F88C671DAA2F8D9FF0004F6F8BDFF0004B6FF0082B678775D
            F84BE16F106BBE1CB9D6A3BFF0FBE9B1C8D1DC5BCCFB1ECE46505536AE5487EB
            B8357DDBFF000704FF00C1227C51FB6B5A787FE2B7C30B58EF3C7FE19B55B4BB
            B0560B2DFDB87F313CA2481BD1B7E41233E675E281F314A3FF0082907ED85178
            23FE11D83F61BD521D1D6D4D92DB45A80F2D60D9B7023F27181C0DBD7823A8AF
            1FFF00837C7FE09EFF001D7E007EDEDE2DF1E78C3C03A8FC37F0AEA9A5DD5B3D
            A5EC8BBA5796749628540E5847B4E1C8C1F2F1DEB53E1F7FC17C7F694F86BF0A
            ECFC15E27FD9BFC47AB7C47B1B75B0FB7BA5CC714D2A85457787CB625B77CDF2
            B7CD8E0F7AF7AFF8229FC0FF00DA7FC53F1B3C61F1BBF684D675FD2E3F16589B
            6D3BC297774E22803BC4FBCDBAB79516C11ED52B9243B6EEF40731F00FFC170E
            358BFE0E05F0AED54541A87868AA051D736D938E99E0FE55FAA3FF00070CC4B1
            7FC11FFE2D2C6301534EF94055C9FED1B5FC335F9F9FF058EFD8FBE257C4AFF8
            2EEF80F5AD0FC27AE6A9A3EB577A0DC457D6F6EED6EB1DBB44262EC170BB3CA6
            2727B8F5AFD26FF82E6FC2AF107C69FF00825C7C52F0FF0086B4CB9D5B56B8B4
            B4B98ED2005A59161BB8A69768192582231E3D334127C63FF06897C22D2A0FD9
            9FE24F8D1AD613AE6A1E24FECA373FC5F678EDA0915471F28DF2C838EBB457DA
            5FF05AEB286CBFE096DF191A155857FB16591D506CDC4950C4E08078EB9C9AF0
            9FF835F3E0A78B7E08FEC19AD41E2AD0752D067D63C4F717D676F7D1B453345E
            4C31E48600F589883EF5F4D7FC15CBE18EBBF183FE09D5F163C3FE1DD3EE354D
            62FB429DADED625DCF295018A281D5880702803F387FE0D7AD62FBC3DFB08FC7
            AD434FF31350B1B9966B7DBC32C8B6B94C7A7CC3F4AF14FF008358FC07A4F8CF
            FE0A03E3ED6B588E3BCD6F42D2657B0F380765796E0F9B30DDFC7B4A64F51B8E
            2BEBDFF8357FF67EF177C26FD967C7D73E2EF0DEA5A1DBEB9AE6DB7B7D46DBCB
            9250912063860095CB30CFB1AF94BE357FC13BFF00686FF824B7EDF1AC7C50FD
            9CF427F17F84EEE694C5169B1ADF7D96DE57691EC6E21077FA10E71D300D0544
            FD03FF0083923E1A7877C73FF04BCF186A9AADBDBFF687872E2D6F74A9D87CCB
            379C136038CF2ACC71D321735F0AFF00C13E3C5BA9F817FE0DA4F8FD7DA4C924
            37BFDA3736A6442410AEB6F1B9C8E9946EBEF5CFFF00C14AFE257ED7FF00B72F
            EC5DE22F17FC5EF09DAFC29F867E0B305DFF0065F92F1DC6B57AF2889014660D
            B42B337CE3E521700F15F4B7FC1B91F02B49FDA43FE08EDF10BC07AFA33E8FE2
            ED6AFAC262072374110DC3DD4A8FC4500CF8CFFE0839FB4AFC6CFD9AFE1DF8E2
            EFE0FF00ECF379F179757BF8ADEF35882F4C0D686352EB06023601DF9C1EA141
            AED3FE0A97F0CBF6B1FF0082AAF89FC1B79A87ECAFAF7816FBC35E7C0B7897C2
            65BA89D832798484DBB39E40247A76ABBFB3A68DFB4F7FC1BDDF1D3C5BA7FF00
            C2B5D4BE26FC35F1148A1AE34E57682EC44CDE54C8E8ACF13856F991C61B711D
            ABBDF8BFFB61FED99FF0584F15695E0DF86BF0FBC49F067C09F698FF00B4B554
            965859C2B86F3249E458DB62FDE58901248E41140731EA5FF05E7F04F883E1B7
            FC10C3E1AF877C572B49E24D15F47B0D4A42DE732CF15AB2BF23EF72A79AF42F
            F835AFE0EE93E14FF827147E208ECADDB50F156B97771753B28677F2DBCA5507
            07083CB6239C64D5AFF83817F66DF1878B3FE0935A3F86343B2D63C67AB783E6
            D37EDD2C4867B9BA5861D924F8C6E24B6189C70371AF4EFF00837B7E117893E0
            A7FC1313C15A4F8AB49BCD175469AEE736B751324D1A35CCACA5948046548232
            39045026CCBFF82EA78A7F672F037ECCBA3FFC2FED2F50D634F5D4B7E85A4695
            2982EEF2E46DDFB0860A91FCCA1F23386F7AF9CFE167FC158BF69BF8FF00F0DF
            49D37F66BFD971742F06DBC0B69A76B5AADC33DAF94836AB042B12F1C12417CE
            3A1E95D27FC1CEDFF04F8F885FB5AFC28F05F8B3C01A3DE7896E3C15F698352D
            32D896B996DE40ADE6A200779053E6006715E63FB207FC1603F696D4BE00E83F
            093C17FB33EB179E3CD02C57468B559CBDB69D6E6318599E374080A9C1393CE2
            811F2DFF00C11DBFE12CD23FE0E01587C650E9F63E2E9350D563D66DF4F23ECB
            15CF964C91A638DA39C8F5ADEFF82D022FC77FF82FEF86BC25E2899C786E1BCD
            174831313E5A5B49B59994762EF23FD428AB9FB187EC4FFB44FEC6BFF05C0F02
            6A9E34F0BDFEB97DE22D4FED9A9EB5608F3593DBDD6FFB449E66DC663DF93E61
            070BF2E78AFAA7FE0E15FF00824178E3F68CF883A3FC70F83F6536A3E2AD12D6
            3B4D4B4BB59043773C517CD14B093C16059C329E48005007EA8FFC201A0C5F0F
            FF00E11DFECCB11A1ADA7D85AC4C08D6E61D9B0A15C60AE33F535F2EFF00C13E
            BFE09E7F01FF00628F8DBF116F3E176B1F68F116A8FE5EABA63EA115C368A9B8
            BF93B1149450D920B0CF6AFCD7D23FE0E2AFDA91FC1737C295F83FF6CF8B10C3
            FD9EFAA46B37DA95F68C4C6D1976F99CE31D323278AFA67FE0805FF04BAF899F
            B3AEA7E3AF8B1F17A4BCD2FC61F112D64B55B0964DD71B6593CD927B82095F33
            214281F746EF43401E6DF167FE0A05FB3EFEC89FF051FF00185F7C0FF833AF7C
            56F8E5AE5D4F67A9CBA7DD98F4F176C434DF6650B212DBB7063B147279C5789F
            FC163FF687FDAEBF68CFD92AEB51F8A9F09741F863F0D6D7538264827943EA46
            56CC71618E4ED39E7E55EFC8AE4743F84DF1C3FE0887FF00053AF10F8F23F85D
            A97C41F0FEA1777AB6F73690398F52B3B99328CB22AB6C9C12A195F923757BA7
            FC140352FDADFF00E0B45FB39DF9D27E0FCDF0DBE1CF8514EB4B65A85C31D47C
            45322602A466304ED4676503AB81401BFF00B0AFC40D67C15FF06BF78F350D2E
            59BED70DA6A76D0B2F58629AE5925C7A70EE7F1A77FC1A11F0B7437F85FF0015
            BC64D1C337893FB5ADF49F31D4064B758448A4752A59DA407D428AF5BFF837EF
            E016B9E3FF00F8252F8D7E17FC4DF0AEADA2E97A96A57FA4C30DE5B79324904F
            0A9774DC072AECD823A30F515F17FC2DF85FFB517FC1BDDFB49F8A2EBC37F0FA
            E7E23FC37D79CC0F2DB24B25AEA30212627DC88F243328383B9486C77140EE7D
            59FF000767FC30F0EEA7FB18F837C4B2416ABE21D2BC4434FB4973891E19233B
            D091CB60A2707A1635F50FFC1017C63A978D7FE0959F0B6EF5699AE2782DE7B7
            8A5762CD24693C8ABF86D008F6C57E5AFED0B3FED67FF0705FC54F0BE8371F0D
            6F3E1D780744B82E5EE0CCB656ACD80F2C92B85695C2E7681185C8C1C57EE8FE
            C9DFB3968FFB277ECEFE10F879A0AB7F66F8574F4B047C6DF388197723FDA6CF
            E7405CF3EFF82AFF008B750F027FC137BE34EADA4B491EA167E15BD92174EB19
            F28AE7F535F853FF000412FDA0BE327ECE63E206A9F08FE015C7C62D42F1AD2D
            EFAFE1B810B68C15640B10001E242CCC4719F2C7A57F46FF0018FE17697F1A7E
            15F883C23AE5BBDD691E24B29B4EBC8940CBC72A90719E3BF7E2BF087E0CFC2B
            FDA63FE0DE7FDA77C5579A27C3EBEF8A1F0BFC484472CB61E63C17B1236626F9
            559E1913738391823D45009927FC1557C33FB587FC155B4DF0A43AA7EC9BE20F
            05DF786676315F8BE139F2E51CABB328DA377420FCBDB9AFD94FF8278FC35F15
            7C1FFD8B3E18F867C6A7FE2A5D0B40B5B3BF4F33CD689D2303CB2DFC5B07C84F
            7EB5F94BF1DBF6F4FDB1FF00E0AD77FA7FC3FF0084FF000BBC4BF097C2F7132A
            EA5AC9678A56008CEEB9609E520FEE206DC060D7EC8FECF3F0E754F847F03FC2
            3E19D5B56BAF10EA7E1FD1ED74EBAD4EE9DA49AFA58634432B679CB10C49EBDE
            806CF00FF82E6F8E352F877FF04AAF8C5A9E8F2491DF7F64C56A1A3FBDB2E2EA
            1864C7D6391BF5AF8AFF00E0D17F857E1F5FD9FF00E25F8C3ECB6927896E3C42
            34C694A2EE860581240AA39DB92CDC719C1AFD4CFDA6FE05E99FB4C7C05F16F8
            07595234DF1569B2D84AFB3779248252403B9560ADF80AFC19F80BA07ED65FF0
            6FBFC78F1458697F0DEEFE20780F5C9B6BA40B2CB63A8AC64F953C72C68EF0C8
            41C32B2907DE811FACFF00F0550FF8279FC09FDB27C21A1EB1F18B5083C2F1E8
            17491C3AD0BD8EC59D5D82881E46201563C633919AF833FE0ED0F0FD8F84FF00
            65FF00D9EF4BD2DB769B61777B05A92FB8B4696D6E14E7BE462BC77E3F597ED7
            1FF0701FC60F0B693A87C37BEF86FF000DF43BA12AB4F1C91DA5882409279669
            103DC485721635501481C8EB5F40FF00C1CB9FB1CF8B6E7F62EF80BE1FF05E85
            AC78A6DBC0373269D70F6B6E679BFE3D618E37C282DF3B46D927A16140EE7A6F
            8A9D57FE0D716CB01B7E1DBE727A7CCE6BCE7FE0D1A3B7F663F8B03EEB2EAF06
            7D57F70DFE07F2AF7CF137ECE7E34B9FF83761BE1DAE8F73378C61F878D6FF00
            D9CC84CCF204771185C6779E0018EB5E63FF0006B3FC01F197C1FF00D94FE215
            C789BC3BAA680DAD6B205A477F6FE4C92148C86237632033119E9405CF827FE0
            865F0FF4FF001D7FC1736E5B52B75B91A1CBAAEA3024A03A9955805723B302C4
            8FA57D25FF0007836936EB6BF046F0C718BDCEA50F9A1013B48B7EA7196030C7
            8E99AE4FFE0879FB1D7C49F859FF0005ACF1C6ADAF783F58D1F49D16D755135E
            5D5A18EDD4CB3AF9615D800E59493807380715ED5FF075D7ECF5E38F8CBE04F8
            4F7DE14F0DEADE21834BBFBB82E858C2F2BC2D384F2C90A090328173EF8A047D
            4DFF0004D4F855A2F86FFE08A5E11D3ED34FB736DAC780E4BEB88DD038B879ED
            8CAC5B8CB1CB1C13D2BF2EFF00E0D2B325AFEDF9F1195599623E099DC13F3658
            5FDA8CE3A74C019E3A57EC67EC4FF0A35CF077FC12D7C0BE11D5B4EB8B6D7E3F
            005BD94F64FC4893B58841111FC2C18E083D0F5AFCBCFF0083607F64FF0088DF
            073F6E2F8A9AD78B3C27AC687A7D8F8766D21EE6EAD0DBA3DD9BDB76D885800C
            BB6390E4678C1A00F48FDB0FF6EBFD9B3F642FF829C6ABE20F873F0A758F8AFF
            00B405C3B69B766C6E7FD12DEEF62C6C21255DBCFD8BB1CAA328CE00278AF28F
            F82AEFED33FB64FED37FB13F8BA6F1F7C15D17E17FC298A4B39AF8EA07CED472
            2E50C4637254E7CCF2D481183866AF3FF8EDFB3E7C6BFF0082497FC15E758F8D
            3A77C39D47E21787F52D6EFB54B4B886079A3BD82F77B4B1F9AAACD0BA79EE00
            61825062BDDBF6CBF88DFB59FF00C16DFF00673D5BC2BE17F83337C30F015A5B
            FF0069DFC9AD5D94BBF11CD00F363B7857CB04664550338078CF140D33D33FE0
            D8976B9FF824AF8F15B7C91C7E20D4638C0F98051636E7001E9862DF4C1F4AF9
            3FFE0D622B37FC1497E25349B597FB0EEF195078378BDFA77ED5F5A7FC1B07F0
            E7C7DE07FD913E287833C65E15D6BC396875F796CE7D42D4C2F3192DA38A41B4
            8048531AF4EA735F9E7FB34DF7ED01FF000455FDBB3C67AC5B7C21D73C4D71A8
            4773A4A44D6F2B417B0B4A1E39E29615607EE8F94F7E280B9F697FC1E16ACDF0
            8BE0CFFAC663A9EA79C7181B2DEBF413FE091773143FF04B8F81D2CEC8B0C7E0
            EB1725C8DAA3CB1CE6BF30FF00E0B7961F1C3F6FAFF8277FC0FF001D6BFF0009
            B54D03C4D69AC6A31EA5A2D823DDCB6A928816093046E1BFCB2791DEBD83F6CB
            D0FF00688F833FF0438F835E03F867E12D7E4D72EF42B5D33C52BA6DB192FB4D
            80C1FEA84601621B255B8E2811E2BFF059FF00F82A0F893FE0A07F1B6DFF0065
            FF00D9F166D634ABFBB169ABDE5910A75C9F3F3408CA0EDB74E59DF387238380
            6BF473FE0929FF0004ACF0DFFC133BE0145A7AFD9F52F1D6B3124DE21D63CB5C
            4926DC9823CF2214727032324026BF12FF00E09C5A87ED3DFF0004D6D6354D5F
            C25FB34EABABF88B5441036A9ACE837734F6B1AE7F75194206D39C96C1CF4E6B
            F41BF63BFF0082B57EDA5F173F690F09F873C65FB39CDA6F85F57BE58352BB1A
            7DD59B59C4CBF34C6593E4007A7524639E940193FB78FEDB3FB36FEC83FF0005
            38B8F12784FE17EB5F157F686C2E9F2476373B6D6DAE4A2C7B412AEC6E02A152
            55180E98278AF29FF82A17ED49FB667ED47FB1378E24F197C0FD0FE15FC25586
            DE7D48EA5209AFD505D406158A462A73E608F9118C86615E73FB5AFECD5F1B3F
            E0965FF0582D43E3BE87F0F751F1F786EFFC457BAF59DCC36EF341750DD8977D
            BB9557314886E1F05873B0115EF5FB59FC5FFDAC7FE0B67FB3EEB1E0BF07FC17
            97E16F827C937BA85CEB97656E35A78019520857CB07E7936019C0C8E7BD034C
            D1FF0083723C69A97833FE08E3F1E35CD3DA692F743BAD5EF2C1470C9345A52B
            AE3D3E651CD7897FC1A79F0F745F897FB5C7C54F176B56F05F788B43D3237B19
            254DCD6CD713912CABBF3F3B0C02C79E5B15F48FFC1AF7F09BC71E09FD9BBE2F
            780FC7DE0BD5747D16E359C27F695A9B737225B6F266886E00B2FCB8C8CE335F
            277C45FD947F686FF82097ED99AE7C4EF86FE1F6F16FC39D42495C5C08B7DACF
            6723EE36F72A3E6899093B5CFD4503DCFD98FF00828A7EC5BF0ABF6CFF00D9F2
            F345F89F241A5E8DA68FED08B588E54B6974AD809DEB23602A719218E0D70DF1
            17E1CFECF3FB36FF00C12924F09EBDA843A8FC0AD2F42FB2F9F1DD8BA9350819
            894F29D5BF7923B640DA7D3A57E537ED19FB74FED49FF05ECF0A69FF000DFC07
            F0AE5F0CF83EE6E91B5392DAE1E6B79D91BE579EE0F96AA8AC33B5558FCA7A9A
            FBBBF6AEFF00824678B351FF00821C697F00BC2B7835AF16784961D552366658
            F54B98DDE47B7566230079842124292ABD2813563E78FD8FFF00E0AB5E20D27E
            147FC2BDFD8BFF00659D735CF0BE8B3B91AAEA17E76B4ECDF3BCFE5A842DB704
            93213B780335F0CFFC1427C43F1AF58FF82A0F84758F8E3A5685E1DF1F5E3697
            75F62D2CEC8ED6DBCF548B79DFF7CF2093CE01AFA83FE095FF00F0512F8E9FF0
            4E3F84979F04A6FD9B7C5BE2ED52DF5496EACBCA49ED1D19D5176480C4DFC438
            60D8E339AF26FF008291FEC69FB5A78EFF00684F08FC76F881E09B89356F175E
            402DB4CD0035D368822953CA865540DB490C718E188E7BD023E81FF83BC3C63A
            94DF11BE0A7875E7921D0E6B4BEB960A5B6C93096DD324776504E0F60ED5FAC9
            FF0004F1F85FA0FC23FD87FE15E8BE1DB782D74C87C2DA74CB242A36CCD2DB23
            BCC091962EC77127B115F357FC1687FE098BAC7FC1503F642F0DEA3A3DBC3A77
            C4DF0B5BA6A16169725596612C68D3D997C803E65421890098FA8CD7C27FB36F
            FC15AFF6B8FF0082797C19B5F83FE27F805AC789B50F0FC034DD1AFAEA1B88E5
            B68D70A81C223ACEA170176B01C6091401E6DFB7F6896BFB33FF00C1C95A5CBE
            078D74D6BAF13689732DB5AA8C892E63B7371E9852269090075971DABFA35B75
            5C6776E380A71F8FF8E6BF0FBFE093DFF04ADF8C5FB51FEDCF27ED31FB43E937
            5A1AFDB8EAF69A7DF4423B8D4EEBE6588F94388E3886D2BBB93B178AFDC345E8
            D82BCE7007B628024A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
            0A28A2800A28A2800A28A2800A28A2800A28A2800A1BEED1450043E56D2ACABD
            F8078DBEBDB3FD2A62370C1E868A2802168B2C0EDC8E9CE3E4FA71DE9EC84A9F
            988F4E29F4500445328576F5E0E4707FCFBD2EC60981BBEB81C7D2A4A2802030
            ED2BDB69E028E073F4FCEA591729FD40C91F4A7514011AC640E81791C0E40A91
            8E14D14500579E126D9FFBF8382003B7E9C7F43F8D7E176B1FB2AFEDADFF0004
            86FDAD3C59E36F85BA66A5F17FC15E24BA796E206B9374B788C59D4CD0960EB2
            2E76864048E396FBB5FBB345034EC7E05FED73F10BF6E8FF0082C1784AC7E18C
            DF046EFC0DE157BB49AF1E688DB4536DFB8659AE195F68C962AA0F231D715FAC
            9FF04B3FD85E1FF827AFEC75E1BF879F6B5D4354B72F7FAADCA0C2CD77310F20
            1EA15B0A0F702BE90A2806C8CA60617E55CF38FF00F5535A2C738C73C85CF3FA
            D4D45022368F706CAF3FA1F4A141CF3CD49450035C647DDDD8E4547B0ECC2EE5
            2A3F87FCE33F9D4D450042C84FF0F19C6DE981F80FFEB573BF163C47A9783FC0
            3AC6A5A3E8977E24D4ECED1A4B6D2ADE68E192F5D412B1AB4842066385CB1006
            792066BA8A2803F0DBE3CFEC4DF123F6B8F8E1E1DD6BE10FECD7E2AF80BE2EFE
            DF1AAEB7E34D475C8ADC9563B9D76C32333EE65DE700ED236E32715FB71A159C
            D65A55BC371234D3471849256E7CC61D4FBE79E4F35A34500472C7BC739EBC70
            383F9507708C8E7F0FFF0057F2A928A0087CB27D5594F5C671F4A52AC0E3A7FB
            BC71F954B45004663F994FBF626A4A28A0047FBA7AF4ED51306CF0BD7DCFF862
            A6A28023DBD3AE33CE3AFE79A928A280061B94D42E857FBDB4F18F4FC306A6A2
            8022588247F2AE3D940FCE9254F3030F2C32B7556FFF00562A6A280217460DBB
            E6E9C90C727F0C5020C8F9BE661D381C0F41C54D45004223CB37CBF7BBE396FA
            F1DA9268B7A32F961958FCCBD88FC462A7A28023F27279EB8F98E3A8F4A6AC6C
            AEDF7BE6C739E7F2C62A6A2802370D27CBF99FF2282AC138E4F6CF4A928A0085
            61D9F280DB79C7F0E3F2FEB4A63DAB9C65BA679CFF005A968A0085E32CA72BBB
            D41C7CDFA53963656EA7FDECF27EA318A928A00698F8EA7F214D2A777DDE71D4
            753FA549450042E9F2631F2F7EE7F2C1A72AED5E9EE3FCE2A4A2802110855DBB
            4EDE78F5CFB0EDF5AF983FE0A75E22BC3F09ADFC3573F037C49F1ABC31E22900
            D52CF4BBA821FB398DD5903ABCA8CC1B1D811EBE95F52D1401F95BFF000468FD
            867E2B7C1DFDB4BC6DF1027F04EA5F05FE10EAF6020D3FC1975AD7DB4DC4DD04
            A63462B1904138F7AFD5074CA9FA7634EA2802131E4676B6EEC4707FCFD6828C
            460AFCA7AF39CFE18C54D450046C1B0DC37CDDFAD208B1CEDF9BD73CFF005A96
            8A008D7713D0F5EB9E7F5A928A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2803FFD9}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture2: TfrxPictureView
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 60.472480000000000000
          Width = 162.519790000000000000
          Height = 45.354360000000000000
          Frame.Typ = []
          Picture.Data = {
            0A544A504547496D616765FB680000FFD8FFE000104A46494600010101006000
            600000FFE110DC4578696600004D4D002A000000080004013B00020000000600
            00084A8769000400000001000008509C9D00010000000C000010C8EA1C000700
            00080C0000003E000000001CEA00000008000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000416D61646F00000590
            030002000000140000109E9004000200000014000010B2929100020000000334
            360000929200020000000334360000EA1C00070000080C00000892000000001C
            EA00000008000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000323032303A30343A31392030383A35393A30360032
            3032303A30343A31392030383A35393A303600000041006D00610064006F0000
            00FFE10B18687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E30
            2F003C3F787061636B657420626567696E3D27EFBBBF272069643D2757354D30
            4D7043656869487A7265537A4E54637A6B633964273F3E0D0A3C783A786D706D
            65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F223E3C7264
            663A52444620786D6C6E733A7264663D22687474703A2F2F7777772E77332E6F
            72672F313939392F30322F32322D7264662D73796E7461782D6E7323223E3C72
            64663A4465736372697074696F6E207264663A61626F75743D22757569643A66
            616635626464352D626133642D313164612D616433312D643333643735313832
            6631622220786D6C6E733A64633D22687474703A2F2F7075726C2E6F72672F64
            632F656C656D656E74732F312E312F222F3E3C7264663A446573637269707469
            6F6E207264663A61626F75743D22757569643A66616635626464352D62613364
            2D313164612D616433312D6433336437353138326631622220786D6C6E733A78
            6D703D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F
            223E3C786D703A437265617465446174653E323032302D30342D31395430383A
            35393A30362E3435393C2F786D703A437265617465446174653E3C2F7264663A
            4465736372697074696F6E3E3C7264663A4465736372697074696F6E20726466
            3A61626F75743D22757569643A66616635626464352D626133642D313164612D
            616433312D6433336437353138326631622220786D6C6E733A64633D22687474
            703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E312F223E3C
            64633A63726561746F723E3C7264663A53657120786D6C6E733A7264663D2268
            7474703A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D
            73796E7461782D6E7323223E3C7264663A6C693E416D61646F3C2F7264663A6C
            693E3C2F7264663A5365713E0D0A0909093C2F64633A63726561746F723E3C2F
            7264663A4465736372697074696F6E3E3C2F7264663A5244463E3C2F783A786D
            706D6574613E0D0A202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020200A20202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020200A2020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020200A202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020200A20202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            0A20202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020200A2020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020200A202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020200A20202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020200A2020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020200A202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020200A20
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020200A20202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020200A2020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020200A202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020200A20202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020200A2020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020202020200A202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            200A202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020200A20202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020200A2020202020202020202020202020202020202020
            20202020202020203C3F787061636B657420656E643D2777273F3EFFDB004300
            07050506050407060506080707080A110B0A09090A150F100C1118151A191815
            18171B1E27211B1D251D1718222E222528292B2C2B1A202F332F2A32272A2B2A
            FFDB0043010708080A090A140B0B142A1C181C2A2A2A2A2A2A2A2A2A2A2A2A2A
            2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
            2A2A2A2A2AFFC000110800AC02B603012200021101031101FFC4001F00000105
            01010101010100000000000000000102030405060708090A0BFFC400B5100002
            010303020403050504040000017D010203000411051221314106135161072271
            14328191A1082342B1C11552D1F02433627282090A161718191A25262728292A
            3435363738393A434445464748494A535455565758595A636465666768696A73
            7475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9
            AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4
            E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F010003010101010101010101
            0000000000000102030405060708090A0BFFC400B51100020102040403040705
            040400010277000102031104052131061241510761711322328108144291A1B1
            C109233352F0156272D10A162434E125F11718191A262728292A35363738393A
            434445464748494A535455565758595A636465666768696A737475767778797A
            82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6
            B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2
            F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FA468A28A0028A28A002
            8A28A0028A28A0028A28A0028A28A0028CD15E2BF1ABE29EBDE0FD6ED74AD03C
            A80C9079AF3BC61C9E48C0CF1DA803DAB3457C85FF000BCBC79FF4164FFC074F
            F0A3FE17978F3FE82C9FF80E9FE140CFAF68CD7C85FF000BCBC79FF4164FFC07
            4FF0A9ED3E3D78E6DAE16496FA1B8407E68DEDD70C3D32066803EB6A2B23C29A
            E7FC249E15D3B58F2BC9FB640B218F3F749ED5AF40828CD233055C9E07BD7CE7
            F187E30DF1D74E8FE12BF7B782D5B13DCC0D8323FA03E82803E8D073D28AF2BF
            813E35D4FC5BE1BBC8F5A98DC5CD8CA104C7ABA91919F7AF54A0028A28A0028A
            28A0028A28A0028A28A0028A28A0028A28A0028CE28AE3BE2478F6D7C09E1A7B
            B936C9792E52DA027EFB7A9F61401D8647AD2D7C567E2778C0EB5FDA5FDBD7A2
            5DFBBCB129F2FE9B3A63DB15F5D783F5A6F1178434CD56450B25D5B248EA3A06
            239FD68036A8A28A0028CD23B0452CC400064927A57CD1F15FE326A375E216D3
            7C25A8496B676676BCF0315333F7E7D074A00FA5F8A5AF36F827E32BFF001878
            3647D624F36EED27309971CC8B80413EFC9FCABD26800A28AF34F89DF17ECBC0
            CBF60B28D6F75675C88B3F2C43B163FD2803D2F228CD7C6DAAFC60F1B6AD333B
            EB535B02784B53E501EDF2D334CF8B7E36D2E65923D76E27C1E56E5BCD07FEFA
            CD033ECCCD15E55F0BFE335A78CE51A66AF1A596AB8CA007E49FD76FA1F6AF55
            07340828A6BBAC685DC855519249E95E19E3EFDA0934EBC9B4EF08431DC49192
            AF7928CA03FEC8EFF53401EEB9A335F1A5DFC5AF1CDFC85DB5DB94E7A41F201F
            955AD27E3578DF4A9D58EAAD7680F31DCA8707DB3D6819F60E68AF3BF867F162
            C3C7B0B5ACC82CF5589773C05B21C7F794FF004AF44140828A28A0028A283C0A
            0028AF17F899F1D63F0F5ECBA4785D23B9BE8F2B2DC3F31C47D07A9FD2BC5EFB
            E2B78D75098C92F882F2324F481CC607E0B8A067DA19A2BE3DD13E34F8D346B8
            563AA35EC60FCD1DD0DFB87D4F35F44FC37F89DA778FF4F21145AEA308FDF5AB
            1FFC794F71408EE68A2B27C45E24D3BC2FA3CDA96AF3886DE21F8B1EC00EE680
            357229735F2E78ABF683F10EA970F1F879534BB4C90A76869187A927A7E15C77
            FC2CEF1AF9BE6FFC2457F9CF4F38E3F2E940CFB533457CB7E15FDA0FC47A5DD2
            47E2054D52D09018ED0B228F50475FC6BE8FF0E78934EF14E8B0EA7A44E26825
            1F8A9EE08EC6811AB451597E21F10D87867459F54D5A610DBC2324F763D801DC
            9A00D4CD19AF963C59FB40788F56BA923D01974BB30485DAA1A461EA4F6FC2B8
            F5F899E3359BCD1E23D4339CE0CEC47E59C5033ED7CD15F33782FF00683D5EC6
            F22B6F15AADF59B100CE8A1648FDF8FBD5F47E9BA95AEADA7C37D61324F6F3A0
            78E4439041A045AA28A2800A3348EC110B310001924F6AF9A3E2BFC65D4AEFC4
            2DA6F84B5096D6CAD0ED69E06DA667EE73E83A5007D314579BFC13F18DFF008C
            3C18F26AEFE6DDDA4E626971CC8B80413EFC9AF48A0028A28A0028A28A0028A2
            8A0028C8A4242A92780064D7CC5F18BE3DDFB6A971A0782EE7ECF6F0318E7BD4
            FBD230E0843D87B8EB401F485F6B7A5698A5B51D4AD6D40FF9ED32AFF335CEDD
            7C58F02D9B627F1358E7FD872FFC81AF87D4EB3E24D43629BDD4EEE53F77E695
            D8FEA6BA287E10F8EE78C3A786EF003FDE50A7F23401F5B47F19BE1FCAE153C4
            D6B9F7571FCC56E69DE35F0CEAC40D3B5DB09D8F455B85C9FC335F1737C1FF00
            1EAF27C3777F8007FAD61EABE18F10786DD5B56D2EF6C39F95E4899413ECDD28
            03F4215958654823D452D7C47E03F8D7E29F065EC6B25E49A969D91E65ADCB17
            E3FD963C83F8E2BEC5F0B7896C7C5BE1BB4D674B7DD6F729B803D54F753EE280
            35E8A28A002B93F1B7C38D07C771C5FDB30BACF08C473C2DB5D47A7B8FAD7594
            50078E7FC336785FFE821A87FDF4BFE147FC336785FF00E823A87FDF4BFE15EC
            75CE78EFC596DE0CF0A5D6AD7254BA2ED82327EFC87A0FF1F6CD007CD5F15FC1
            BE17F03DCC1A6E8D797575A8B0DF2891815897B6703A9AC2F879E07BAF1D789E
            2B084325AA10F75381C227F89ED58F713EA3E2AF1234AFBEEAFEFE7E0752CCC7
            007F4AFAFF00E1CF81ED7C11E1582CA35537720DF75301CBB9FE83B5033A4D37
            4FB7D2B4DB7B1B38C476F6F188E351D80A6EA5AB69FA3DA35D6A9790DA42A397
            95C28AB4FF0070E3AE38AF8BBE216B1E20D5FC657D0EBB2DC34B14EC896E73B5
            06780ABD3FC6811E8FF133E3BFF68DBCDA3F8399D20932B2DF11B5987A20EA07
            BF5AF0C249392727D4D7AAFC3EF81DABF895E3BED7964D374DCE76B8C4B28F60
            7A0F735C5F8FB4BB5D17C75AA69DA7C7E5DB5B4E638D724E00F7340CF66FD98B
            FE41BAEFFD768FF91AF78AF07FD98BFE41BAEFFD768FF91AF78A041451450014
            514500145145001451450014514500145148CC154B12001D49A00A3ADEB367A0
            69171A96A53086DADD0BBB13FA0F7AF8DFC73E2FBFF1F78B24BD915CA16F2ED6
            DD79D8BD8003B9FD6BB0F8DBF12CF8A3583A26932FFC4AECDFE6753C4F27AFD0
            76AE83E06FC34DD6EDE2CD6A1E021FB0C4E3AF1FEB31FCBF1A067837D6BED0F8
            51FF0024B742FF00AF55AF8CA5FF005CFF00535F66FC28FF00925BA17FD7AAD0
            076154356D734CD0ECDAEB56BD86D215192D23E33F41DEADCECEB6D2B4432E10
            951EA71C57C4BE2ED5BC41AEF89AE975E92E65BB5999040C0FEEF9FBAABDBF0A
            047A47C4FF008E526BB6F368DE14324164FF002CD747E57947A0EE07EB5E2BF5
            AF5FF879F02752D79E2BFF0013AC9A7E9F90442789651F4FE11F5E6BCDFC5567
            0E9DE2DD52CED136416F74F1C6B9CE0038140CF7CFD9A3FE455D57FEBEFF00F6
            515EDB5E25FB33FF00C8ABAAFF00D7DFFECA2BDB681199E23D622D03C377FAAC
            DCA5A40D2119EB81D2BE1FD5F54BAD6F58B9D46FA432DC5CC864763DC935F54F
            C7BBE6B2F85576AA706E668E138F4249FE95F27DA4666BD8630325A4518FC681
            9F49FC20F84DA3C1E16B5D67C416115EDEDF209512E143A468790369E32463AD
            6D7C43F841A06BDE1EB99349D3ADF4FD4208CC90BDB46230C40CED2A3839AF45
            B1B54B2D3E0B58C61218D5140F403153B286520F42306811F045ADCDCE97A8C5
            716EED0DCDB4819581C15606BED6F01F8913C59E0BD3F575C6F9A3C4A07675E1
            BF506BE40F1DD92E9FE3ED6EDA35DA8B7B29503B02C481F91AF79FD9AF5033F8
            3751B3739FB3DDE547A0651FD7340CDFF8EBADDDE8BF0D2E3EC2595EEE55B769
            17F854F5FCC0C7E35F34F81BC2D378CBC5F67A4444AA4ADBA671FC283963F957
            DA1AD68961E20D266D3757B75B8B59861D1BF9E7B1AC3F09FC38F0E782A69A7D
            12D0C73CC36B4B23966DBE833D05004FA47807C33A2E9E96969A2589555C1792
            05766FAB1049AF1EF8F3F0DB49D27484F126896D1D9912AC53C312ED46CE70C0
            741F857BB4DAE6976DB85C6A567115FBDBE7518FCCD782FC77F897A56B7A5C7E
            1CD0A75BB02512DC4F19CA0DBD141EFD6811E47E0ED626D07C63A66A56EC4343
            70A4807EF293823F2AFB9074AF8BFE197856E7C57E39B1B58A266B786412DCBE
            385407D7DFA57DA23A5030A28A28105717F15FC54DE12F87F7D7B6EFB2EA5020
            80F70CDC647D064FE15DA57857ED37785347D16C81C09277908F5C0C7F5A00F9
            E9126BEBD545CC93CEF81CF2CC4D7D6DE07F845E1DF0F6816EB7FA65AEA17D22
            069E6BA8849F31EC0364002BE6EF86362BA8FC4CD0E071951769211EBB4EEFE9
            5F6A0E00A00F0EF8CFF09F494F0D4FE20F0ED9259DCD98DF34500DA8F1F73B47
            008F6AF0BF09788AEBC29E28B3D5AC98878240597380EBDD4FB115F6B6BD64BA
            8E817D66E32B3C0F191EB915F08C836CAC3D18D007DE9A75F43A969B6F7B6CDB
            A1B88D6443EA08C8AF97FE3EF8B66D6BC70FA44521FB1E99F26C078690FDE27D
            C74AF6CF82FA8BEA3F09F4A676CB40AD07E0A703F4C57CB9E3A2FF00F0B035E3
            3677FF00684FBB3EBBCD033ADF833F0E21F1C6B535D6AA18E996382E80E3CD73
            D173E9DCD7D2127C3FF0A4BA77D8DBC3DA7795B76F16C81BFEFAC673EF5E7DFB
            36795FF083EA1B71E67DB3E7F5FBA315ECB401F227C5FF00870BE04D762974FD
            CDA65EE4C3B8E4C6DDD09FD6B43E0378C65D07C689A4CF21FB16A67CB2A4F0B2
            7F091EE7A57A4FED24911F01D933E3CC5BC1B3FEF939AF9AF4CBC7D3F56B5BC8
            C957B79925523B1520FF004A00FBD857CC5FB4378B65D47C551F87EDE422D74F
            50D2283C34ADEBEB818FCCD7D2D63379FA7DBCDD7CC8D5BF315F1478FEF8EA3F
            1075BBA273BEEDF07D81C0FE5401BDF083C05178E7C56D1EA018E9D668249C29
            C6FE785CF6CF3F957D3127C38F083E9FF633E1DD3C478DBB85BA87FF00BEB19F
            D6BCF3F66AB148BC2BA9DEE3E79EE4213EA147FF00646BDAE811F1AFC55F03AF
            817C60F676DB8D8DC2F9D6C58E70BDD73EDD2BD17F672F18482E6EBC2F792168
            CA99ED771FBA41F9947D739FC0D5DFDA6AC8369BA2DEE3E6491E2CFD467FA579
            2FC2CD49B4BF89DA25C29C0371E5B7B86057FAD033ED2ED59FAB6B9A668766D7
            5AB5F43690A8C9695F19FA0EA6AE4C5D6DA468865C212A3D4E38AF893C5BABEB
            FAEF89EE86B92DC4D74B332081B3F273D157B7E1408F48F8A1F1CA4D76DE6D1B
            C2BE64162FF2CD747E57947A0F41FAD78B1393CF5AF5FF00879F02352D79E2BF
            F142C9A7E9F9C880F12CA3E9FC23F5AF37F15D941A778BB54B3B44D904174F1C
            6B9CE003802819EFDFB347FC8A7AA7FD7DFF00ECA2BDAEBC53F668FF00914F54
            FF00AFAFFD9457B5D020A28A2800A28A2800A28A280399F88BA85C697F0EB5CB
            CB2DDE7C768FE5EDEA09E3FAD7C166CEF19896B79892724943CD7E82F89B4BB8
            D6BC377DA7D95DB595C4F1158EE1464C6DD41AF066F847F15E376697C5F66B0A
            E4B484F45F5C6DA00BDF0DA2D33E147C0E6F19DFE9C6EAFAE487900C09369936
            2A827A0C60D7A27C3FF8AFA378EB439750631E96D1CA6230DD5C2063C0391EDC
            D7CCDF157E21DCEB71DA7862CF506BBD3B4A511C9703817930186938ED9CE3F3
            AE7351D1B41B38F42FECFF001119FEDAAA6FC08C8FB265B07EB819FCBDE981F6
            9F88FC75A2787FC3F7BAA35EDB5D7D9623279315C2169303A0E6B94F07F8DF45
            F8DBE1DD5ACAE74768208C797224E55F3B81E411D08AF990683E176F1F49A4C9
            E2B71A204C8D47CA27276E718FAF19A77C39F1EDC7C39F1A7DB2CE46B8D39DFC
            AB98870268F3F7B1EA07228039AD7343BBD1F5EBDD3E5824DF6D3BC67E53CE0E
            2BE90FD95F539DBC3FACE95702455B699268C30207CE0838FF00BE453B59F87B
            E30F17EA327883C1DE3180E93A87EFE0474198C1FE1CE3B577DF0BFC13AF784E
            CEEDBC4FAE7F6A5CDC15DAA881522033D38C9273FA5203BEA28A2800A28A2800
            3D2BE58F8F9E343AF78B468D672E6CB4CF95B69E1E53D4FE1C0FC0D7D13E35F1
            027863C1BA96ACE4068213E5E7BB9E17F522BE22B9B892F2EE5B89D8B4B2B977
            27B9273401ECBFB3B78406A3AF5CF88AEE3DD0D8FEEE0C8E0C84727F0047E75F
            4B0E2B8DF853E1F1E1CF873A5DAB2859A58FCF9B8EACDCFF002C0FC2BB2A002A
            8CDA2699717C2F66D3AD64B95E93342A587E38ABD450026001C0AF8BBE29FF00
            C950D77FEBE9BF9D7DA46BE2DF8A7FF25435DFFAFA6FE740D1EB5FB317FC8375
            DFFAED1FF235EF15E0FF00B317FC8375DFFAED1FF235EF140828A28A0028A28A
            0028A28A0028A28A0028A28A002BC5BE3A7C4B1A2E9EDE1BD1A7C5FDCA7FA448
            8DCC287B7D4FF2AF43F885E29FF843BC157DAC2A6F96250B129E9BD8E173ED93
            5F185FEA171AB6A935F6A3334B3DC485E491B9249A00ED3E13FC3D97C73E240F
            768C34BB560F7327F7CF6407D4D7D6E2DA2B4D34DBDBC6B1C51C455114602803
            A5783F843E34F833C1FE1BB6D274FD2EFF006C43324985CC8FDD8F35B72FED25
            E1A921741A6DF82CA4745FF1A067CD32FF00AE7FA9AFB37E147FC92DD0BFEBD5
            6BE3176DCE587739AFA07C03F1CFC39A0F8534CD1751B7BC492DA211BCAA8197
            3EBEB401EFB541B44D2DAFFEDADA75A9BAFF009EC615DFF9E3352E9BA8DB6ADA
            6C17F612896DEE10491B8EE08C8AB540840302BE1EF1C7FC8F9ADFFD7ECBFF00
            A11AFB8ABE1DF1C7FC8F9ADFFD7ECBFF00A11A067BAFECCFFF0022AEABFF005F
            7FFB28AF6DAF12FD99FF00E455D57FEBEFFF006515EDB408F21FDA3D88F8776E
            BD9AF533F9357CDFE1D50DE25D395BA1B94CFF00DF42BE96FDA2ADDA6F866B2A
            8CF9379193EC08615F3169537D9B58B49BFE79CCADFAD033EF51D28A4460E819
            4E41190696811F17FC56007C51D6F1FF003F07F957A97ECC6E7CAD793B6E88FF
            003AF26F89738B8F895AEC80E7178E9F91C7F4AF5FFD992DC8D2F5CB9C70D324
            79FA0CFF005A06CF78AE57E24C3ABCFE00D523F0F193EDED17C822FBE47703DF
            19AD6D6FC45A5F86EC4DDEB77915A419C0691B1B8FA01DCFD29BA1789748F13D
            89BBD0EF62BB841DAC50F2A7D08EA2811F163689E219A6756D375292407E71E4
            393F8F159B716B7169298EEE192090754910A91F81AFBE0431F5D8B9FA5721F1
            1BC0BA778BFC2F770496B18BD8E32F6D32A80CAE071CFA1F4A00F28F813F10B4
            0D2A34F0F5ED9C7637770FF2DEE789DBB0627A1E7E95F448E95F00E5A2972A70
            CA7823B57D83F0DFC4D79AEFC23B6D49879D7B0C0F113DDDD0633F53C5033BCC
            8A5CD7C35ABF8B3C43AA6A73DCEA3AA5E19DDC96512B2853E800E9F4AA5FDB7A
            AFFD04AF3FEFFB7F8D023EF1C8AF9E3F69C909D4B434EC2290FEBFFD6AE53E0E
            78AFC4317C43D3EC61BCB9BAB6BA72B341239752B83CF3D31D7F0AEC7F69BB63
            BB42B903E5C49193EFC1A0679EFC1600FC58D233FDE7FF00D04D7D895F1AFC20
            B816FF001574666380D294FCC115F65502192FFAA6FA1AF826F405BE9C0E8246
            FE75F795F4CB6F6334CE70B1A163F80AF82A762D71213D4B13401F557ECF4C4F
            C2B8C1E76DDCB8FCC57917C7AF0ACDA1F8F65D4E38F167A9FEF55C0E03FF0010
            3EF9E7F1AF63F8010187E13DA9618F32E2571F4CFF00F5ABB3F14785B4CF16E8
            9369BAC43E645272AC3868DBB303D8D033E61F83DF1223F026B5341A9863A65E
            E04A5464C6C3A363F9D7D18FF137C1A9A7FDACF886C4C7B73B44C0BFFDF3D7F4
            AF06F127ECF5E25D3AE59B4268B53B5CFCBF304703DC1EBF856358FC0EF1CDE4
            EA8FA62DB2E7992695401FAD004DF17FE25AF8F35586DF4D0C9A5D993E56E183
            2B1E0B9F4E3A579B57B6F8BBE16E9DF0EFE13DF5D5E4A2F358BA78A259B1858F
            E704841F4079AF17B681AE6EE281065A470800F738A00FB9FC3649F0AE9A5BAF
            D963CFFDF22BE20D61CC9AD5EBB7569DC9FCEBEE9D321FB3E936B0F4F2E145FC
            9457C3BE26B5365E29D4ED9860C573229FC1A803E92FD9CC01F0D653DCDF49FF
            00A0AD7AD578FF00ECDF387F005D420F31DEB123EAAB5EC1408F18FDA580FF00
            84274E3DFEDC3FF406AF9FBC24C53C65A430EA2F22FF00D0857BCFED317017C3
            5A4DBE797BA2F8FA291FD6BC33C1101B9F1DE8B0A8C96BC8FF00F4206819F710
            E9541B43D2DAFF00EDADA75A9BAFF9EC615DFF009E3357C74A2810806057C3DE
            39FF0091FB5BFF00AFD97FF4235F7157C3BE39FF0091FB5BFF00AFD97FF42340
            CF77FD9A3FE453D53FEBEBFF006515ED75E29FB347FC8A7AA7FD7D7FECA2BDAE
            8105145140051451400514514005782FED15F1365D0AC078534794C777791EEB
            A954F31C67F847B9FE5F5AF7AAF8C3F68C24FC68D447A43063FEFD2D00796E72
            D9F7AF45F1241AA2C1E0CFB47852CECF7C71FD9FCB5FF9087CE31BF1EBC71D7E
            6AF39AB93EAFA85CADB0B8BC9A416836DB86727CA19CE17D39A607A8416FACFF
            00C2F29631E08B17BEF24E747E3CA03CAFBD9E9D39FAD7966A01C6A371E64220
            6F35B312F4439E9F85585F106AEBAB1D51751B917E460DCF9A7CC3C63EF75E9C
            567BBB48E5DC96663924F73401EE3FB3C7C4F9743D762F0AEAB296D3EFE40B6C
            58FF00A994F18FA371F8D7D600E6BF3EBC12C478EB4423B5F45FFA18AFD038FF
            00D5AFD05003A8A28A4014514500787FED2BAD9B7F0FE99A3C6D83753196400F
            555E9FAFF2AF9FB43B33A8F8834FB20326E2E638BFEFA603FAD7AE7ED311CE3C
            59A4CACA7C8366555BB6779C8FE55C7FC1BD124D6BE27698150B456AFF006891
            B1C2EDE47EB8A067D816D1082D6289460220503E82A5A28A041451450006BE2D
            F8A7FF0025435DFF00AFA6FE75F689E95F19FC5AB792DFE296B4B32952D39719
            EE0F20D007AAFECC5FF20DD77FEBB47FC8D7BC57877ECCB6B2A681ACDCB2911C
            9708AA7D485E7F9D7B8D0004E2B2353F15E83A2DC2C1ABEB165652BFDD49E754
            27F026B55F3B4E3AF6AF86BC5B777F79E2ED4E5D55E46BAFB4B87DFD4609007E
            5401F71DBDC4375024D6D22CB138CABA1C861EA0D495E33FB375DEA171E10BF8
            AE99DED21B8C405BB1201603DBA7E75ECD40051451400514514005145140187E
            31F0C5BF8C3C2F77A35DB144B851B5C7F0303953F9D7CED77FB39F8BE2B965B4
            9AC6E2207E5732EDC8FA1AFA968A00F94FFE19DFC6DFDDB1FF00C08FFEB523FE
            CF3E35446665B1C01938B8FF00EB57D5B51DC0CDBC807753FCA81DCF81181562
            0F50715E91E1AF81DE27F12E9767A9DB49690D9DD2075779790A7DB15E79770C
            96F7B3432A95911CAB291C839AFB37E1743241F0C7424994AB7D911B07D08C8A
            00D6F0AE84BE1AF0BD8690929945AC410C846371EE7F3AD7A28A0415F0EF8E3F
            E47CD6FF00EBF65FFD08D7DC55F10FC40B796D7E21EB914E8C8E2F1CE08C704E
            47E845033DC7F667FF00915755FF00AFBFFD9457B6D78D7ECDB672C3E09BEB99
            14AA4D787667F88055E6BD96811CB7C48D05BC47F0FB56D3E15DF33C25E20075
            75E457C56374330C8C32374FA57DF84654835F367C65F8477965A9DC788BC396
            CD3594E4C97104632D0B752C07F77F95033DB3E1DF88E1F13F8174CBF85C349E
            4AC730CFDD9146187E75AFAF6AD6FA1E8379A95E48238ADA2672C4E3E83F13C5
            7C63E18F1C7887C1B2B9D0EF9EDD643978986518FB83567C51F123C4FE30805B
            EB3A833DB839F2225D884FA903AD0073FA95EBEA5AADDDF4BCC97333CADF5662
            4FF3AFAB3E04787E4D0FE1B412DC29496FE4370548E80F0BFA007F1AF14F857F
            0A2FFC61AA437FA940F068D0B0677718F3F1FC2BEDEA6BEB1B7863B7B78E1850
            2471A8445038000C01408F02FDA6ADAEF768B740B1B3C3C64760FD73F97F2AE3
            FE05F8CE3F0CF8CFEC57D288EC7520226663808FFC27F338AFA4FC63E14B2F18
            F866E749D406164198E40326371D1857C81E2EF04EB3E0BD59ADB55B6754DDFB
            AB85076483D41A067DB81830041C83D0D6278C3C456BE18F0B5EEA97922AAC31
            9D809FBEF8E147B9AF97B43F8DFE33D0EC16D23BC86EE341B50DD465D947A641
            1FAD73DE28F1CF887C6532B6B97CF3221CA42836A27D16811CFB9DF2311DCE6B
            EC0F82DA44DA47C2AD322B94DAF71BAE369EC1CE47E98AF12F857F08350F136A
            306A9AE5BBDB68F1B07C4830D71EC07A7BD7D510C690C2B1C4A111461540E00F
            4A06731A8FC34F07EAD7AF77A8E81692CF21CB3E0A963EA706AAFF00C2A1F01F
            FD0B76BF9B7F8D769450230743F04F873C35334BA1E916D67230C17407763D32
            6B89FDA03C3F26B1F0F3ED76E85E5D366131007254F0DF9039FC2BD52A2BAB68
            6F2D65B7B9412433214746190CA4608A00F85340D4DB45F1169FA9A75B4B849B
            03BED607FA57DC9A5EA36FAAE956D7D6722CB0DC461D194E410457CA3F143E15
            6A3E0CD526BCB285EE347958B47328CF959FE16F4FAD63F867E2778ABC2569F6
            4D235122DB39104CBBD54FB7A5007D3FF15BC4707873E1D6A73C8E1669E23040
            B9E59D863FFAF5F1AC68D34CA8A0B33B60003A935B7E25F18EBDE31BA4975DBE
            7B931E7CB8C0C2A67D1457AAFC16F8497736A707893C476ED0DBC243DADBC830
            D2376623D07EB40CF6CF016867C39E05D2B4B9176CB05BAF9A3FDB232DFAE6BC
            DFE367C50D6BC1FAAD9E93A01481E58BCE92774DC719C051DABDA40C57967C6A
            F871378D3478AFB4950DA9D883B63FF9EA87AAFD7D2810DF835F146E3C6F6D73
            61AD9886A56AA1C320DBE7274CE3D41C7E75EA99E2BE13B3BCD5FC29AE09ED5E
            7D3EFED9C8E85594F4208FE95DE5CFED01E35B8D34DA896CE172B833C709127D
            7938CFE140CEB7F691F14DBCEFA7F872D640F244DF68B800FDD246141F7C73F9
            579EFC1FF0D49E24F88FA7A6CDD059B8B999B1C0087201FA900573763A76B5E2
            FD73CBB48A7D42FAE5F2C7EF124F524F61EF5F56FC2AF8770F80B40DB3159752
            BAC35CCA074F441EC2803BC5181815F217C6DD024D13E26DF4A53105FE2E626E
            C73C11F9835F5F570BF14BE1E43E3DF0DF951158F52B6CBDACAC3BF753EC7028
            11E53FB3778922B3D6350D0AE640A6F156583271965CE40F7208FCABE8FDC2BE
            16BED3B59F086BBE55DC53E9F7F6CFB95B95208E841FEB5D53FC6EF1D3E9FF00
            643AAA8F976F9A22024FCE819D27ED19E238752F1659E936CE1C69D11F3483FC
            6D8E3F003F5AC7F80FE1F9357F8936F76509834E469DD88E338DA07D72D9FC2B
            89D2B47D63C5BAD8B7B0826BDBCB872CCDC9E49E598FF5AFAD7E18F8060F01F8
            696D49592FA7C3DD4A0756FEE8F61401DA8E945145020AF877C73FF23F6B7FF5
            FB2FFE846BEE2AF88BE20DBCB6BF1135C8A7428FF6C73823B1391FA1A067B97E
            CD1FF229EA9FF5F5FF00B28AF6BAF1BFD9B6CE587C0F7B73229549AF0842475C
            28E7F5AF64A0414514500145145001451450015E7BE30F829E13F1C6BCDAC6B5
            1DD8BB745476827D81801819183DABD0A8A00F20FF008665F007F7753FFC0BFF
            00EC68FF008665F007F7753FFC0BFF00EC6BD7E8A00F20FF008665F007F7753F
            FC0BFF00EC68FF008664F007F7753FFC0BFF00EC6BD7E8A00F2CD27F678F0368
            DABDB6A36B1DFBCD6B22CB1896E72BB81C8C8C735EA4A30314B4500145145001
            451450062F893C27A3F8B2C45A6BD64975129DC84F0C87D41ED507867C0FA0F8
            42291741B04B7327DF7CE59BEA4D7434500145145001451450015CBF89FE1D78
            6BC5F74973AE69CB34E83025562AC47A123AD751450050D1B44D3FC3FA647A7E
            916C96D6B10F96341FAFD6AFD1450006B90F10FC2EF09F89B51FB7EA9A523DC9
            FBD246C50BFD71D6BAFA28029693A458E87A74763A5DB476D6D10C24718C0157
            68A2800A28A2800A28A2800A28A2800A28A2800A42322968A00E3751F853E0FD
            535C3AB5E6911BDD336F7C1215DBD4AF435D7C512431AC71284451855518007A
            53E8A0028A28A000D727E23F867E16F15DF2DEEB3A6ACB7200065462A587A1C7
            5AEB28A00A7A5E9567A369D0D8E996E96F6D08C246830055CA28A002919770C1
            A5A280391D67E17783F5E9DA6D4344B73331CB4910D8CC7DC8AAFA67C20F04E9
            5389ADF4386475E419C9931F9D76D450032389218D638955114602A8C0029F45
            1400555D434DB3D56D5ADB51B58AEA061868E540CA7F0356A8A00E02EFE09781
            6EE6321D1C4449C910C8547E55A1A3FC2CF076872ACB63A1DB9954E564946F60
            7D89AEBE8A004550A0050001D852D1450014514500145145003268639E268E64
            57461865619045717A97C1FF00046A9319A7D0E189C9C930131E7F015DBD1401
            C9E8BF0C3C21A04CB369DA25B8994E565906F653EC4F4AEAC0C00052D1400506
            8A2803075EF04F877C4BCEB5A4DB5D3E302464F9C7D1BAD7391FC10F02472EFF
            00EC7DDCFDD69588FCB35E8345006668FE1CD234080C3A369D6F6487A88630B9
            FAD69D145001451450065EB5E1BD1FC450793AD69D6F7A83A79C80E3E9E95C9F
            FC291F0209BCCFEC6EF9DBE6B6DFCB35E8145006668DE1DD27C3F6FE468BA7DB
            D9467A88502E7EBEB5A7451400514514005727E23F869E17F15EA0B7BACE9892
            5C00019118AB30F438EB5D6514014F4CD2ACF46D3E1B1D32DD2DADA11B522418
            0055CA28A0028A28A0028A28A0028A28A0028A28A0028A4CD19A005A2937500D
            002D145140051451400514514005145140051451400514514005145140051451
            4005145140051451400514514005145140051451400514514005145140051451
            4005145140051451400514514005145140051451400514514005145140051451
            4005145140051451400514514005145140051451400514514005145140051451
            4005145140051451400514514005145140051451400514514005145140051451
            4005145140099E7A550D5F5AB0D12C5AEF52B858625FEF1E58FA01DCD26B9AC5
            B685A4CFA85E362389738EEC7B015F39F89FC517DE28D51EEAF1C88C1C45083F
            2C6BFE35C38BC5AA0ACB73CFC6632387565AC8EDB5DF8CD772CAF1E836CB0C5D
            04B30CB1F7C74AE4EE3E20789EE5CB49AB4C3D9005FE42B28687AA1D38DF8B0B
            8FB20FF96DE51DB8F5CFA7BD50AF0AA622BC9DE4D9F3D53138893BCA4CEA6CFE
            23F8A2C9C15D4DE55EEB2A8607F319AEEBC39F18E0B89520F10DB8B72C71E7C5
            92BF88EA2BC728A74F175A9BBA97DE3A58CAF49DD4BEF3EB2B7BA86EEDD27B69
            16589C655D0E41A96BE7EF87DE3A9FC39A82DA5EC8CFA6CCC0329E7CA3FDE1ED
            EA2BDF6291658D64460CAC32083D6BE830D888D78DD6E7D2E17151C442EB724A
            28A2BA8EB0AF3FF889F16F4CF87F77059DC5A4D7977347E608E320055CE3249A
            F4035E53F167E115C78F6FADB53D2EF63B7BB863F29926076BAE72391D0D0073
            7FF0D396FDBC3D2FFDFF001FE147FC34E5BFFD0BD2FF00DFF1FE15CBFF00C337
            F8B7FE7F34FF00FBF8DFE147FC337F8B7FE7F34EFF00BF8DFE140CEA3FE1A72D
            FF00E85E97FEFF008FF0A9AD3F699D35EE156F742B88A22705E394311F857947
            8DFE18EA7E03B3866D62FAC9DE76DB1C30B92EC3B9C63A5737A0E877BE23D6ED
            B4BD2E232DC5C38550074F527D00A00FB934BD4EDB58D2EDB50B07F32DEE6312
            46D8EA0D5BAC9F0BE8ABE1CF0BE9FA446E5D6CE058F79FE223A9AD6CD0202702
            BCB3E297C638BC0D79169DA5DBC37DA830DF2AC8C76C4BDB38EE6A7F895F17F4
            CF0759CB65A7CB1DE6B0C084890E5613EAE47F2EB5F2A6A3A8DD6ADA84D7DA84
            CD3DCCEE5E4773C926819F617C31F88117C41F0FC979F6716D756EFE5CF10390
            0E3208F6AED6BC1FF662FF00906EBBFF005DA3FE46BDE2810514514005145140
            0514507A5004377796F616B25CDE4A90C31AEE791DB0147B9AF1CF13FED19A3E
            9B7325BF87EC64D4994E3CF73B233F4EE6B8EF8F9E3FB8D4B5F6F0D69F3B2595
            99FF0048D87FD6C9E87D874C7AD71BF0DFE1C5F7C41D59E2864FB3595B806E2E
            08CEDF451EA4D007729FB4CEB7E6FEF342B031E7A2BB83FCEBBBF087C7DF0F78
            82EA3B4D5637D26E5CED5695B3131F4DDDBF1ACFBDFD9B7C3D269CC961A8DF45
            7417E5924656527DC0038FA5780F8AFC2FA8F83FC433695AA26D96239571F764
            5ECC3DA819F7223AC8A19082A79041CE69D5E1BFB3FF00C41B8D52DA5F0C6AB3
            1926B64DF68EE7E664EEBEF8EBF4FA57B91E9408A7AAEAF63A269F2DF6A9731D
            B5B4432F2487007FF5EBC5BC41FB4A595BDC3C5E1CD29AED54E04D70C515BE80
            73F9E2B8EF8F9E33B9D63C6326850C8CB63A6E15901E1E43C927E9C0FCEB0FE1
            6FC329FE20EA5334D2B5B69D6B8F3A54037313D1573DF8FC2819D6C7FB4C6BC2
            4FDEE8BA794F452E0FF3AEDFC25FB41E83ADDD4769ACDBBE953C8702466DD113
            F5EDF8D2DE7ECEBE149AC5A2B59AF209F6FCB37981B9F70462BE77F17785EF3C
            1DE25B9D1F5021A48482B22F4753D187D6803EE38E449A3592360E8C32ACA720
            8F5A757897ECEDE31B9D5749BBF0FDFCC657B1024B72C724464E08FC091F9D7B
            54F2AC103CAE7091A9663E800CD02317C55E30D1BC1DA69BCD72E96153F71072
            F21F403BD78C6AFF00B4C4A2665D0F438CC60E03DDC8727F05AF2BF885E2EBBF
            18F8C2F2FAE646302C863B78F3C22038181EFD7F1AEE7E14FC168FC5FA5AEB7A
            FCF2C360EC44114380D2E0E0924F419C8FC281976D7F699D65651F6CD0EC5E3E
            E227753FA935E9DE08F8CDE1DF18DC2D9EE6D3EFDF8582E08C39FF0065BA1FA7
            5AE63C49FB3A68B3E97237872E2E2DAF55731ACADB91CFA1E323EB5F39DC4375
            A56A724320782EADA42AD8E19181A00FBDC1CD15C27C21F16CDE2EF00DADD5E3
            6EBBB7636F3B1FE32A07CDF8835DADD5CC7696B25C4EE122894BBB31C0000EB4
            08A5AF78874BF0D698F7FAD5DC76B027763CB1F403A93F4AF17D6FF6978639D9
            3C3FA319901C096E9F19FC0735E59F12BC7977E39F144D706475B0898A5AC19E
            157D48F535D47C2FF82B2F8C6C9757D72692D34D624449181BE6C77E7A0FE740
            CD7B4FDA6B55130FB768366D1E79F26460DFA935EADE06F8B1E1FF001BFEE2D2
            46B5BEC64DACE70C7FDD3D0FE15C478A3F674D21F48965F0CDCDC437B129658E
            660C9263B74C826BE7B8A5BDD13581244F25B5E5A4BC1070C8EA7FC45007DE94
            66B9FF00036BEDE27F04E97ABB8C3DCC3F38C7F1292ADFA835CDFC69F19DC783
            FC124E9EDB2F6F9BC885C7F00C7CCDF502811278D7E31F86FC1D335A3C8D7F7E
            BD6DED883B4FFB4DD07D3AD7995CFED35A9194FD8F41B558F3C79B2313FA62BC
            97C3BA16A1E32F13C1A6599325CDD3E5A4739DA3BB1F615F43587ECE3E1886C5
            52FAEEF6E2E36FCF22BAA8CFB0C7F8D0331745FDA5E092754D7B4530A13832DB
            3EEC7E06BD9F41F11699E25D2E3D4346BA4B9B77FE253CA9F423A835F29FC52F
            86137C3FBF864B799AEB4DBA24452B81B948FE16C54FF04FC5B75E1EF1F5A597
            9ADF62D458412C64F193F75BEB9FE7401F5CD145140828A28A0028A2A86B1ADE
            9DA0E9D25F6AF7715ADBC6325E46C67D87A9F6A004D735AB2F0FE8D71A9EA528
            8ADEDD0BB31EFEC3D49AF18F0EFED12DAA78BE0B0D434A86DF4FB897CB8E6473
            BD32700B76FCAB80F8AFF15A7F1CDE8B1D3B7C1A3C0D9443C199BFBCDFD05703
            A471AD59FF00D765FE740CFBD01C8A2913EE8FA52D02386F889F1474CF87AB6D
            1DE5B4D7573740B4714581803B926BCFBFE1A72DFF00E85E97FEFF008FF0AEBF
            E2DFC2B93E20AD9DCD85E25ADEDA2B20F3012AEA4E71C7439AF293FB37F8B3B5
            E69FFF007F1BFC2803A7FF00869CB7FF00A17A5FFBFE3FC28FF869CB7FFA17A5
            FF00BFE3FC2B97FF00866FF16FFCFE69DFF7F1BFC2B9DF19FC27D5BC0DA4ADF6
            B17F627CC6D91C31C84BB9EF818ED40CF4EB7FDA6AC1A65175A05C2479E59265
            247E15ECBA06B967E24D0ED755D35CBDB5CA6F424608F63EF5F0D699A6DD6AFA
            94161A7C2D35C5C3848D147249AFB53C0DE1C3E13F05E9DA4349E63DBC7FBC6E
            C589C9FD4D02372EEF20B1B692E2F25486189773C8EC02A8F735E31E27FDA3B4
            CB0BA92DFC3960DA8142479F292919FA0EA7F4AE77F684F1DCF71AB2F85B4F98
            A5B5B80F77B4FDF73D14FB01FCEBCEFE1E7806F7C7FAF9B1B67F22DE15DF7170
            46760EC07B9A0677F0FED31AE89B3368960D1E790ACE0FF3AF48F03FC6EF0FF8
            B6E52CAE436997EFC245330DB21F456E9F81AE7AFBF66AD0DB4D65D3F55BE4BB
            0BF2BCBB1909F70141C7E35E01AE68D7FE16F10DC69B7C0C57569263729EBE8C
            3EBD6803EEC07228AF32F825E3B97C5FE1436BA849BF50D3B11C8C4F3227F0B7
            F435E9534AB0C2F2B9C2A29663E80502317C55E31D1BC1DA61BCD6EE961539D9
            18E5E43E8077AF18D5FF00698944CCBA16869E583C3DD48727F05FF1AF2BF883
            E2DBCF18F8BEF2FAEA5630AC863B78F3F2C680E0607BF5AEE7E157C168FC5DA5
            AEB7AFCF2C362EC4410C580D2E3F8893D0678FC28197AD7F699D65651F6CD0EC
            9E3EFE53BA9FD49AF4DF047C66F0EF8C675B3DCFA7DFBF0B05C1E1CFFB2DD0FD
            3AD731E24FD9D3459F4B91BC3971716D7AA331ACAE191CFA1E323EB9AF9CE786
            EB49D49E1937C1756D2156C1C32303401F7B8391914570BF08BC593F8BBC016B
            757ADBAEE06304CDFDE2B8F9BF106BBAA0414514500149D296933401E33F19B5
            D69B54B7D1E172238544B2807AB1E9FA7F3AE2FC1BA5C7ACF8C34FB19FFD5492
            12E3D4282D8FD2A7F1F5CB5CF8EB546639D93B463E8BC7F4AA5E18D57FB13C4F
            63A81FBB0CBF37FBA460FE84D7CB559A9E279A5B5CF91AD514F15CD3DAFF0085
            CFA4E6B1827D39EC9A35103C663280718C62BE65D734D6D235CBBB17EB04ACA3
            DC678FD315F4C4B72D2E92F73A7ED99DA12F08CF0E7191F9D7CCBABDDDDDEEB1
            7571A8E45CBC84C808C60F4C7E15DF9A72DA27A39B72B8C0A54514578878215E
            F5F09B5E6D53C2A6D277DD358B04C9FEE1FBBFC8D782D7A4FC16B865F115E5BE
            7E4920DC47B83FFD7AEFC04DC6BA5DCF432EA8E1884BBE87B70E94503A515F4C
            7D5851451400551D6356B5D0F49B9D4B5090476F6D1991D8FA01D07BD5E35F3D
            FED15E352D2C1E15B194E1409AF369EA7F850FE87F11401E4BE37F16DEF8D7C5
            571A9DD31DACDB2DE2ED1A0E8057D11F053E1B27857435D5F528BFE26B7A80E1
            8730C7D97EA7A9FC2BC7FE08783078A7C6C973771EFB1D37134808E19B3F2AFE
            6335F5A22855000C01D050315CED527D057CB1F11BE34F88358D52EF4DD2653A
            6D8472347FBAE2490038C96EDF862BEA72322BCEB54F81FE10D5FC44FABDCC17
            2AF2BEF9208E5022763D4918CFE46811F33F857C1BAEF8E355F234A8249B2732
            DC499D91FBB3553F146867C37E25BDD21E6F39AD24319900C6E23DABEDCD2B46
            D3F43B14B3D26CE2B5B7418548D702BE3BF8A7FF0025435DFF00AFA6FE740CF5
            AFD98BFE41BAEFFD768FF91AF78AF07FD98BFE41BAEFFD768FF91AF78A041451
            450014514500151CEC52DE461D4293FA54948EA1A3653D08C5007C21AFDCC97B
            E23D42E6625A496E647627D4B135F4E7ECF36315B7C318EE6303CCBAB891A43E
            B862A3F957CF1F10B4297C3BE3DD56C2652AA2E1A4889EE8C72A7F235EBFFB3B
            78D2CE2D3E7F0C5FCEB14FE6996D439C0707EF28F7CF340CF7CAF03FDA6B4D84
            5AE8BA985026323C05B1C95C6E1FAE7F3AF7A675552CCC00032493D2BE5FF8FB
            E38B3F11EB96DA4E952ACF6DA716324AA721A43D403EC3FAD02388F873AC3E87
            F10F47BC56DABF6948E43FEC31DADFA135F6C03B9011D08CD7C11A7B18F53B67
            5EAB2A9FD6BEF2B36DD63031EF1A9FD2819F1CFC5CD3E7D3FE29EB4B70AC3CE9
            FCE4247DE561C1FE75EB1FB35EB365FD8BA8E905D56F166F38293CBA918C8FA6
            3F515D27C68F09F86B5AF0FF00F68EB57F1697776EA44374DCEEFF0060AF56FC
            39AF96ACEFEEB47D485CE9778F0CD0B7EEE688953F5A00FBD338EB5F27FC7DD5
            ECF54F892E964EB27D9605864753905C7247E19C561DD7C5BF1BDE591B59B5FB
            8F2D86D62A02B11F502B9DD1EDAD753D6E18356D4059412BFEF6E5D4BEDF7A00
            F5EFD9A34D9DBC49AAEA9822DE3B5F209EC599D5BF929AFA1F5481AEB49BBB74
            E1A681D07D4A9158BE05F0FE89E1CF0ADB5AF875D26B565DFF0068560DE713FC
            448EB5D27D6811F046A36B2D96A5736B70A52586564753D8838AFAE3E0BEB565
            AA7C31D322B475F32CD0C33460F28C189E7EA083F8D79DFC7CF087866099B5A8
            F518AC3569465AD31BBED3EF81C83EFD2BC5B42F12EB1E1ABB373A15FCD67211
            86319E1BEA3A1A067DD13CF1DBC0F34EEB1C680B33B1C0503B9AF887C71A95BE
            AFE39D5EFECBFE3DE7BA668CFA8F5AB7AE7C49F16F88ACCDA6ABACCF2DBB7DE8
            970A1BEB81CD3BE1EE81A1F883C4F15AF88F575D3ADB2301860CA7FBA1BA2FE3
            401EF3FB3AE9D7167F0FA5B99D4AA5D5D33479EEA0019FCFF956C7C71D6CE8BF
            0BEF446DB64BD75B5523FDAC93FA29AEEB4DB1B4D334D82CB4F8922B68502468
            9D001D2BC6BF699B82BE1DD22DC1E24B86723E83FF00AF401F3BE9F6AD7BA95B
            5AA0C99A55403EA715F7369F6D69A06856D681920B7B48563058ED00018AF887
            C3FA8C7A4F88AC7509E332476B32CA507F160E715D3EB5E24F197C52D6DFECF1
            5DDD28398ECED158AC4BF87F33401F58A78AFC3F34BE4C5ADE9EF2E71B16E509
            FCB35C3F89FE06F867C53AE1D5FCEB8B49266DF32DB32ED90FAF20E09AF9B75B
            F077897C36826D674BBCB48CF495D085FCFA56FF00C3FF008AFAD7833508A396
            792F34B66C4B6D236768EE54F63401F5AE91A55AE89A4DB69BA7C622B6B68C24
            6A3B0AE6BE25F8021F883E1F4B26B8FB35C40FE6412EDC807A1047A1AE9748D5
            6D75BD26DB51B0904B6F731874607B7F9E2AED023CC3E167C204F00DE5CEA17D
            791DF5ECC82346442AB1AF7C67B9FE95E9D9C5719F153C557DE0EF01DCEA9A5C
            6AF73BD624671909B8E377E15F345C7C60F1D5CAB2BF8827556EA1028FE9401E
            A5FB497882C9B4BD3F448E457BCF3BCF7507263503033E99CFE95E4BF0BF4A9B
            57F895A3416EA5BCBB8599C81F7557927FCFAD7317577717B72F3DE4CF34CE72
            D248D924D7D27FB3F58785E0D0A4B8D32ED6E7599147DA838DAF10FEE81FDDCF
            7EF40CF67A28CD140828A28A00F3DF8BBF112E3C03A0DB3E9F6E92DE5EBB246D
            27DD8F006491DFAD7CB7AEF89F5DF16EA1E6EAD7B3DE4AE7091E781EC14715F6
            3F8BFC1BA4F8D748FECFD6A2668D5B74724670F1B7A83591E13F84FE16F084A2
            7D3EC9A7BA1D2E2E88771F4E001F95033E69D57E18EB3A0F813FE124D697EC82
            499238AD9D7E721B3C9F4E9D0D72FA47FC86ACFF00EBB2FF003AFA77F68918F8
            5C31C7FA6C5FD6BE62D23FE43567FF005D93F9D007DE6BF747D296917EE8FA52
            D020A28A0D0057BEBD834FB19AEEF241141021924763C050324D7C6BF123C6F7
            3E38F164F7AECCB6711F2ED62CF0A80F5FA9EB5EC1FB4478D8D969B07862C26D
            B35D012DD15EC80F0BF891F97D6BCAFE127837FE131F1C5BC13A6EB2B4C4F73E
            8403C2FE278A067AFF00C0AF86CBA2E989E25D5E2FF4FBA5FF0047471FEA633D
            FEA7F957B3370A7E94D8A358A354450AAA3000EC2A0D4E530E957522F0522623
            F2A047C43E2DD4CEB1E30D535063BBED172EE0FB678AFA1FF66FD2E3B6F02DDE
            A1B7F79777454B7FB28303F99AF98E53999CFF00B46BEB6F80D188FE13D8E3F8
            A591BFF1EA067A3D7CCFFB4A6971DB78B74DD423501AEED8AC84772A703F435F
            4C57807ED38836E84FDF328FE5401C7FECFF00AB3587C4D8AD37612FE17888CF
            7037FF00ECB5F52EA76ED77A4DDDBA1C34D0BA03E84A915F1C7C2A98C1F14743
            75EBF68DBF9823FAD7DA3408F82351B692CF52B9B6B852B2432B23823A10715F
            5C7C17D66CB53F863A64568E9E6DA218668C1E51812791EE0835E77F1EFC21E1
            8B799B5A8B518AC3569865AD00DDF69FF6B03907DFA715E2FA1789759F0D5D9B
            8D0B509ACE5230C633C37D474A067DCF3CF1DBDBBCD3BAC71A29666638007A93
            5F1078DF51B7D5FC73AC5FD9736F7174EF19F519EB5735BF893E2CF10D91B4D5
            7599E4B76FBD12E1437D71D69DF0F741D0FC41E278AD7C47AB269D6F9185618F
            38FF00743745FC6803DEFF00675D3E6B4F8772DC4CA556EAE99E3C8EAA0019AF
            5AAABA6D8DA69BA74167A7C4B0DB42816345E81474AB540828A28A00290D2D18
            A00F9BFE22DA1B3F1E6A2A463CC93CD1FF0002E6B98AF62F8C7E1969E08B5DB5
            5C98408E703FBBD9BF0E9F8D78ED7CA62E9BA759A67C7E3293A75E49FA9EA9F0
            BFC7296EA9A16AF36D427FD1A563C0FF0064FF004FCAB6FC7BF0E535D66D4B46
            0B1DF632F1F459BFC0D7888241C8E0D7A1784FE2ADE6911A5A6B28D796ABC2C8
            0FEF107F5AEAA189A73A7EC6BEDD19D587C5539D3F6188DBA330B46F026B3A96
            BC9A75C5A4D6A0366592442022F73EF5D26BDF07AFAD2233689722F140C989C6
            D6FC0F43FA57A6691E30D075A55FB0DFC46461FEA9CED71F81A7EBBE2AD2740B
            4696FAEE30C0656256CB3FD0575C7058654DB6EFE676C3038554DB72BF99F354
            F04B6B70F0DC23472C676B230C106BD2FE0A59B3EB37F798F92288267DD8FF00
            F5ABCFB56D41F58D6AEAF9970F73297DA39C67A0AF7AF871E1E6F0FF0084E259
            D3175707CD941ED9E83F015C581A5CD5EEB647065F4B9F1178EC8EBC5140E945
            7D19F501451450051D67548745D12F351BA3B62B585A56F7C0CE2BE1DD7B569F
            5DD7EF753BB72F2DD4A64249E83B0FC06057D29FB447881B4CF0245A6C2FB5F5
            2982301D762FCC7F502BE63B0B66BDD4ADAD57969A558C7E27140CFABFE06786
            C685F0E6DAE248F6DC6A2C6E2424738E8A3F219FC6BD26AAE996AB65A55ADB46
            36AC30AA003B6062AD5020A28A280035F16FC53FF92A1AEFFD7D37F3AFB48D7C
            5BF14FFE4A86BBFF005F4DFCE81A3D6BF662FF00906EBBFF005DA3FE46BDE2BC
            1FF662FF00906EBBFF005DA3FE46BDE2810514526E03A9A005A28073D28A0028
            A283D2803CD7E2D7C2D8BC7562977A7958757B75C46EDC2CABFDD6FE86BE61D5
            FC37AE7862FF00C9D52C2E6CE646F958A900E3B83DEBEA0F883F18B4BF026AB1
            E9AF6925F5DB2077446DA2353D327D7DABA0F07F8BB47F881A0FDBAC537206D9
            341328DD1B7A1A00F92D35FF0018EBB1AE9916A1A9DEAB8DA2DD5D9B70F4C56C
            7883E18DFF00853C08BADF880F9379733AC70DA83CA83924B7BF1D2BEBD82CAD
            6D462DADE28BFDC402BC17F697D72261A4E8913032296B9900EC3EE8FEB401E1
            9A3C0D73ADD940832D24E8807AE580AFBB632B6DA7A1908548E31B89EC00AF8F
            BE0FE84DAEFC4CD2E3D85A2B5905CC871C009F30FD4015F5B78891E4F0C6A490
            FF00AC6B5902E3D769C5033E3EF88BE34BCF19F8AEE6EE695FEC91B94B5849E2
            3407D3D4D773F063E1259F8AAD1B5DF112B3D8AC9B20B7071E691D493E95E392
            8226707AEE39FCEBEBAF81D7305C7C29D34404130978E403B3673FD68034AE7E
            13F822E6D0DBB787AD117180D1AED61F88AF9B3E2B7C3B3E00F104715ABB4BA7
            DDA97B777FBCB8EAA7E99AFB12BC17F699B983EC3A2DB6419CC8EE0770B803FA
            8A00E6BE01F8E6E74CF1447E1CBC98BD8DFE7CA563C452019E3EA011F5C57D0B
            E2FD7A3F0C784B50D625C1FB2C25941EEC7851F9915F1F7C3B8E597E23E84900
            25FED8878F40727F4CD7D2DF1DA3964F84BA9794090AD11703D3CC5A047CA7AC
            EB37BAFEAD3EA3A9CED35C4EE59989E9EC3D857D07F0B7E09690BA0DB6AFE2AB
            617B75748244B793EE44A7A647738E6BE6F8D82CA8CDD03026BEEDD0278AE3C3
            BA7CD6E418DEDA32A47A6D140CE535CF835E0CD66C1E14D222B1948F927B51B1
            94FF005AF95BC5DE1AB9F08F8A6EF47BB6DCD6EFF2480637A9E41AFB9735F287
            ED07756F73F14196DC82D0D9C71CB8FEF658FF00222803D17F67CF1CDCEB3A65
            C787F5395A59AC543DBBB1C931F42BF871F9D56FDA6A22744D1651F7566753F8
            81FE15C77ECE31C8DF11E775CF96B64E1BF12B8AF56F8FBA2BEABF0CE5B88573
            2584CB39C7F77907F983F85007CA10C4669E3897ABB051F89AFB5FC07E10B2F0
            7F856D6C2D225597CB0D71263992423927F1AF8AECE5105F4129E91C8ADF91CD
            7DDBA3EA10EA9A35A5F5B3878AE2159148F4233400FD474EB5D534F9ACEFA259
            A0990A3A30C820D7C4FE36D047867C69A9692BF72DE6223CFF0070F2BFA115F7
            09231D6BE33F8B7A845A9FC53D6AE2DCEE41308F23D51429FD45007B1FECDBAE
            C97BE17BFD26662DF61983C593D11C74FCC13F8D7B4B305EA71F5AF04FD992C6
            55B4D6EF883E53BA42A7D48193FCC552FDA2BC4FAD5A788ACB48B5B996DAC4DA
            89888D8AF98C598738EB8C0A047BFDF5859EAF63259EA1047736D28C3C720CAB
            0AE5D3E127819338F0E599CFF7949C7EB5E79FB3D78EA7D452EBC3BABDDBCD34
            43CDB5695B24AFF12827D383F8D7BAE6803C0BE2CFC15D2EC3C3F71AEF85A236
            CD6ABBE7B5072AC9DCAFA115E21E1DD7EFBC35AE5BEA9A64CD14D0B83C7461DC
            1F635F65F8F2EADECFC03ACCD7640885A480E7BE4600AF882819F6EC5E2DB693
            E1F0F14AA9687EC7F69283AFDDCEDFCF8AF9E6F3F688F184D74ED689636F093F
            247E496207B9CF35EDBF0CB49137C1ED2EC3518F7C5736A77237747C91FA1AE3
            2F3F667D266BA77B2D6EE2DE263958DA10FB7DB391401E7DFF000D07E37FF9E9
            63FF0080E7FC6BBFF84FF1A355F1578A63D0BC4105B97B84630CD0215C150588
            6193D81A8BFE198ECBFE8639BFF0147FF155D7F807E0D691E05D57FB4E3B996F
            AF4295496450A10118381CF38E3AD023D1E8A28A00F29FDA2BFE4978FF00AFD8
            BFF66AF98748FF0090D59FFD764FE75F4F7ED15FF24BC7FD7EC5FF00B357CC3A
            47FC86ACFF00EBB27F3A067DE6BF747D296917EE8FA52D020A82F6EE2B1B19EE
            AE182C5046D2393D8019353D79AFC75F103687F0DAE2185B6CDA8482DD4E7B75
            6FD011F8D007CC9E30F104DE28F16EA1AB4EC5BCF989407B20E147E4057D13FB
            3D786D74AF03B6AD2A627D4E42C188FF00966BC01F9827F1AF97510C92AAAF56
            200AFBA7C31A7A697E15D32CA35DAB0DAC6B8F7DA33FAD03356AA6A9119B49BA
            89792F1328FCAADD230CA91408F80E51899C7FB46BEB5F80B2093E13D963F825
            914FE75F3278D7486D0BC6BAAE9CCBB44172E17FDDCE41FCABDF7F66ED622B8F
            065EE965C79B6973BF6FFB2E383F9A9A067B357CFF00FB4E483FE2451F7FDEB7
            F2AFA0335F317ED21ABC779E35B2D3E260C6C6DBF798ECCC738FCB1401C57C2B
            88CDF1474345EBF68DDF9027FA57D6FE30D7E3F0C784B50D5E500FD9A22C80F4
            2E7851F9915F34FC00D21B50F89D05DEDCA5842F2B1EC32368FF00D0ABDB3E3B
            C72C9F08F52F2B242BC45C0F4F316811F29EB5AC5EEBFABDC6A3A9CEF3DC4EE5
            9998E71EC3D857D07F0B7E0968EBA05B6ADE2AB517B77728244B793EE44A7A64
            773DEBE6F8C812A9619008C8AFBBB429E1B9D02C26B760D13DBC6548EE368A06
            727AE7C1AF066B160F0A6910D8CA47C93DA8D8CA7FAD7CADE2EF0D5D7843C517
            7A3DD9DCD6EDF2480637A9E8DF8D7DC84F15F28FED097305C7C5175B720B4369
            1C7263B3658E3F222803D1BF67CF1C5CEB5A5DC681A9CAD2CF62A1ADDD8E498F
            A11F871F9D7B4D7CB9FB38472B7C47B89173E5AD84818FB974C7F235F51D020A
            28A2800A28A28038BF8A9AA269FE09B9898FCF76442A3F53FCABE7D0ACDF7549
            FA0AFA53C4BE0FB1F145D5B3EA724AD0DB838851B68627B9356B4EF0C68DA6DB
            F9569A65BC608C12630491EE4F26BCAC4E0EA622AF337648F1F1582A989ABCCD
            D923E60A2BDEB5EF84FA2EAD2B4D67BB4F95B93E50CA1FF80F6FC2B92B8F827A
            A07FF45D4AD5D7FE9A0653FA035E74F015E2F4573CCA9976220F4573CCA94066
            60AB9627A01CE6BD4ECFE095DB30FB7EA9120EE2152DFCF15DBF87BE1DE87E1E
            7596283ED372BD269FE620FB0E829D3CBEB4DFBDA154B2DAF37EF2B238AF875F
            0E2537116B1AF45B1508682DD872C7B337F857AF818C62940C52D7BD42842847
            9627D0D0C3C284396203A514515B9D0145145007CD7FB4C5D48DE2AD26D4E7CA
            4B42E07B973FE15E7DF0C74C6D5BE256896EABBB65D2CC47B21DC7F957D2FF00
            12FE175A7C4282DDDAE5ACEF6DB223982EE054FF00091547E1B7C1DB3F015FC9
            A8CD766FEF9D3623ECDAB183D71CF53401E983A51451400514514001AF8BBE2A
            023E286B99E3FD29ABED135E4BF107E06DAF8C7C40DAC596A06C6798013A18F7
            2B903191CF068030BF66353FD95AEB63E5F3A319FF00809AF77AE5BE1FF81ACF
            C05E1E1A6D9C8D33BB79934CC305DBE9D80E95D4D0035DB6AE7D2BE41F1AFC53
            F14EAFE29BB7B7D5AEAC6DE19992182DA5640A01C64E3A9F7AFAFC8CD78B78AF
            F677B3D675E9B51D2754362970E5E481A3DC013D769CD006DFC0EF1BEA3E30F0
            C5C26B2E66BAB290279E7AC8A4719F7EB5E9F5CC780BC0F61E03F0FF00F66D83
            34AEEDE64D3B8E646C63F01C74AE9E800A0F4A28A00F9CBF689F06DDAEB5178A
            2D22692DA68D62B82A33E5B28C293EC45701F0E3E23DFF00C3ED5A49608C5CD9
            5C605C5B938DD8E841EC457D8D776905EDAC96D770A4D0C8BB5E375CAB0F715E
            45E22FD9D340D4EE5EE346BC9B4B2C726203CC4FC327228194752FDA5B495D38
            FF006569376F7857813955453F50493F95782EB9ADEA5E2CF104DA8EA0ED7177
            72FD1474EC140F4AF6A87F6633E60FB4788B09DF641CFEA6BD0BC19F07BC35E0
            E9D2EA181AFAF97A5CDCE0ED3FEC8E83F9D0065FC11F87727847407D47544D9A
            9EA001643D628FB2FD7B9AF526195C11914B45023E3EF8B3E01BAF07F8AA79A1
            81BFB2AEDCC96F228F9573D50FA1150FC38F89FA8FC3FBB91238FED7A74E4196
            D99B183FDE53D8FF003AFAEB55D26C75AD3E4B2D52D63BAB69061A3914115E4B
            AE7ECDFA0DECED2E8DA85CE9D9E7CA23CC51F4C9CD004571FB4B684B624DA693
            7CF738E124DAA99FA824FE95E13E30F17EA5E35D7E4D535560188DB1C4A7E58D
            7B015EBEBFB31B993E7F108DBED6FCFF003AEBBC33F003C31A1CE971A834BAB4
            E87204E36A03FEE8EBF8D00715FB3F7C3FB83AA7FC257AA42D1431295B3575C1
            763C17FA6323F1AF79D7F48835ED06F34BBA198AEA268CFB64707F03CD5E8A24
            86258E2454441855518007A0A7D007C33E2BF0B6A3E11D7A7D33538591A363E5
            BE3E5917B30AEFBE1B7C6FBAF07E9C9A4EB16CF7DA7C7FEA591B0F10EB819EA2
            BE8CF13784345F16D8FD975DB18EE507DC6E8C9F461C8AF28D4FF667D3A5999F
            4AD6E78109E239630F8FC7340C8F5EFDA52C3FB3DD7C3BA5DC1BA65215EEF6AA
            A1F5C02735E05A85FDE6B7AB4D7B78EF71777521776EA589AF74B7FD98C7983E
            D3E213B33CF976FCFEA6BD07C21F073C2FE119D2EA1B76BDBD4E45C5CFCDB4FA
            85E83EB40191F033C0337853C3D2EA5AA43E5EA1A86098D8731463A03E84E4E7
            F0AF4CD46C60D4F4E9ECAED04905C4663743D08356B145023E28F1FF00822FBC
            0FE249AC6E519AD998B5B4F8E244EDCFAFA8AEABE1B7C6ABCF05D88D2F53B66B
            FD394E63C361E1F61EA3DABE97F10786B4AF1469AD63ADD9C77309E46E1CA9F5
            07A83F4AF21D5BF667D3E69D9F47D6A6B742788A68C3EDFC7340CCBF167ED19F
            6DD2A5B5F0C69F2DB4D329537170466307AE00CF3F8D78B699A66A1E21D623B3
            B085EE6EEE64C00392493C927FAD7B9D97ECC718981D43C40CC80F2218304FE6
            6BD57C21F0F3C3FE0980AE8D6804EC30F7121DD237E3DBE82801DF0FBC251782
            FC1F69A54786980DF3B8FE390F5FCBA7E15CCFC6BF87F278CBC36975A6A6ED4E
            C32D1AFF00CF54EEBF5F4AF4DA31408F8474AD4F52F0BEBF0DF5933DB5EDA499
            1918C11D411FD2BDE74BFDA5B4F3A7AFF6BE8F70B7417E6F2181463F8E315DD7
            8CFE11F86FC67235C5CC06CEF9BADD5BE031FF0078746FC6BCDE7FD98DFCE3F6
            6F110D99E37DBF3FA1A06713F123E306A5E3A87EC16F0FD834C56DC620D9690F
            62C7FA565FC36F005F78E3C470C691B269F0B86B99C8E157D07A935EC5A27ECD
            9A35A4EB2EB7A9CF7E14E7C945F2D4FD4E735EBBA468BA7E85A74763A4DA456B
            6F18E1235C7E27D4D022CDADB45676B15BDBA848A24088A3B0030054B4514005
            145140051451401E53FB4503FF000ABFFEDF62FEB5F31E8A8D26BB648832CD3A
            00077E6BED7F17785ECFC61E1BB8D1F51DCB14C321D7AA30E8C2BCC7C23FB3DD
            B681E25B7D5350D50DE25AB89228562DB961D3273401ED09F747D2969052D001
            5F3EFED3975279BA1DA73E562493D89E95F415715F11FE1C59FC42D2E182E276
            B5B9B762D0CEAB9C67A823D2803E4EF0769ADABF8D349B155DC25BB8C30FF677
            027F4CD7DC88A123551D14002BCB3E1D7C12B3F04EB7FDAF797C6FEED14AC3FB
            BDAB1E4609EBC9C1AF55A00283CD145007847C7EF8733DFEDF14E8F099658D36
            5E468392A3A3FBE3BFE15E33E09F1A6A3E05D7D751D3B0E08D9340C70B22FA1F
            4E9D6BEDC655752AC010460823AD796F8B3E02F86FC4772F77625F49B990E58C
            0A0A31FF0077A0FC2819C9DEFED311B69AC2C34365BC2B80649BE453EBC0C9AF
            0ED46FF50F12EBB2DDDD17B9BDBC972768C96627A01FD2BDBE3FD98C99BF7BE2
            2FDDE7F86DF9FE75E89E0BF843E1CF05CAB736F0B5E5F28E2E6E00257FDD1D05
            0054F833E007F05785CCDA8281A95FE24987FCF35FE14CFF003F7AEDF5FD220D
            7F41BCD2EEC7EEAEA268C9F4C8E0FE079AD1145023E19F15785F50F096BF3E99
            A9C2C8D1B1F2DF1F2C8BD981AEFF00E1BFC6FBBF07E9C9A4EB16CD7DA7C7FEA9
            95B12443D067A8AFA2FC4DE10D17C5D65F65D76C63B941F718F0C9FEEB0E4579
            46A7FB33E9D2CCCFA56B73C084F11CB187C7E39A0647AF7ED2961FD9EE9E1ED2
            AE0DD32E15EEB6AAA1F5C02735E05A85FDE6B9AB4D7B78ED71777521776C64B3
            1AF7483F6631E60FB4F884ECCF3E5DBF3FA9AF41F087C1CF0BF84674BA86DDAF
            6F53917173F36D3EA074140191F033C0337853C3B2EA3AAC5E5EA1A86D2636EB
            1C63A0FA9CF3F857AB500628A04145145001451450004526314B450026297145
            1400628C51450014514500145145001451450014514500145145001451450014
            5145001451450014514500145145001451450014514500145145001451450014
            5145001451450014514500145145001451450014514500145145001451450014
            5145001451450014514500145145001451450014514500145145001451450014
            5145001451450014514500145145001451450014514500145145001451450014
            514500145145007FFFD9}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 396.850650000000000000
        Top = 411.968770000000000000
        Width = 718.110700000000000000
        DataSet = data_set_report_os
        DataSetName = 'data_set_report_os'
        RowCount = 1
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 258.645330000000000000
          Width = 710.551181100000000000
          Height = 64.252010000000000000
          Frame.Typ = []
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 234.330860000000000000
          Width = 710.551181100000000000
          Height = 26.456710000000000000
          Fill.BackColor = clSilver
          Frame.Typ = []
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Width = 710.551640000000000000
          Height = 222.992270000000000000
          Frame.Typ = []
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 30.236240000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'S'#233'rie')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cor')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 109.606370000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Acess'#243'rios:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 136.063080000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Problema Relatados:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 158.740260000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Problemas Comstatados:')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 132.283550000000000000
          Top = 241.889920000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'OBSERVA'#199#213'ES GERAIS')
          ParentFont = False
        end
        object MemoObs: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118117560000000000
          Top = 272.126160000000000000
          Width = 665.197280000000000000
          Height = 30.236240000000000000
          DataField = 'observacao'
          DataSet = data_set_report_os
          DataSetName = 'data_set_report_os'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_os."observacao"]')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 710.551181100000000000
          Height = 26.456710000000000000
          Fill.BackColor = clSilver
          Frame.Typ = []
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 7.559060000000000000
          Width = 684.094930000000000000
          Height = 24.118120000000000000
          DataSet = data_set_report_os
          DataSetName = 'data_set_report_os'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_os."descricao_servico"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Patrim'#244'nio')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 52.913420000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 26.456710000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Top = 26.456710000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 26.456710000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 52.913420000000000000
          Width = 710.551181100000000000
          Height = 26.456710000000000000
          Frame.Typ = []
        end
        object Shape6: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 79.370130000000000000
          Width = 710.551181100000000000
          Height = 26.456710000000000000
          Frame.Typ = []
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 83.149660000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Modelo')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 83.149660000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Marca')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 181.417440000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Situa'#231#227'o:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 181.417440000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'situacao'
          DataSet = data_set_report_os
          DataSetName = 'data_set_report_os'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_os."situacao"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 204.094620000000000000
          Top = 158.740260000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'prob_constatado'
          DataSet = data_set_report_os
          DataSetName = 'data_set_report_os'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_os."prob_constatado"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 204.094620000000000000
          Top = 132.283550000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'prob_relatado'
          DataSet = data_set_report_os
          DataSetName = 'data_set_report_os'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_os."prob_relatado"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 204.094620000000000000
          Top = 105.826840000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'acessorios'
          DataSet = data_set_report_os
          DataSetName = 'data_set_report_os'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_os."acessorios"]')
          ParentFont = False
        end
        object Shape8: TfrxShapeView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Top = 355.275820000000000000
          Width = 207.874150000000000000
          Height = 26.456710000000000000
          Fill.BackColor = clWindow
          Frame.Typ = []
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 359.055350000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'total_os'
          DataSet = data_set_report_os
          DataSetName = 'data_set_report_os'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_os."total_os"]')
          ParentFont = False
        end
        object Shape7: TfrxShapeView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Top = 328.819110000000000000
          Width = 207.874150000000000000
          Height = 26.456710000000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
          Top = 332.598640000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAIS')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795610000000000000
          Top = 359.055350000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'R$:')
          ParentFont = False
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Top = 49.133890000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftLeft]
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 49.133890000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 49.133890000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftLeft]
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 60.472480000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'codigo'
          DataSet = data_set_report_os
          DataSetName = 'data_set_report_os'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[data_set_report_os."codigo"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 60.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'serie'
          DataSet = data_set_report_os
          DataSetName = 'data_set_report_os'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[data_set_report_os."serie"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 60.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'patrimonio'
          DataSet = data_set_report_os
          DataSetName = 'data_set_report_os'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_os."patrimonio"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 56.692950000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'cor'
          DataSet = data_set_report_os
          DataSetName = 'data_set_report_os'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[data_set_report_os."cor"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 83.149660000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataField = 'modelo'
          DataSet = data_set_report_os
          DataSetName = 'data_set_report_os'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_os."modelo"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 83.149660000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataField = 'marca'
          DataSet = data_set_report_os
          DataSetName = 'data_set_report_os'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_set_report_os."marca"]')
          ParentFont = False
        end
      end
    end
  end
  object data_set_report_os: TfrxDBDataset
    UserName = 'data_set_report_os'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ordem_servico=ordem_servico'
      'ordem_servico_id=ordem_servico_id'
      'servico_produto_id=servico_produto_id'
      'user_id=user_id'
      'cliente_id=cliente_id'
      'titulo=titulo'
      'descricao_servico=descricao_servico'
      'prob_relatado=prob_relatado'
      'prob_constatado=prob_constatado'
      'data_disponibilidade=data_disponibilidade'
      'imagem=imagem'
      'data_hora=data_hora'
      'telefone_contato=telefone_contato'
      'codigo=codigo'
      'serie=serie'
      'patrimonio=patrimonio'
      'cor=cor'
      'modelo=modelo'
      'marca=marca'
      'status=status'
      'acessorios=acessorios'
      'situacao=situacao'
      'observacao=observacao'
      'total_os=total_os')
    DataSet = sql_print_os
    BCDToCurrency = False
    Left = 256
    Top = 312
  end
  object sql_query_os: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from ordem_servico')
    Left = 504
    Top = 184
    object sql_query_osordem_servico_id: TFDAutoIncField
      FieldName = 'ordem_servico_id'
      Origin = 'ordem_servico_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sql_query_osservico_produto_id: TIntegerField
      FieldName = 'servico_produto_id'
      Origin = 'servico_produto_id'
      Required = True
    end
    object sql_query_osuser_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'user_id'
      Origin = 'user_id'
    end
    object sql_query_oscliente_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cliente_id'
      Origin = 'cliente_id'
    end
    object sql_query_ostitulo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'titulo'
      Origin = 'titulo'
      Size = 45
    end
    object sql_query_osdescricao_servico: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao_servico'
      Origin = 'descricao_servico'
      Size = 255
    end
    object sql_query_osprob_relatado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prob_relatado'
      Origin = 'prob_relatado'
      Size = 255
    end
    object sql_query_osprob_constatado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prob_constatado'
      Origin = 'prob_constatado'
      Size = 255
    end
    object sql_query_osdata_disponibilidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'data_disponibilidade'
      Origin = 'data_disponibilidade'
      Size = 50
    end
    object sql_query_osimagem: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'imagem'
      Origin = 'imagem'
      Size = 50
    end
    object sql_query_osdata_hora: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'data_hora'
      Origin = 'data_hora'
      Size = 50
    end
    object sql_query_ostelefone_contato: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone_contato'
      Origin = 'telefone_contato'
      Size = 50
    end
    object sql_query_oscodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigo'
      Origin = 'codigo'
      Size = 50
    end
    object sql_query_osserie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'serie'
      Origin = 'serie'
      Size = 50
    end
    object sql_query_ospatrimonio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'patrimonio'
      Origin = 'patrimonio'
      Size = 50
    end
    object sql_query_oscor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cor'
      Origin = 'cor'
      Size = 50
    end
    object sql_query_osmodelo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'modelo'
      Origin = 'modelo'
      Size = 50
    end
    object sql_query_osmarca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'marca'
      Origin = 'marca'
      Size = 50
    end
    object sql_query_osstatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = '`status`'
      Size = 50
    end
    object sql_query_osacessorios: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'acessorios'
      Origin = 'acessorios'
      Size = 50
    end
    object sql_query_ossituacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'situacao'
      Origin = 'situacao'
      Size = 10
    end
    object sql_query_osobservacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'observacao'
      Origin = 'observacao'
      Size = 50
    end
    object sql_query_ostotal_os: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'total_os'
      Origin = 'total_os'
      Size = 50
    end
  end
  object data_source_query_os: TDataSource
    DataSet = sql_query_os
    Left = 624
    Top = 184
  end
end
