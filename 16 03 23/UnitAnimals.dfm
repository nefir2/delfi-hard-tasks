object Animals: TAnimals
  Left = 0
  Top = 0
  Caption = 'ANIMALS'
  ClientHeight = 354
  ClientWidth = 553
  Color = clBtnShadow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RadioButtonAnimal: TRadioButton
    Left = 24
    Top = 32
    Width = 113
    Height = 17
    Caption = 'ANIMAL'
    TabOrder = 0
    OnClick = RadioButtonAnimalClick
  end
  object RadioButtonDog: TRadioButton
    Left = 24
    Top = 71
    Width = 113
    Height = 17
    Caption = 'DOG'
    TabOrder = 1
    OnClick = RadioButtonDogClick
  end
  object RadioButtonCat: TRadioButton
    Left = 24
    Top = 102
    Width = 113
    Height = 17
    Caption = 'CAT'
    TabOrder = 2
    OnClick = RadioButtonCatClick
  end
  object ButtonKind: TButton
    Left = 194
    Top = 39
    Width = 81
    Height = 33
    Caption = 'SELECT'
    TabOrder = 3
    OnClick = ButtonKindClick
  end
  object CheckBox1: TCheckBox
    Left = 24
    Top = 175
    Width = 97
    Height = 17
    Caption = 'CheckBox1'
    TabOrder = 4
    Visible = False
    OnClick = CheckBox1Click
  end
  object CheckBox2: TCheckBox
    Left = 24
    Top = 198
    Width = 97
    Height = 17
    Caption = 'CheckBox1'
    TabOrder = 5
    Visible = False
    OnClick = CheckBox1Click
  end
  object Panel1: TPanel
    Left = 308
    Top = 32
    Width = 197
    Height = 122
    BevelEdges = []
    BorderWidth = 2
    BorderStyle = bsSingle
    TabOrder = 6
    object LabelEAT1: TLabel
      Left = 67
      Top = 56
      Width = 30
      Height = 19
      Caption = 'EAT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelVOICE1: TLabel
      Left = 67
      Top = 34
      Width = 47
      Height = 19
      Caption = 'VOICE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 308
    Top = 185
    Width = 221
    Height = 112
    BorderWidth = 2
    BorderStyle = bsSingle
    TabOrder = 7
    Visible = False
    object infolabel1: TLabel
      Left = 8
      Top = 24
      Width = 69
      Height = 19
      Caption = 'HEIGHT: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object VALUELABEL1: TLabel
      Left = 136
      Top = 24
      Width = 103
      Height = 19
      Caption = 'VALUELABEL1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object infolabel2: TLabel
      Left = 8
      Top = 49
      Width = 106
      Height = 19
      Caption = 'EAR LENGTH: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object VALUELABEL2: TLabel
      Left = 136
      Top = 49
      Width = 103
      Height = 19
      Caption = 'VALUELABEL2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object infolabel3: TLabel
      Left = 8
      Top = 74
      Width = 122
      Height = 19
      Caption = 'WOOL LENGTH: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object VALUELABEL3: TLabel
      Left = 136
      Top = 74
      Width = 103
      Height = 19
      Caption = 'VALUELABEL3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
end
