object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Converter Hex para TColor'
  ClientHeight = 87
  ClientWidth = 171
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object sbConverter: TButton
    Left = 24
    Top = 43
    Width = 121
    Height = 25
    Caption = 'Converter para TColor'
    TabOrder = 0
    OnClick = sbConverterClick
  end
  object EdHexCor: TEdit
    Left = 24
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 1
  end
end
