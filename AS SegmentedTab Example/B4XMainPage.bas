B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9.85
@EndOfDesignText@
#Region Shared Files
#CustomBuildAction: folders ready, %WINDIR%\System32\Robocopy.exe,"..\..\Shared Files" "..\Files"
'Ctrl + click to sync files: ide://run?file=%WINDIR%\System32\Robocopy.exe&args=..\..\Shared+Files&args=..\Files&FilesSync=True
#End Region

'Ctrl + click to export as zip: ide://run?File=%B4X%\Zipper.jar&Args=Project.zip

Sub Class_Globals
	Private Root As B4XView
	Private xui As XUI
	Private ASSegmentedTab1 As ASSegmentedTab
	Private ASSegmentedTab2 As ASSegmentedTab
End Sub

Public Sub Initialize
	
End Sub

'This event will be called once, before the page becomes visible.
Private Sub B4XPage_Created (Root1 As B4XView)
	Root = Root1
	Root.LoadLayout("MainPage")
	B4XPages.SetTitle(Me,"AS SegmentedTab Example")
	
	#If B4I
	Wait For B4XPage_Resize (Width As Int, Height As Int)
	#End If

	ASSegmentedTab1.AutoDecreaseTextSize = True
	ASSegmentedTab1.AddTab("This is a long long long text",Null)
	ASSegmentedTab1.AddTab("Monthly",Null).Enabled = False
	ASSegmentedTab1.AddTab2("Monthly3",Null,"lul")
	ASSegmentedTab1.AddTab("Yearly",Null)
	
	ASSegmentedTab2.AddTab("",ASSegmentedTab2.FontToBitmap(Chr(0xE236),True,15,xui.Color_White))
	ASSegmentedTab2.AddTab("",ASSegmentedTab2.FontToBitmap(Chr(0xE235),True,15,xui.Color_White))
	ASSegmentedTab2.AddTab("",ASSegmentedTab2.FontToBitmap(Chr(0xE237),True,15,xui.Color_White))
	ASSegmentedTab2.AddTab("Test",Null)
	
	ASSegmentedTab2.ItemTextProperties.TextFont = xui.CreateMaterialIcons(25)
	ASSegmentedTab2.AddTab(Chr(0xE238),Null)
	ASSegmentedTab2.AddTab(Chr(0xE23F),Null)
	
End Sub

'You can see the list of page related events in the B4XPagesManager object. The event name is B4XPage.


Sub ASSegmentedTab1_TabChanged(index As Int)
	Log("ASSegmentedTab1_TabChanged: " & index)
End Sub

Sub ASSegmentedTab2_TabChanged(index As Int)
	Log("ASSegmentedTab2_TabChanged: " & index)
End Sub

Private Sub CheckBox1_CheckedChange(Checked As Boolean)
	ASSegmentedTab2.ShowSeperators = Checked
End Sub

Private Sub ASSegmentedTab1_DisabledTabClicked(xTab As ASSegmentedTab_Tab)
	Log("DisabledTabClicked")
End Sub