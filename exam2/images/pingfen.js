//*******************************************
//·��
var path = document.location.href;  
var so = /\//g;
path1 = path.substring(0, path.lastIndexOf("/")+1);  //ȡ��·��
path2 = path.substring(8, path.lastIndexOf("/")+1);  //������������
path3 = path2.replace(so,"\\");  //��б�ܱ�ʾ
//*******************************************
//ִ��
function run(cmd)
{
var obj = new ActiveXObject("WScript.Shell");
obj.run(cmd);
}

function run1(cmd)
{
var obj = new ActiveXObject("WScript.Shell");
obj.run(cmd,0);
}
//*******************************************
//�����Ϣ
var msg = "";
//ѡ������ȷ��
var Solution = new Array('D','C','D','B','D','B','D','D','D','B','D','B','B','C','A','C','A','A','A','B','B','C','D','A');
//������������ȷ��
var da = "CCTV���ţ��϶�2���Ѿ��ɹ������������";
//*******************************************
//ѡ��������һ
function XuanZe1()
{
  var correct = 0;
  var wrong = 0;
  for (number=0; number < 7; number++)
    {
      var form = document.forms[number];     // Question #
      var i = GetSelectedButton(form.q1);
      if (form.q1[i].checked && form.q1[i].value == "1")
         { correct++; } 
        else 
         { wrong++;
           msg += "��"+(number+1)+"��"+"��" +Solution[number]+"<BR>";
         }
    }
//���ѡ������1���
  var SecWin = window.open("","scorewin","scrollbars,width=240,height=480");
  var MustHave1 = "<HTML><HEAD><TITLE>���ֽ��:</TITLE></HEAD><BODY bgcolor=eeeeee>";
  var Percent = "<font color='red'><b>ѡ����ɼ� : "+ Math.round(correct*2) +"��"+ "</b></font><HR>";
  lastscore=Math.round(correct*2);
  if (lastscore == "14"){
  msg = MustHave1 +Percent + "<font color='red'>��ϲ��ȫ������ˣ�</font><p>" + msg  + "<input type='button' value='�رմ���' onclick=javascript:window.close()></BODY></HTML>"}
  else {
  msg = MustHave1 +Percent + "<font color='red'>��ȷ�𰸣�</font><br>" + msg  + "<input type='button' value='�رմ���' onclick=javascript:window.close()></BODY></HTML>"}  
  SecWin.document.write(msg)
  msg = ""  //���msg
}
//*******************************************
//ѡ�������ֶ�
function XuanZe2()
{
  var correct = 0;
  var wrong = 0;
  for (number=7; number < 15; number++)
    {
      var form = document.forms[number];     // Question #
      var i = GetSelectedButton(form.q1);
      if (form.q1[i].checked && form.q1[i].value == "1")
         { correct++; } 
        else 
         { wrong++;
           msg += "��"+(number+1)+"��"+"��" +Solution[number]+"<BR>";
         }
    }
//���ѡ������2���
  var SecWin = window.open("","scorewin","scrollbars,width=240,height=480");
  var MustHave1 = "<HTML><HEAD><TITLE>���ֽ��:</TITLE></HEAD><BODY bgcolor=eeeeee>";
  var Percent = "<font color='red'><b>ѡ����ɼ� : "+ Math.round(correct*2) +"��"+ "</b></font><HR>";
  lastscore=Math.round(correct*2);
  if (lastscore == "16"){
  msg = MustHave1 +Percent + "<font color='red'>��ϲ��ȫ������ˣ�</font><p>" + msg  + "<input type='button' value='�رմ���' onclick=javascript:window.close()></BODY></HTML>"}
  else {
  msg = MustHave1 +Percent + "<font color='red'>��ȷ�𰸣�</font><br>" + msg  + "<input type='button' value='�رմ���' onclick=javascript:window.close()></BODY></HTML>"}  
  SecWin.document.write(msg)
  msg = ""  //���msg
}
//*******************************************
//ѡ����������
function XuanZe3()
{
  var correct = 0;
  var wrong = 0;
  for (number=15; number < 19; number++)
    {
      var form = document.forms[number];     // Question #
      var i = GetSelectedButton(form.q1);
      if (form.q1[i].checked && form.q1[i].value == "1")
         { correct++; } 
        else 
         { wrong++;
           msg += "��"+(number+1)+"��"+"��" +Solution[number]+"<BR>";
         }
    }
//���ѡ������3���
  var SecWin = window.open("","scorewin","scrollbars,width=240,height=480");
  var MustHave1 = "<HTML><HEAD><TITLE>���ֽ��:</TITLE></HEAD><BODY bgcolor=eeeeee>";
  var Percent = "<font color='red'><b>ѡ����ɼ� : "+ Math.round(correct*2) +"��"+ "</b></font><HR>";
  lastscore=Math.round(correct*2);
  if (lastscore == "8"){
  msg = MustHave1 +Percent + "<font color='red'>��ϲ��ȫ������ˣ�</font><p>" + msg  + "<input type='button' value='�رմ���' onclick=javascript:window.close()></BODY></HTML>"}
  else {
  msg = MustHave1 +Percent + "<font color='red'>��ȷ�𰸣�</font><br>" + msg  + "<input type='button' value='�رմ���' onclick=javascript:window.close()></BODY></HTML>"}  
  SecWin.document.write(msg)
  msg = ""  //���msg
}
//*******************************************
//ѡ����������
function XuanZe4()
{
  var correct = 0;
  var wrong = 0;
  for (number=19; number < 24; number++)
    {
      var form = document.forms[number];     // Question #
      var i = GetSelectedButton(form.q1);
      if (form.q1[i].checked && form.q1[i].value == "1")
         { correct++; } 
        else 
         { wrong++;
           msg += "��"+(number+1)+"��"+"��" +Solution[number]+"<BR>";
         }
    }
//���ѡ������4���
  var SecWin = window.open("","scorewin","scrollbars,width=240,height=480");
  var MustHave1 = "<HTML><HEAD><TITLE>���ֽ��:</TITLE></HEAD><BODY bgcolor=eeeeee>";
  var Percent = "<font color='red'><b>ѡ����ɼ� : "+ Math.round(correct*2) +"��"+ "</b></font><HR>";
  lastscore=Math.round(correct*2);
  if (lastscore == "10"){
  msg = MustHave1 +Percent + "<font color='red'>��ϲ��ȫ������ˣ�</font><p>" + msg  + "<input type='button' value='�رմ���' onclick=javascript:window.close()></BODY></HTML>"}
  else {
  msg = MustHave1 +Percent + "<font color='red'>��ȷ�𰸣�</font><br>" + msg  + "<input type='button' value='�رմ���' onclick=javascript:window.close()></BODY></HTML>"}  
  SecWin.document.write(msg)
  msg = ""  //���msg
}
//*******************************************
//ȡ��ѡ��������
function GetSelectedButton(ButtonGroup)
{
  for (var x=0; x < ButtonGroup.length; x++)
    if (ButtonGroup[x].checked) return x;
  return 0;
} 
//*******************************************
//��������������
function WenZi()
{
var fso, f, s;
fso = new ActiveXObject("Scripting.FileSystemObject");
f = fso.GetFile(path2+"\\wzlr\\textout.dat");
if (f.size == 0)
alert ('û���κ����룬�÷�0');
else
{
f = fso.OpenTextFile(path2+"\\wzlr\\textout.dat", 1);
s = f.ReadAll();
var cuo = 0;
for (var icount = 0; icount <= da.length-1; icount++) {
if (da.substr(icount,1) !== s.substr(icount,1))
cuo = cuo+1;
}
if (cuo >=10)
alert('��ô��ģ�������ô�ࡣû���ˣ�');
else
alert('��ĳɼ��ǣ�'+(10-cuo)+'��');
}
}
//*******************************************
//Internet������
function Net()
{
var score = 0;
var fso , f;
var aa = " " , s;
fso = new ActiveXObject("Scripting.FileSystemObject");
if (fso.FileExists(path3+"internet\\yx4.jpg") && fso.GetFile(path3+"internet\\yx4.jpg").Size != 0)
	score = score+2;
else
	aa = aa + "1.����\"ʫ��\"ͼƬ����<br>";
if (fso.FileExists(path3+"internet\\yuanxiao.rar"))
	score = score+2;
else
	aa = aa + "2.�ļ������д���<br>";
if (fso.FileExists(path3+"internet\\yuanxiaojie.htm"))
	score = score+2;
else
	aa = aa + "3.������������д���<br>";
if (fso.FileExists(path3+"internet\\zyswy.txt")&& fso.GetFile(path3+"internet\\zyswy.txt").Size != 0)
	{
	f = fso.OpenTextFile(path3+"internet\\zyswy.txt" , 1);
	if (f.ReadLine() == "������ʮ��ҹ��")
	{score = score+2;
	f.Close();}
	else
	aa = aa + "4.���ֱ����д���<br>";
	}
else
	aa = aa + "4.���ֱ����д���<br>";
if (fso.FolderExists(path3+"internet\\Ԫ��"))
	score = score+2;
else
	aa = aa + "5.�½�\"Ԫ��\"�ļ��д���<br>";

//�������
var SecWin = window.open("","scorewin","scrollbars,width=240,height=480");
var MustHave = "<HTML><HEAD><TITLE>���ֽ��:</TITLE></HEAD><BODY>";
var Percent = "<font color='red'><b>Internet��ɼ� : "+ score + "��" + "</b></font><HR>";
var Manfen = "<P>����ѽ�������Ĳ�������һ�£�";
if (score==10)
var outmsg = MustHave + Percent + Manfen + "<font size=2 color=red>"+aa+"</font>" +"<p><input type='button' value='�رմ���' onclick=javascript:window.close()></BODY></HTML>";
else
var outmsg = MustHave + Percent + "<font size=2 color=red>"+aa+"</font>" +"<p><input type='button' value='�رմ���' onclick=javascript:window.close()></BODY></HTML>";
SecWin.document.write(outmsg);
outmsg = "";
}
//*******************************************
//WebMail������
function Webmail()
{
var score = 0;
var fso , f;
var aa = " " , s;
fso = new ActiveXObject("Scripting.FileSystemObject");

//�������
var SecWin = window.open("","scorewin","scrollbars,width=240,height=480");
var MustHave = "<HTML><HEAD><TITLE>���ֽ��:</TITLE></HEAD><BODY>";
var Percent = "<font color='red'><b>WebMail��ɼ� : "+ score + "��" + "</b></font><HR>";
var abc = "�ݲ�������";
var outmsg = MustHave + Percent + abc + "<font size=2 color=red>"+aa+"</font>" +"<p><input type='button' value='�رմ���' onclick=javascript:window.close()></BODY></HTML>";
SecWin.document.write(outmsg);
outmsg = "";
}
//*******************************************
//WORD������
function Word()
{
//ִ���ĵ�����
var score = 0;
var aa = "";
try{
var WordApp = new ActiveXObject("Word.Application");
	try
	{
	var doc = WordApp.Documents.Open(path3 + "word\\chunjie.doc");
	//document.write(doc.InlineShapes(1).Height); //�������
	if ((doc.Paragraphs.Count >= 6) && (doc.Paragraphs(6).Range.Words(1) == "����"))
	score = score + 3;
	else
	aa = aa + "1.��Ӷ������<br>";
	if ((doc.PageSetup.PaperSize == 7) && (doc.PageSetup.Orientation == 0))
	score = score + 2;
	else
	aa = aa + "2.ҳ�����ô���<br>";
	if ((doc.Paragraphs(3).FirstLineIndent == 20) && (doc.Paragraphs(5).FirstLineIndent == 20))
	score = score + 2;
	else
	aa = aa + "3.���������������ô���<br>";
	if ((doc.InlineShapes.Count > 0) && (doc.InlineShapes(1).Height == 57))
	score = score + 3;
	else
	aa = aa + "4.����ͼƬ��ͼƬ���ô���<br>";
	}
	catch(err)
	{
	score = 0;
	aa = aa + "�����ļ���ʧ���÷�Ϊ0��<br>";
	}
WordApp.Quit(0);
}
catch(err){
aa = aa + "����Ҫ��װOFFICE�����";
}

//�������
var SecWin = window.open("","scorewin","scrollbars,width=240,height=480");
var MustHave = "<HTML><HEAD><TITLE>���ֽ��:</TITLE></HEAD><BODY>";
var Percent = "<font color='red'><b>Word����ɼ� : "+ score + "��" + "</b></font><HR>";
if (score == 10)
var outmsg = MustHave + Percent + "<font size=2 color=red>"+"�����˸���Ŀ�����֣����Ĳ����ٽ����¡�"+"</font>" +"<p><input type='button' value='�رմ���' onclick=javascript:window.close()></BODY></HTML>";
else
var outmsg = MustHave + Percent + "<font size=2 color=red>"+aa+"</font>" +"<p><input type='button' value='�رմ���' onclick=javascript:window.close()></BODY></HTML>";
SecWin.document.write(outmsg);
outmsg = "";
}
//*******************************************
//EXCEL������
//excel����
function Excel()
{
var score = 0;
var aa = "";
try{
var ExcelApp = new ActiveXObject("Excel.Application");
	try{
	var doc = ExcelApp.Workbooks.Open(path3 + "excel\\pc.xls");
	//document.write(doc.Worksheets(3).ChartObjects(1).Chart.SeriesCollection(1).FormulaR1C1);	//�������;
	if (doc.Worksheets(1).Range("A1:F1").HorizontalAlignment == 7)
	score = score + 2;
	else
	aa = aa + "1.���뷽ʽ��������<br>";
	if (doc.Worksheets(1).Range("F17").Value == 162258)
	score = score + 3;
	else
	aa = aa + "2.��������������<br>";
	if ((doc.Worksheets(2).Range("H6").Value == 2061064) && (doc.Worksheets(2).Range("H11").Value == 658127))
	score = score + 2;
	else
	aa = aa + "3.�����ʲ������������<br>";
	if ((doc.Worksheets(3).ChartObjects.Count > 0) && (doc.Worksheets(3).ChartObjects(1).Chart.ChartType == 51) && (doc.Worksheets(3).ChartObjects(1).Chart.PlotBy == 2) && (doc.Worksheets(3).ChartObjects(1).Chart.SeriesCollection(1).FormulaR1C1 == "=SERIES(Sheet3!R2C2,Sheet3!R3C1:R12C1,Sheet3!R3C2:R12C2,1)"))
	score = score + 3;
	else
	aa = aa + "4.ͼ����������<br>";
	}
	catch(err){
	aa = aa + "Excel�ļ���ʧ���÷�0��";
	}
ExcelApp.Quit(); 
ExcelApp = null;
location.reload();
}
catch(err){
aa = aa + "����Ҫ��װOFFICE�����";
}

//�������
var SecWin = window.open("","scorewin","scrollbars,width=240,height=480");
var MustHave = "<HTML><HEAD><TITLE>���ֽ��:</TITLE></HEAD><BODY>";
var Percent = "<font color='red'><b>Excel����ɼ� : "+ score + "��" + "</b></font><HR>";
if (score == 10)
var outmsg = MustHave + Percent + "<font size=2 color=red>"+"�����˸���Ŀ�����֣����Ĳ����ٽ����¡�"+"</font>" +"<p><input type='button' value='�رմ���' onclick=javascript:window.close()></BODY></HTML>";
else
var outmsg = MustHave + Percent + "<font size=2 color=red>"+aa+"</font>" +"<p><input type='button' value='�رմ���' onclick=javascript:window.close()></BODY></HTML>";
SecWin.document.write(outmsg);
outmsg = "";
}