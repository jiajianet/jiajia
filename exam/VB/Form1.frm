VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "�ı�����ʾ������"
   ClientHeight    =   4005
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6870
   ForeColor       =   &H8000000D&
   LinkTopic       =   "Form1"
   ScaleHeight     =   4005
   ScaleWidth      =   6870
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command3 
      Caption         =   "�˳�"
      Height          =   375
      Left            =   4440
      TabIndex        =   3
      Top             =   2880
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "�༭�ı�"
      Height          =   375
      Left            =   2700
      TabIndex        =   1
      Top             =   2880
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "��ʾ"
      Height          =   375
      Left            =   960
      TabIndex        =   0
      Top             =   2880
      Width           =   1335
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "ʾ��"
      BeginProperty Font 
         Name            =   "���Ĳ���"
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
If Command1.Caption = "��ʾ" Then
  Label1.Caption = tx
Else
  Label1.Caption = ""
End If
End Sub

Private Sub Command3_Click()
Unload Me
End Sub

Private Sub Label1_Change()
If Command1.Caption = "��ʾ" Then
  Command1.Caption = "����"
Else
  Command1.Caption = "��ʾ"
End If
End Sub

Private Sub Command2_Click()
Dim Message, Title, Default As String
Message = "������Ҫ��ʾ������"
Title = "�����ַ���"
'������д�����

tx = InputBox(Message, Title, Default)
End Sub

Private Sub Form_Load()
tx = "��Ը�˳��ã�ǧ�ﹲ濾ꡣ"
End Sub
