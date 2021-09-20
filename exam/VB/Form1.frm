VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "文本的显示与隐藏"
   ClientHeight    =   4005
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6870
   ForeColor       =   &H8000000D&
   LinkTopic       =   "Form1"
   ScaleHeight     =   4005
   ScaleWidth      =   6870
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton Command3 
      Caption         =   "退出"
      Height          =   375
      Left            =   4440
      TabIndex        =   3
      Top             =   2880
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "编辑文本"
      Height          =   375
      Left            =   2700
      TabIndex        =   1
      Top             =   2880
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "显示"
      Height          =   375
      Left            =   960
      TabIndex        =   0
      Top             =   2880
      Width           =   1335
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "示例"
      BeginProperty Font 
         Name            =   "华文彩云"
         Size            =   22.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   456
      Left            =   720
      TabIndex        =   2
      Top             =   720
      Width           =   888
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Command1.Caption = "显示" Then
  Label1.Caption = tx
Else
  Label1.Caption = ""
End If
End Sub

Private Sub Command3_Click()
Unload Me
End Sub

Private Sub Label1_Change()
If Command1.Caption = "显示" Then
  Command1.Caption = "隐藏"
Else
  Command1.Caption = "显示"
End If
End Sub

Private Sub Command2_Click()
Dim Message, Title, Default As String
Message = "输入需要显示的内容"
Title = "输入字符串"
'在下行写入语句

tx = InputBox(Message, Title, Default)
End Sub

Private Sub Form_Load()
tx = "但愿人长久，千里共婵娟。"
End Sub
