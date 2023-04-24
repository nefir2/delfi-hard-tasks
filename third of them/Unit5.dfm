object Form5: TForm5
  Left = 1160
  Top = 62
  Caption = 'Form5'
  ClientHeight = 218
  ClientWidth = 519
  Color = clPurple
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 103
    Width = 503
    Height = 105
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 503
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
    OnKeyDown = Memo1KeyDown
  end
  object OpenDialog1: TOpenDialog
    Left = 80
    Top = 112
  end
  object SaveDialog1: TSaveDialog
    Left = 112
    Top = 112
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 144
    Top = 112
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 112
    object EXT1: TMenuItem
      Caption = 'TEXT'
      object LOAD1: TMenuItem
        Caption = 'LOAD'
        OnClick = LOAD1Click
      end
      object SAVE1: TMenuItem
        Caption = 'SAVE'
        OnClick = SAVE1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object ENABLED1: TMenuItem
        Caption = 'ENABLED'
        Checked = True
        OnClick = ENABLED1Click
      end
    end
    object ALIGNMENT1: TMenuItem
      Caption = 'ALIGNMENT'
      object LEFT1: TMenuItem
        Caption = 'LEFT'
        ShortCut = 16460
        OnClick = LEFT1Click
      end
      object CENTER2: TMenuItem
        Caption = 'CENTER'
        ShortCut = 16453
        OnClick = center2click
      end
      object right1: TMenuItem
        Caption = 'RIGHT'
        ShortCut = 16466
        OnClick = right1click
      end
    end
    object GRAPHICS1: TMenuItem
      Caption = 'GRAPHICS'
      object LOAD2: TMenuItem
        Caption = 'LOAD'
        OnClick = LOAD2Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object CENTER1: TMenuItem
        Caption = 'CENTER'
        Enabled = False
        OnClick = CENTER1Click
      end
      object STRETCH1: TMenuItem
        Caption = 'STRETCH'
        Enabled = False
        OnClick = STRETCH1Click
      end
    end
    object LINES1: TMenuItem
      Caption = 'LINES'
      object ADD1: TMenuItem
        Caption = 'ADD'
        OnClick = ADD1Click
      end
      object N3: TMenuItem
        Caption = '-'
        Visible = False
      end
    end
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 48
    Top = 112
    object CLEAR1: TMenuItem
      Caption = 'CLEAR'
      OnClick = CLEAR1Click
    end
  end
end
