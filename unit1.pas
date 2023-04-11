unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { Tprogressive1worldview }

  Tprogressive1worldview = class(TForm)
    pain1: TButton;
    pain0: TButton;
    hate1: TButton;
    hate2: TButton;
    hate3: TButton;
    hate4: TButton;
    hate5: TButton;
    hate6: TButton;
    pain2: TButton;
    pain3: TButton;
    pain4: TButton;
    pain5: TButton;
    pain6: TButton;
    pain7: TButton;
    pain8: TButton;
    pain9: TButton;
    endless: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure pain0Click(Sender: TObject);
    procedure hate1Click(Sender: TObject);
    procedure hate2Click(Sender: TObject);
    procedure hate3Click(Sender: TObject);
    procedure hate4Click(Sender: TObject);
    procedure hate5Click(Sender: TObject);
    procedure hate6Click(Sender: TObject);
    procedure pain1Click(Sender: TObject);
    procedure pain2Click(Sender: TObject);
    procedure pain3Click(Sender: TObject);
    procedure pain4Click(Sender: TObject);
    procedure pain5Click(Sender: TObject);
    procedure pain6Click(Sender: TObject);
    procedure pain7Click(Sender: TObject);
    procedure pain8Click(Sender: TObject);
    procedure pain9Click(Sender: TObject);
    procedure endlessChange(Sender: TObject);
  private

  public

  end;

var
  progressive1worldview: Tprogressive1worldview;
  ch1, ch2, rez: real;
  znak: char;

implementation

{$R *.lfm}

{ Tprogressive1worldview }

procedure Tprogressive1worldview.pain1Click(Sender: TObject);
begin
   endless.Text:=endless.Text + '1';
end;

procedure Tprogressive1worldview.pain0Click(Sender: TObject);
begin
   endless.Text:=endless.Text + '0';
end;

procedure Tprogressive1worldview.FormCreate(Sender: TObject);
begin

end;

procedure Tprogressive1worldview.hate1Click(Sender: TObject);
begin
  endless.Clear;
end;

procedure Tprogressive1worldview.hate2Click(Sender: TObject);
begin
   if endless.Text = '' then abort;
  ch2 := StrToFloat(endless.Text);
  endless.Clear;
  if znak = '+' then
  begin
    rez := ch1 + ch2;
  end;
  if znak = '-' then
  begin
    rez := ch1 - ch2;
  end;
  if znak = '*' then
  begin
    rez := ch1 * ch2;
  end;
  if znak = '/' then
  begin
    if ch2 = 0 then begin ShowMessage('Деление на ноль невозможно!'); Abort; end;
    rez := ch1 / ch2;
  end;
  endless.Text:= FloatToStr(rez);
end;

procedure Tprogressive1worldview.hate3Click(Sender: TObject);
begin
   if endless.Text = '' then abort;
  ch1:=StrToFloat(endless.Text);
  znak:= '-';
  endless.Clear;
end;

procedure Tprogressive1worldview.hate4Click(Sender: TObject);
begin
   if endless.Text = '' then abort;
  ch1:=StrToFloat(endless.Text);
  znak:= '+';
  endless.Clear;
end;

procedure Tprogressive1worldview.hate5Click(Sender: TObject);
begin
   if endless.Text = '' then abort;
  ch1:=StrToFloat(endless.Text);
  znak:= '*';
  endless.Clear;
end;

procedure Tprogressive1worldview.hate6Click(Sender: TObject);
begin
   if endless.Text = '' then abort;
  ch1:=StrToFloat(endless.Text);
  znak:= '/';
  endless.Clear;
end;

procedure Tprogressive1worldview.pain2Click(Sender: TObject);
begin
   endless.Text:=endless.Text + '4';
end;

procedure Tprogressive1worldview.pain3Click(Sender: TObject);
begin
   endless.Text:=endless.Text + '7';
end;

procedure Tprogressive1worldview.pain4Click(Sender: TObject);
begin
   endless.Text:=endless.Text + '2';
end;

procedure Tprogressive1worldview.pain5Click(Sender: TObject);
begin
   endless.Text:=endless.Text + '5';
end;

procedure Tprogressive1worldview.pain6Click(Sender: TObject);
begin
   endless.Text:=endless.Text + '8';
end;

procedure Tprogressive1worldview.pain7Click(Sender: TObject);
begin
   endless.Text:=endless.Text + '3';
end;

procedure Tprogressive1worldview.pain8Click(Sender: TObject);
begin
   endless.Text:=endless.Text + '6';
end;

procedure Tprogressive1worldview.pain9Click(Sender: TObject);
begin
   endless.Text:=endless.Text + '9';
end;

procedure Tprogressive1worldview.endlessChange(Sender: TObject);
begin

end;

end.

