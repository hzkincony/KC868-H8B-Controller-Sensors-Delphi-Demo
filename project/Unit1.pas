unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Win.ScktComp, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  Tautom_matinForm = class(TForm)
    autom_btn_op: TButton;
    autom_btn_init: TButton;
    ClientSocket: TClientSocket;
    autom_btn_swch1: TButton;
    autom_btn_swch2: TButton;
    autom_btn_swch3: TButton;
    autom_btn_swch4: TButton;
    autom_btn_swch5: TButton;
    autom_btn_swch6: TButton;
    autom_btn_swch7: TButton;
    autom_btn_swch8: TButton;
    IPStat: TEdit;
    Memo1: TMemo;
    SensorReadInit: TLabel;
    TAlarmChk: TTimer;
    alarm_stat_1: TEdit;
    alarm_stat_2: TEdit;
    alarm_stat_3: TEdit;
    alarm_stat_4: TEdit;
    alarm_stat_5: TEdit;
    alarm_stat_6: TEdit;
    alarm_stat_7: TEdit;
    alarm_stat_8: TEdit;
    TRelayOffAll: TTimer;

    procedure autom_btn_opClick(Sender: TObject);
    procedure autom_btn_initClick(Sender: TObject);
    procedure autom_btn_swch1Click(Sender: TObject);
    procedure autom_btn_swch2Click(Sender: TObject);
    procedure autom_btn_swch3Click(Sender: TObject);
    procedure autom_btn_swch4Click(Sender: TObject);
    procedure autom_btn_swch5Click(Sender: TObject);
    procedure autom_btn_swch6Click(Sender: TObject);
    procedure autom_btn_swch7Click(Sender: TObject);
    procedure autom_btn_swch8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ClientSocketConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure TAlarmChkTimer(Sender: TObject);
    procedure alarm_stat_1Change(Sender: TObject);
    procedure alarm_stat_2Change(Sender: TObject);
    procedure alarm_stat_3Change(Sender: TObject);
    procedure alarm_stat_4Change(Sender: TObject);
    procedure alarm_stat_5Change(Sender: TObject);
    procedure alarm_stat_6Change(Sender: TObject);
    procedure alarm_stat_7Change(Sender: TObject);
    procedure alarm_stat_8Change(Sender: TObject);
    procedure TRelayOffAllTimer(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  autom_matinForm: Tautom_matinForm;
  v_swch1 : Integer;
  v_swch2: Integer;
  v_swch3: Integer;
  v_swch4: Integer;
  v_swch5: Integer;
  v_swch6: Integer;
  v_swch7: Integer;
  v_swch8: Integer;

implementation

{$R *.dfm}

//Socket port reset
procedure Tautom_matinForm.autom_btn_opClick(Sender: TObject);
begin

  ClientSocket.Active:=False;    //Close Socket Port
  ClientSocket.Active:=True;     //Open Socket Port

end;

//Button 1 (ON/OFF)
procedure Tautom_matinForm.autom_btn_swch1Click(Sender: TObject);
begin
if ClientSocket.Active then
  begin
  if (v_swch1=0) then
    begin
    ClientSocket.Socket.SendText('RELAY-SET-1,1,1');
    v_swch1 := 1;
    end
  else
    begin
    ClientSocket.Socket.SendText('RELAY-SET-1,1,0');
    v_swch1 := 0;
    end;
  end;
end;

//Button 2 (ON/OFF)
procedure Tautom_matinForm.autom_btn_swch2Click(Sender: TObject);
begin
if ClientSocket.Active then
  begin
  if (v_swch2=0) then
    begin
    ClientSocket.Socket.SendText('RELAY-SET-2,2,1');
    v_swch2 := 1;
    end
    else
    begin
    ClientSocket.Socket.SendText('RELAY-SET-2,2,0');
    v_swch2 := 0;
    end;
  end;
end;

//Button 3 (ON/OFF)
procedure Tautom_matinForm.autom_btn_swch3Click(Sender: TObject);
begin
if ClientSocket.Active then
  begin
  if (v_swch3=0) then
    begin
    ClientSocket.Socket.SendText('RELAY-SET-3,3,1');
    v_swch3 := 1;
    end
    else
    begin
    ClientSocket.Socket.SendText('RELAY-SET-3,3,0');
    v_swch3 := 0;
    end;
  end;
end;

//Button 4 (ON/OFF)
procedure Tautom_matinForm.autom_btn_swch4Click(Sender: TObject);
begin
if ClientSocket.Active then
  begin
  if (v_swch4=0) then
    begin
    ClientSocket.Socket.SendText('RELAY-SET-4,4,1');
    v_swch4 := 1;
    end
    else
    begin
    ClientSocket.Socket.SendText('RELAY-SET-4,4,0');
    v_swch4 := 0;
    end;
  end;
end;

//Button 5 (ON/OFF)
procedure Tautom_matinForm.autom_btn_swch5Click(Sender: TObject);
begin
if ClientSocket.Active then
  begin
  if (v_swch5=0) then
    begin
    ClientSocket.Socket.SendText('RELAY-SET-5,5,1');
    v_swch5 := 1;
    end
    else
    begin
    ClientSocket.Socket.SendText('RELAY-SET-5,5,0');
    v_swch5 := 0;
    end;
  end;
end;

//Button 6 (ON/OFF)
procedure Tautom_matinForm.autom_btn_swch6Click(Sender: TObject);
begin
begin
if ClientSocket.Active then
  begin
  if (v_swch6=0) then
    begin
    ClientSocket.Socket.SendText('RELAY-SET-6,6,1');
    v_swch6 := 1;
    end
    else
    begin
    ClientSocket.Socket.SendText('RELAY-SET-6,6,0');
    v_swch6 := 0;
    end;
  end;
end;
end;

//Button 7 (ON/OFF)
procedure Tautom_matinForm.autom_btn_swch7Click(Sender: TObject);
begin
if ClientSocket.Active then
  begin
  if (v_swch7=0) then
    begin
    ClientSocket.Socket.SendText('RELAY-SET-7,7,1');
    v_swch7 := 1;
    end
    else
    begin
    ClientSocket.Socket.SendText('RELAY-SET-7,7,0');
    v_swch7 := 0;
    end;
  end;
end;

//Button 8 (ON/OFF)
procedure Tautom_matinForm.autom_btn_swch8Click(Sender: TObject);
begin
if ClientSocket.Active then
  begin
  if (v_swch8=0) then
    begin
    ClientSocket.Socket.SendText('RELAY-SET-8,8,1');
    v_swch8 := 1;
    end
    else
    begin
    ClientSocket.Socket.SendText('RELAY-SET-8,8,0');
    v_swch8 := 0;
    end;
  end;
end;

//Initialization of a device, on Socket Connect
procedure Tautom_matinForm.ClientSocketConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  ClientSocket.Socket.SendText('RELAY-SCAN_DEVICE-NOW');
  Sleep(1000);
  ClientSocket.Socket.SendText('RELAY-TEST-NOW');
end;

//On Change of Edit 1, click Button 1
procedure Tautom_matinForm.alarm_stat_1Change(Sender: TObject);
begin
    autom_btn_swch1.Click;
end;

//On Change of Edit 2, click Button 2
procedure Tautom_matinForm.alarm_stat_2Change(Sender: TObject);
begin
    autom_btn_swch2.Click;
end;

//On Change of Edit 3, click Button 3
procedure Tautom_matinForm.alarm_stat_3Change(Sender: TObject);
begin
    autom_btn_swch3.Click;
end;

//On Change of Edit 4, click Button 4
procedure Tautom_matinForm.alarm_stat_4Change(Sender: TObject);
begin
    autom_btn_swch4.Click;
end;

//On Change of Edit 5, click Button 5
procedure Tautom_matinForm.alarm_stat_5Change(Sender: TObject);
begin
    autom_btn_swch5.Click;
end;

//On Change of Edit 6, click Button 6
procedure Tautom_matinForm.alarm_stat_6Change(Sender: TObject);
begin
    autom_btn_swch6.Click;
end;

//On Change of Edit 7, click Button 7
procedure Tautom_matinForm.alarm_stat_7Change(Sender: TObject);
begin
    autom_btn_swch7.Click;
end;

//On Change of Edit 8, click Button 8
procedure Tautom_matinForm.alarm_stat_8Change(Sender: TObject);
begin
    autom_btn_swch8.Click;
end;

//Initialization of a device, on Button Initialization clicked
procedure Tautom_matinForm.autom_btn_initClick(Sender: TObject);
begin
  ClientSocket.Socket.SendText('RELAY-SCAN_DEVICE-NOW');
  Sleep(1000);
  ClientSocket.Socket.SendText('RELAY-TEST-NOW');
end;

//Read the specific line from a text file
function ReadLine(position: Cardinal; FileName: TFileName): string;
  var
  F: TextFile;
  line: string;
  j : Integer;
begin

  Result := '';

  if not FileExists(FileName) then
    raise Exception.Create('Error. File does not exist.');


  AssignFile(F, FileName);
  Reset(F);
  for  j := 1 to position do
  begin
    if Eof(F) then
    begin
      CloseFile(F);
      raise Exception.Create(Format('Error. File "% s" is too short. Unable to read line %d.',
        [FileName, position]));
    end;
    Readln(F, line);
  end;
  CloseFile(F);
  Result := line;
end;

//Event On Show Main Form
procedure Tautom_matinForm.FormShow(Sender: TObject);
var
I : Integer;
begin
  //Text file parameter - read from a file
  ClientSocket.Address := ReadLine(1, 'config.txt');
  ClientSocket.Host := ReadLine(2, 'config.txt');
  ClientSocket.Port := StrToInt(ReadLine(3, 'config.txt'));
  IPStat.Text:= ReadLine(1, 'config.txt');

  {If the first line in a file is zero (0), app will run,
  but won't do anything}
  if IPStat.Text = '0' then
  begin
   ClientSocket.Active:=false;
  end

  else
  begin
    ClientSocket.Active:=False;   //Close Socket Port
    Sleep(1000);
    ClientSocket.Active:=True;
    Sleep(1000);    //Open Socket Port

    {Enable timer to make sure to turn off all relays,
    while app is closing}
    TRelayOffAll.Enabled := True;
  end;
end;

//Convert integer to binary
function IntToBinLowByte(Value: LongWord): string;
var
  i: Integer;
begin
  SetLength(Result, 8);
  for i := 1 to 8 do begin
    if ((Value shl (24+i-1)) shr 31) = 0 then begin
      Result[i] := '0'
    end else begin
      Result[i] := '1';
    end;
  end;
end;

{Timer for populating Edit fields with ones (1) and zeros (0),
and populating a Memo field with the complete binary number}
procedure Tautom_matinForm.TAlarmChkTimer(Sender: TObject);
var
i: integer;
status1,status2 : string;
s1,s2  : string;
alarm1,alarm2,alarm3,alarm4,alarm5,alarm6,alarm7,alarm8 : string;
begin
  if IPStat.Text <> '0' then
   begin
    s1 := 'RELAY-GET_INPUT-255,';
    s2 := ',OK';

    ClientSocket.Socket.SendText('RELAY-GET_INPUT-255,255,OK');
    status1 := ClientSocket.Socket.ReceiveText;
    Memo1.lines.Add(status1);
    status1 := StringReplace(status1,s1,'', [rfReplaceAll]);
    Memo1.lines.Add(status1);
    status1 := StringReplace(status1,s2,'', [rfReplaceAll]);
    Memo1.lines.Add(status1);

    status2 := status1[1]+status1[2]+status1[3];
    SensorReadInit.Caption := status2;
    if status2 <> 'REL' then
    begin
      status1 := IntToBinLowByte(strtoint(status1));
      Memo1.lines.Add(status1);

      alarm1 := status1[1];
      alarm2 := status1[2];
      alarm3 := status1[3];
      alarm4 := status1[4];
      alarm5 := status1[5];
      alarm6 := status1[6];
      alarm7 := status1[7];
      alarm8 := status1[8];

      alarm_stat_1.Text := alarm1;
      alarm_stat_2.Text := alarm2;
      alarm_stat_3.Text := alarm3;
      alarm_stat_4.Text := alarm4;
      alarm_stat_5.Text := alarm5;
      alarm_stat_6.Text := alarm6;
      alarm_stat_7.Text := alarm7;
      alarm_stat_8.Text := alarm8;
    end;
   end;
end;

{Timer for making sure to turn off all relays,
while app is closing}
procedure Tautom_matinForm.TRelayOffAllTimer(Sender: TObject);
var
I : Integer;
begin
    if IPStat.Text <> '0' then
    begin
    for I := 1 to 8 do
      begin
        ClientSocket.Socket.SendText('RELAY-SET-'+ IntToStr(I)+','+ IntToStr(I)+',0');
        Sleep(1000);
      end;
    end;
    TrelayOffAll.Enabled := False;
end;

initialization
  v_swch1:=0;
  v_swch2:=0;
  v_swch3:=0;
  v_swch4:=0;
  v_swch5:=0;
  v_swch6:=0;
  v_swch7:=0;
  v_swch8:=0;
end.
