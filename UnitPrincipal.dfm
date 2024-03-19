object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Agenda de Contatos'
  ClientHeight = 625
  ClientWidth = 768
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 768
    Height = 625
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 8
    object Label1: TLabel
      Left = 58
      Top = 40
      Width = 238
      Height = 35
      Caption = 'Agenda de Contatos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -25
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 56
      Top = 139
      Width = 98
      Height = 15
      Caption = 'Nome do Contato'
    end
    object Label3: TLabel
      Left = 56
      Top = 219
      Width = 38
      Height = 15
      Caption = 'Celular'
    end
    object Label4: TLabel
      Left = 58
      Top = 344
      Width = 71
      Height = 15
      Caption = 'Observa'#231'oes'
    end
    object Label5: TLabel
      Left = 56
      Top = 496
      Width = 183
      Height = 21
      Caption = 'Data e hora do Cadastro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 58
      Top = 536
      Width = 183
      Height = 17
      DataField = 'data'
      DataSource = DM.DScontatos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 392
      Top = 219
      Width = 101
      Height = 15
      Caption = 'Busca de Contatos'
    end
    object DBEdit1: TDBEdit
      Left = 58
      Top = 160
      Width = 238
      Height = 33
      DataField = 'nome'
      DataSource = DM.DScontatos
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 58
      Top = 240
      Width = 238
      Height = 33
      DataField = 'celular'
      DataSource = DM.DScontatos
      TabOrder = 1
    end
    object DBCheckBox1: TDBCheckBox
      Left = 128
      Top = 305
      Width = 97
      Height = 17
      Caption = 'Bloqueado'
      DataField = 'bloqueado'
      DataSource = DM.DScontatos
      TabOrder = 2
    end
    object DBMemo1: TDBMemo
      Left = 56
      Top = 365
      Width = 238
      Height = 116
      DataField = 'observa'#231'oes'
      DataSource = DM.DScontatos
      TabOrder = 3
    end
    object DBNavigator1: TDBNavigator
      Left = 352
      Top = 72
      Width = 310
      Height = 105
      DataSource = DM.DScontatos
      TabOrder = 4
    end
    object DBGrid1: TDBGrid
      Left = 392
      Top = 288
      Width = 320
      Height = 241
      DataSource = DM.DScontatos
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Contato Cadastrados'
          Visible = True
        end>
    end
    object txtBusca: TEdit
      Left = 392
      Top = 240
      Width = 320
      Height = 33
      TabOrder = 6
      OnChange = txtBuscaChange
    end
  end
end
