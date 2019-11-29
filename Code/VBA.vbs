'
' 双击自动输入日期
'
Private Sub Worksheet_BeforeDoubleClick(ByVal Target As Range, Cancel As Boolean)

'    双击自动输入日期
    If ActiveCell.Value = "" And (ActiveCell.Column = 2 Or ActiveCell.Column = 10) Then
        ActiveCell.NumberFormatLocal = "yyyy-m-d"
        ActiveCell = Date
    End If

'    双击自动输入时间
    If ActiveCell.Value = "" And (ActiveCell.Column = 11) Then
        ActiveCell.NumberFormatLocal = "hh：m：s"
        ActiveCell = Time
    End If

End Sub

'
' 在表格最后一行插入数据
'
x = ActiveSheet.Cells(Rows.Count, 1).End(xlUp).Row + 1 '行数
Cells(x, 1).Resize(1, 4) = Array(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text)

'
' 两列单元格对比
' 注：未完全能用
'
Sub CrossCompare()
	Dim dic_ab, dic_cd As Object
	Dim i%, x%
	Dim ab_array, cd_array
	Set dic_ab = CreateObject("Scripting.Dictionary")
	Set dic_cd = CreateObject("Scripting.Dictionary")
	With Worksheets("Sheet1")
	  ab_array = .Range("a2", .[b2].End(4))
	  cd_array = .Range("c2", .[d2].End(4))

	  '对比缺考
	  For i = 1 To UBound(cd_array, 1)
		dic_cd(cd_array(i, 2)) = ""
	  Next
	  
	  x = 2
	  For i = 1 To UBound(ab_array, 1)
		  If Not dic_cd.Exists(ab_array(i, 2)) Then
		 
			  .Cells(x, "G") = ab_array(i, 2)
			  .Cells(x, "F") = ab_array(i, 1)
			  x = x + 1
		  End If
	  Next
	  
	  '对比新增
	  For i = 1 To UBound(ab_array, 1)
		dic_ab(ab_array(i, 2)) = ""
	  Next
	  
	  x = 2
	  For i = 1 To UBound(cd_array, 1)
		  If Not dic_ab.Exists(cd_array(i, 2)) Then
		 
			  .Cells(x, "I") = cd_array(i, 2)
			  .Cells(x, "H") = cd_array(i, 1)
			  x = x + 1
		  End If
	  Next

	End With
End Sub
