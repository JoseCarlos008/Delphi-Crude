object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Tela Inicial'
  ClientHeight = 413
  ClientWidth = 727
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 344
    Top = 224
    object CADASTRO1: TMenuItem
      Caption = 'CADASTRO'
      object CLIENTE1: TMenuItem
        Caption = 'CLIENTE'
        OnClick = CLIENTE1Click
      end
      object USURIO1: TMenuItem
        Caption = 'USU'#193'RIO'
        OnClick = USURIO1Click
      end
      object CIDADE1: TMenuItem
        Caption = 'CIDADE'
        OnClick = CIDADE1Click
      end
      object ESTADO1: TMenuItem
        Caption = 'ESTADO'
        OnClick = ESTADO1Click
      end
      object PAS1: TMenuItem
        Caption = 'PA'#205'S'
        OnClick = PAS1Click
      end
    end
  end
end
