object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1058#1045#1050#1057#1058#1054#1042#1067#1049' '#1056#1045#1044#1040#1050#1058#1054#1056
  ClientHeight = 217
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 400
    Height = 27
    Align = alTop
    AutoSize = True
    TabOrder = 0
    object ButtonNew: TButton
      Left = 0
      Top = 2
      Width = 77
      Height = 23
      Caption = #1053#1054#1042#1067#1049
      TabOrder = 0
      OnClick = ButtonNewClick
    end
    object ButtonOpen: TButton
      Left = 76
      Top = 1
      Width = 75
      Height = 25
      Caption = #1054#1058#1050#1056#1067#1058#1068
      TabOrder = 1
      OnClick = ButtonOpenClick
    end
    object ButtonFont: TButton
      Left = 149
      Top = 1
      Width = 75
      Height = 25
      Caption = #1064#1056#1048#1060#1058
      TabOrder = 2
      OnClick = ButtonFontClick
    end
    object ButtonExit: TButton
      Left = 325
      Top = 1
      Width = 75
      Height = 23
      Caption = #1042#1067#1061#1054#1044
      TabOrder = 3
      OnClick = ButtonExitClick
    end
    object CheckBold: TCheckBox
      Left = 244
      Top = 1
      Width = 75
      Height = 23
      Caption = #1046#1048#1056#1053#1067#1049
      TabOrder = 4
      OnClick = CheckBoldClick
    end
  end
  object MemoOut: TMemo
    Left = 0
    Top = 27
    Width = 400
    Height = 190
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 76
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 168
    Top = 24
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      #1058#1045#1050#1057#1058#1054#1042#1048#1050#1048'|*.txt|SHELL-'#1057#1050#1056#1048#1055#1058#1067'|*.sh|C#-'#1057#1050#1056#1048#1055#1058#1067'|*.cs|'#1042#1057#1025' '#1063#1058#1054' '#1045#1057#1058#1068 +
      '|*.*'
    Left = 96
    Top = 24
  end
end
