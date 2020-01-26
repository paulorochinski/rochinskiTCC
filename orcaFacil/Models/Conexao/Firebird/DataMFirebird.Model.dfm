object FDataMFirebird: TFDataMFirebird
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 198
  Width = 264
  object FBancoDeDados: TFDConnection
    Left = 32
    Top = 8
  end
  object DriverLink: TFDPhysFBDriverLink
    Left = 32
    Top = 56
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 88
    Top = 32
  end
  object FDQuery1: TFDQuery
    Connection = FBancoDeDados
    Left = 120
    Top = 112
  end
end
