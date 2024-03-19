object DM: TDM
  Height = 480
  Width = 640
  object conexao: TFDConnection
    Params.Strings = (
      'Database=agenda'
      'DriverID=MySQL'
      'User_Name=root')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 48
  end
  object TBcontatos: TFDTable
    Active = True
    AfterInsert = TBcontatosAfterInsert
    IndexFieldNames = 'id'
    Connection = conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'contatos'
    Left = 168
    Top = 48
    object TBcontatosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object TBcontatosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object TBcontatoscelular: TStringField
      FieldName = 'celular'
      Origin = 'celular'
      Required = True
      Size = 16
    end
    object TBcontatosbloqueado: TBooleanField
      FieldName = 'bloqueado'
      Origin = 'bloqueado'
      Required = True
    end
    object TBcontatosdata: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = 'data'
    end
    object TBcontatosobservaçoes: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'observa'#231'oes'
      Origin = '`observa'#231'oes`'
      BlobType = ftMemo
    end
  end
  object DScontatos: TDataSource
    DataSet = TBcontatos
    Left = 280
    Top = 56
  end
end
