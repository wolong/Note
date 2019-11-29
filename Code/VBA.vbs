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
