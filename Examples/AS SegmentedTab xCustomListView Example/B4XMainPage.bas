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
	Private CustomListView1 As CustomListView
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
	
	Dim xpnl_seg_Tab_background As B4XView = xui.CreatePanel("")
	xpnl_seg_Tab_background.SetLayoutAnimated(0,0,0,(Root.Width - 10dip - 20dip)*2,40dip)
	xpnl_seg_Tab_background.LoadLayout("frm_seg_tab")
	CustomListView1.Add(xpnl_seg_Tab_background,"")
	
	ASSegmentedTab1.Base.SetColorAndBorder(ASSegmentedTab1.Base.Color,0,0,ASSegmentedTab1.Base.Height/2) 'make the view rounded
	
'	For i = 0 To 3 -1		
'		ASSegmentedTab1.AddTab("Test " & i,Null)		
'	Next
	ASSegmentedTab1.AddTab("Weekly",Null)
	ASSegmentedTab1.AddTab("Monthly",Null)
	ASSegmentedTab1.AddTab("Yearly",Null)
	
	ASSegmentedTab1.ItemTextProperties.TextFont = xui.CreateMaterialIcons(15)
	ASSegmentedTab1.AddTab(Chr(0xE236),Null)
	ASSegmentedTab1.AddTab(Chr(0xE235),Null)
	ASSegmentedTab1.AddTab(Chr(0xE237),Null)
	ASSegmentedTab1.AddTab("Test",Null)
	
	ASSegmentedTab1.ItemTextProperties.TextFont = xui.CreateMaterialIcons(25)
	ASSegmentedTab1.AddTab(Chr(0xE238),Null)
	ASSegmentedTab1.AddTab(Chr(0xE23F),Null)
	
	ASSegmentedTab1.SelectionPanel.SetColorAndBorder(ASSegmentedTab1.SelectionPanel.Color,0,0,ASSegmentedTab1.SelectionPanel.Height/2)'makes the selector round
	
End Sub

'You can see the list of page related events in the B4XPagesManager object. The event name is B4XPage.


Sub ASSegmentedTab1_TabChanged(index As Int)
	Log("ASSegmentedTab1_TabChanged: " & index)
End Sub

Sub ASSegmentedTab2_TabChanged(index As Int)
	Log("ASSegmentedTab2_TabChanged: " & index)
End Sub