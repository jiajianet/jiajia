//*******************************************
//路径
var path = document.location.href;  
var so = /\//g;
path1 = path.substring(0, path.lastIndexOf("/")+1);  //取得路径
path2 = path.substring(8, path.lastIndexOf("/")+1);  //不带连接类型
path3 = path2.replace(so,"\\");  //反斜杠表示
//*******************************************
//执行
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
//输出信息
var msg = "";
//选择题正确答案
var Solution = new Array('D','C','D','B','D','B','D','D','D','B','D','B','B','C','A','C','A','A','A','B','B','C','D','A');
//文字输入题正确答案
var da = "CCTV新闻：嫦娥2号已经成功发射飞向月球。";
//*******************************************
//选择题评分一
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
           msg += "第"+(number+1)+"题"+"：" +Solution[number]+"<BR>";
         }
    }
//输出选择评分1结果
  var SecWin = window.open("","scorewin","scrollbars,width=240,height=480");
  var MustHave1 = "<HTML><HEAD><TITLE>评分结果:</TITLE></HEAD><BODY bgcolor=eeeeee>";
  var Percent = "<font color='red'><b>选择题成绩 : "+ Math.round(correct*2) +"分"+ "</b></font><HR>";
  lastscore=Math.round(correct*2);
  if (lastscore == "14"){
  msg = MustHave1 +Percent + "<font color='red'>恭喜，全部答对了！</font><p>" + msg  + "<input type='button' value='关闭窗口' onclick=javascript:window.close()></BODY></HTML>"}
  else {
  msg = MustHave1 +Percent + "<font color='red'>正确答案：</font><br>" + msg  + "<input type='button' value='关闭窗口' onclick=javascript:window.close()></BODY></HTML>"}  
  SecWin.document.write(msg)
  msg = ""  //清空msg
}
//*******************************************
//选择题评分二
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
           msg += "第"+(number+1)+"题"+"：" +Solution[number]+"<BR>";
         }
    }
//输出选择评分2结果
  var SecWin = window.open("","scorewin","scrollbars,width=240,height=480");
  var MustHave1 = "<HTML><HEAD><TITLE>评分结果:</TITLE></HEAD><BODY bgcolor=eeeeee>";
  var Percent = "<font color='red'><b>选择题成绩 : "+ Math.round(correct*2) +"分"+ "</b></font><HR>";
  lastscore=Math.round(correct*2);
  if (lastscore == "16"){
  msg = MustHave1 +Percent + "<font color='red'>恭喜，全部答对了！</font><p>" + msg  + "<input type='button' value='关闭窗口' onclick=javascript:window.close()></BODY></HTML>"}
  else {
  msg = MustHave1 +Percent + "<font color='red'>正确答案：</font><br>" + msg  + "<input type='button' value='关闭窗口' onclick=javascript:window.close()></BODY></HTML>"}  
  SecWin.document.write(msg)
  msg = ""  //清空msg
}
//*******************************************
//选择题评分三
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
           msg += "第"+(number+1)+"题"+"：" +Solution[number]+"<BR>";
         }
    }
//输出选择评分3结果
  var SecWin = window.open("","scorewin","scrollbars,width=240,height=480");
  var MustHave1 = "<HTML><HEAD><TITLE>评分结果:</TITLE></HEAD><BODY bgcolor=eeeeee>";
  var Percent = "<font color='red'><b>选择题成绩 : "+ Math.round(correct*2) +"分"+ "</b></font><HR>";
  lastscore=Math.round(correct*2);
  if (lastscore == "8"){
  msg = MustHave1 +Percent + "<font color='red'>恭喜，全部答对了！</font><p>" + msg  + "<input type='button' value='关闭窗口' onclick=javascript:window.close()></BODY></HTML>"}
  else {
  msg = MustHave1 +Percent + "<font color='red'>正确答案：</font><br>" + msg  + "<input type='button' value='关闭窗口' onclick=javascript:window.close()></BODY></HTML>"}  
  SecWin.document.write(msg)
  msg = ""  //清空msg
}
//*******************************************
//选择题评分四
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
           msg += "第"+(number+1)+"题"+"：" +Solution[number]+"<BR>";
         }
    }
