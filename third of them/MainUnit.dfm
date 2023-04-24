object MainForm: TMainForm
  Left = 80
  Top = 145
  Caption = 'BUTTONER'
  ClientHeight = 151
  ClientWidth = 343
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 105
    Height = 65
    Caption = 'FORM1'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 119
    Top = 8
    Width = 105
    Height = 65
    Caption = 'FORM2'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 230
    Top = 8
    Width = 105
    Height = 65
    Caption = 'FORM3'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 79
    Width = 105
    Height = 65
    Caption = 'FORM4'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 119
    Top = 79
    Width = 105
    Height = 65
    Caption = 'FORM5'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 230
    Top = 79
    Width = 105
    Height = 65
    Caption = 'FORM6'
    TabOrder = 5
    OnClick = Button6Click
  end
end
