object Form2: TForm2
  Left = 580
  Top = 166
  Caption = 'Form2'
  ClientHeight = 200
  ClientWidth = 361
  Color = 4330752
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 153
    Height = 65
    TabOrder = 0
    object Edit1: TEdit
      Left = 7
      Top = 6
      Width = 130
      Height = 21
      TabOrder = 0
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 7
      Top = 37
      Width = 130
      Height = 21
      TabOrder = 1
      Text = 'Edit2'
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 79
    Width = 153
    Height = 50
    TabOrder = 1
    object CheckBox1: TCheckBox
      Left = 10
      Top = 0
      Width = 97
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 10
      Top = 23
      Width = 97
      Height = 17
      Caption = 'CheckBox2'
      TabOrder = 1
    end
  end
  object RichEdit1: TRichEdit
    Left = 167
    Top = 8
    Width = 185
    Height = 152
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'RichEdit1')
    ParentFont = False
    TabOrder = 2
    Zoom = 100
  end
  object Button1: TButton
    Left = 8
    Top = 135
    Width = 73
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = EDITBOXES1Click
  end
  object Button2: TButton
    Left = 87
    Top = 135
    Width = 74
    Height = 25
    Caption = 'Button2'
    TabOrder = 4
    OnClick = CHECKBOXES1Click
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 168
    object FILE1: TMenuItem
      Caption = 'FILE'
      object OPEN1: TMenuItem
        Caption = 'OPEN'
        OnClick = OPEN1Click
      end
      object SAVEAS1: TMenuItem
        Caption = 'SAVE AS'
        OnClick = SAVEAS1Click
      end
    end
    object BUTTONS1: TMenuItem
      Caption = 'BUTTONS'
      object ENABLEFIRST1: TMenuItem
        Caption = 'ENABLE FIRST'
        OnClick = ENABLEFIRST1Click
      end
      object ENABLESECOND1: TMenuItem
        Caption = 'ENABLE SECOND'
        OnClick = ENABLESECOND1Click
      end
    end
    object VIEWS1: TMenuItem
      Caption = 'VIEWS'
      object EDITBOXES1: TMenuItem
        Caption = 'EDIT BOXES'
        OnClick = EDITBOXES1Click
      end
      object CHECKBOXES1: TMenuItem
        Caption = 'CHECK BOXES'
        OnClick = CHECKBOXES1Click
      end
    end
    object PULLDOWNS1: TMenuItem
      Caption = 'PULLDOWNS'
      object REMOVEFILEMENU1: TMenuItem
        Caption = 'REMOVE FILE MENU'
        OnClick = REMOVEFILEMENU1Click
      end
      object DISABLEBUTTONSMENU1: TMenuItem
        Caption = 'DISABLE BUTTONS MENU'
        OnClick = DISABLEBUTTONSMENU1Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 40
    Top = 168
  end
  object SaveDialog1: TSaveDialog
    Left = 72
    Top = 168
  end
end
