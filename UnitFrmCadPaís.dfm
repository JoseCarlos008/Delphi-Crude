object ufrmcadpais: Tufrmcadpais
  Left = 0
  Top = 0
  Caption = 'Cadastro Pa'#237's'
  ClientHeight = 633
  ClientWidth = 726
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 32
    Width = 11
    Height = 13
    Caption = 'ID'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 72
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 112
    Width = 42
    Height = 13
    Caption = 'CAPITAL'
    FocusControl = DBEdit3
  end
  object Label5: TLabel
    Left = 24
    Top = 291
    Width = 35
    Height = 13
    Caption = 'NOME*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 331
    Width = 683
    Height = 241
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 48
    Width = 134
    Height = 21
    DataField = 'ID'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 88
    Width = 329
    Height = 21
    DataField = 'NOME'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 128
    Width = 329
    Height = 21
    DataField = 'CAPITAL'
    DataSource = DataSource1
    TabOrder = 3
  end
  object tbtneditar: TButton
    Left = 632
    Top = 303
    Width = 75
    Height = 25
    Caption = '&Editar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = tbtneditarClick
  end
  object tbtnexcluir: TButton
    Left = 632
    Top = 272
    Width = 75
    Height = 25
    Caption = '&Excluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = tbtnexcluirClick
  end
  object Edit1: TEdit
    Left = 24
    Top = 304
    Width = 395
    Height = 21
    TabOrder = 6
  end
  object tbtnconsultar: TButton
    Left = 425
    Top = 302
    Width = 75
    Height = 25
    Caption = '&Consultar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = tbtnconsultarClick
  end
  object tbtnsalvar: TButton
    Left = 24
    Top = 592
    Width = 75
    Height = 25
    Caption = '&Salvar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = tbtnsalvarClick
  end
  object tbtnnovo: TButton
    Left = 344
    Top = 592
    Width = 75
    Height = 25
    Caption = '&Novo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = tbtnnovoClick
  end
  object tbtncancelar: TButton
    Left = 632
    Top = 592
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = tbtncancelarClick
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Users\Aluno\Desktop\MeuProjeto\PROJETO\MEUBANCO.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    Left = 680
    Top = 24
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 680
    Top = 80
  end
  object IBTable1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftWideString
        Size = 25
      end
      item
        Name = 'CAPITAL'
        DataType = ftWideString
        Size = 25
      end>
    IndexDefs = <
      item
        Name = 'PK_PAIS'
        Fields = 'ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'PAIS'
    Left = 680
    Top = 136
    object IBTable1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IBTable1NOME: TIBStringField
      FieldName = 'NOME'
      Size = 25
    end
    object IBTable1CAPITAL: TIBStringField
      FieldName = 'CAPITAL'
      Size = 25
    end
  end
  object DataSource1: TDataSource
    DataSet = IBTable1
    Left = 680
    Top = 192
  end
end
