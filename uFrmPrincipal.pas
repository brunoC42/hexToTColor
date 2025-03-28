unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Clipbrd, System.UITypes;

type
  TFrmPrincipal = class(TForm)
    sbConverter: TButton;
    EdHexCor: TEdit;
    procedure sbConverterClick(Sender: TObject);
  private
    function HexToTColor(sColor: string): TColor;
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.sbConverterClick(Sender: TObject);
begin
  FrmPrincipal.Color := HexToTColor(EdHexCor.Text);
  Clipboard.AsText   := IntToStr(HexToTColor(EdHexCor.Text));
  MessageDlg('Copiado o código TColor para a área de transferência', TMsgDlgType.mtConfirmation, [mbOk], 0);
end;

function TFrmPrincipal.HexToTColor(sColor : string) : TColor;
begin
   sColor := StringReplace(sColor, '#', EmptyStr, [rfReplaceAll]);
   Result := 0;

   try
     Result :=
       RGB(
         StrToInt('$'+Copy(sColor, 1, 2)),
         StrToInt('$'+Copy(sColor, 3, 2)),
         StrToInt('$'+Copy(sColor, 5, 2))
       );
   except
     MessageDlg('Hexadecimal inválido!', TMsgDlgType.mtError, [mbOk], 0);
     Abort;
   end;
end;

end.