//输出选择评分4结果
  var SecWin = window.open("","scorewin","scrollbars,width=240,height=480");
  var MustHave1 = "<HTML><HEAD><TITLE>评分结果:</TITLE></HEAD><BODY bgcolor=eeeeee>";
  var Percent = "<font color='red'><b>选择题成绩 : "+ Math.round(correct*2) +"分"+ "</b></font><HR>";
  lastscore=Math.round(correct*2);
  if (lastscore == "10"){
  msg = MustHave1 +Percent + "<font color='red'>恭喜，全部答对了！</font><p>" + msg  + "<input type='button' value='关闭窗口' onclick=javascript:window.close()></BODY></HTML>"}
  else {
  msg = MustHave1 +Percent + "<font color='red'>正确答案：</font><br>" + msg  + "<input type='button' value='关闭窗口' onclick=javascript:window.close()></BODY></HTML>"}  
  SecWin.document.write(msg)
  msg = ""  //清空msg
}
//*******************************************
//取得选择结果函数
function GetSelectedButton(ButtonGroup)
{
  for (var x=0; x < ButtonGroup.length; x++)
    if (ButtonGroup[x].checked) return x;
  return 0;
} 
//*******************************************
//文字输入题评分
function WenZi()
{
var fso, f, s;
fso = new ActiveXObject("Scripting.FileSystemObject");
f = fso.GetFile(path2+"\\wzlr\\textout.dat");
if (f.size == 0)
alert ('没有任何输入，得分0');
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
alert('怎么搞的，错误这么多。没分了！');
else
alert('你的成绩是：'+(10-cuo)+'分');
}
}
//*******************************************
//Internet题评分
function Net()
{
var score = 0;
var fso , f;
var aa = " " , s;
fso = new ActiveXObject("Scripting.FileSystemObject");
if (fso.FileExists(path3+"internet\\yx4.jpg") && fso.GetFile(path3+"internet\\yx4.jpg").Size != 0)
	score = score+2;
else
	aa = aa + "1.保存\"诗词\"图片错误。<br>";
if (fso.FileExists(path3+"internet\\yuanxiao.rar"))
	score = score+2;
else
	aa = aa + "2.文件下载有错误。<br>";
if (fso.FileExists(path3+"internet\\yuanxiaojie.htm"))
	score = score+2;
else
	aa = aa + "3.保存搜索结果有错误。<br>";
if (fso.FileExists(path3+"internet\\zyswy.txt")&& fso.GetFile(path3+"internet\\zyswy.txt").Size != 0)
	{
	f = fso.OpenTextFile(path3+"internet\\zyswy.txt" , 1);
	if (f.ReadLine() == "《正月十五夜》")
	{score = score+2;
	f.Close();}
	else
	aa = aa + "4.文字保存有错误。<br>";
	}
else
	aa = aa + "4.文字保存有错误。<br>";
if (fso.FolderExists(path3+"internet\\元宵"))
	score = score+2;
else
	aa = aa + "5.新建\"元宵\"文件夹错误。<br>";

//分数输出
var SecWin = window.open("","scorewin","scrollbars,width=240,height=480");
var MustHave = "<HTML><HEAD><TITLE>评分结果:</TITLE></HEAD><BODY>";
var Percent = "<font color='red'><b>Internet题成绩 : "+ score + "分" + "</b></font><HR>";
var Manfen = "<P>满分呀！，做的不错，鼓励一下！";
if (score==10)
var outmsg = MustHave + Percent + Manfen + "<font size=2 color=red>"+aa+"</font>" +"<p><input type='button' value='关闭窗口' onclick=javascript:window.close()></BODY></HTML>";
else
var outmsg = MustHave + Percent + "<font size=2 color=red>"+aa+"</font>" +"<p><input type='button' value='关闭窗口' onclick=javascript:window.close()></BODY></HTML>";
SecWin.document.write(outmsg);
outmsg = "";
}
//*******************************************
//WebMail题评分
function Webmail()
{
var score = 0;
var fso , f;
var aa = " " , s;
fso = new ActiveXObject("Scripting.FileSystemObject");

//分数输出
var SecWin = window.open("","scorewin","scrollbars,width=240,height=480");
var MustHave = "<HTML><HEAD><TITLE>评分结果:</TITLE></HEAD><BODY>";
var Percent = "<font color='red'><b>WebMail题成绩 : "+ score + "分" + "</b></font><HR>";
var abc = "暂不能评分";
var outmsg = MustHave + Percent + abc + "<font size=2 color=red>"+aa+"</font>" +"<p><input type='button' value='关闭窗口' onclick=javascript:window.close()></BODY></HTML>";
SecWin.document.write(outmsg);
outmsg = "";
}
//*******************************************
//WORD题评分
function Word()
{
//执行文档分析
var score = 0;
var aa = "";
try{
var WordApp = new ActiveXObject("Word.Application");
	try
	{
	var doc = WordApp.Documents.Open(path3 + "word\\chunjie.doc");
	//document.write(doc.InlineShapes(1).Height); //测试语句
	if ((doc.Paragraphs.Count >= 6) && (doc.Paragraphs(6).Range.Words(1) == "春节"))
	score = score + 3;
	else
	aa = aa + "1.添加段落错误。<br>";
	if ((doc.PageSetup.PaperSize == 7) && (doc.PageSetup.Orientation == 0))
	score = score + 2;
	else
	aa = aa + "2.页面设置错误。<br>";
	if ((doc.Paragraphs(3).FirstLineIndent == 20) && (doc.Paragraphs(5).FirstLineIndent == 20))
	score = score + 2;
	else
	aa = aa + "3.段落首行缩进设置错误。<br>";
	if ((doc.InlineShapes.Count > 0) && (doc.InlineShapes(1).Height == 57))
	score = score + 3;
	else
	aa = aa + "4.插入图片或图片设置错误。<br>";
	}
	catch(err)
	{
	score = 0;
	aa = aa + "答题文件丢失，得分为0。<br>";
	}
WordApp.Quit(0);
}
catch(err){
aa = aa + "你需要安装OFFICE软件。";
}

//分数输出
var SecWin = window.open("","scorewin","scrollbars,width=240,height=480");
var MustHave = "<HTML><HEAD><TITLE>评分结果:</TITLE></HEAD><BODY>";
var Percent = "<font color='red'><b>Word试题成绩 : "+ score + "分" + "</b></font><HR>";
if (score == 10)
var outmsg = MustHave + Percent + "<font size=2 color=red>"+"你获得了该题目的满分，做的不错，再接再砺。"+"</font>" +"<p><input type='button' value='关闭窗口' onclick=javascript:window.close()></BODY></HTML>";
else
var outmsg = MustHave + Percent + "<font size=2 color=red>"+aa+"</font>" +"<p><input type='button' value='关闭窗口' onclick=javascript:window.close()></BODY></HTML>";
SecWin.document.write(outmsg);
outmsg = "";
}
//*******************************************
//EXCEL题评分
//excel评分
function Excel()
{
var score = 0;
var aa = "";
try{
var ExcelApp = new ActiveXObject("Excel.Application");
	try{
	var doc = ExcelApp.Workbooks.Open(path3 + "excel\\pc.xls");
	//document.write(doc.Worksheets(3).ChartObjects(1).Chart.SeriesCollection(1).FormulaR1C1);	//测试语句;
	if (doc.Worksheets(1).Range("A1:F1").HorizontalAlignment == 7)
	score = score + 2;
	else
	aa = aa + "1.对齐方式设置有误。<br>";
	if (doc.Worksheets(1).Range("F17").Value == 162258)
	score = score + 3;
	else
	aa = aa + "2.计算销售量出错。<br>";
	if ((doc.Worksheets(2).Range("H6").Value == 2061064) && (doc.Worksheets(2).Range("H11").Value == 658127))
	score = score + 2;
	else
	aa = aa + "3.按总资产排序操作出错。<br>";
	if ((doc.Worksheets(3).ChartObjects.Count > 0) && (doc.Worksheets(3).ChartObjects(1).Chart.ChartType == 51) && (doc.Worksheets(3).ChartObjects(1).Chart.PlotBy == 2) && (doc.Worksheets(3).ChartObjects(1).Chart.SeriesCollection(1).FormulaR1C1 == "=SERIES(Sheet3!R2C2,Sheet3!R3C1:R12C1,Sheet3!R3C2:R12C2,1)"))
	score = score + 3;
	else
	aa = aa + "4.图表制作有误。<br>";
	}
	catch(err){
	aa = aa + "Excel文件丢失，得分0。";
	}
ExcelApp.Quit(); 
ExcelApp = null;
location.reload();
}
catch(err){
aa = aa + "你需要安装OFFICE软件。";
}

//分数输出
var SecWin = window.open("","scorewin","scrollbars,width=240,height=480");
var MustHave = "<HTML><HEAD><TITLE>评分结果:</TITLE></HEAD><BODY>";
var Percent = "<font color='red'><b>Excel试题成绩 : "+ score + "分" + "</b></font><HR>";
if (score == 10)
var outmsg = MustHave + Percent + "<font size=2 color=red>"+"你获得了该题目的满分，做的不错，再接再砺。"+"</font>" +"<p><input type='button' value='关闭窗口' onclick=javascript:window.close()></BODY></HTML>";
else
var outmsg = MustHave + Percent + "<font size=2 color=red>"+aa+"</font>" +"<p><input type='button' value='关闭窗口' onclick=javascript:window.close()></BODY></HTML>";
SecWin.document.write(outmsg);
outmsg = "";
}