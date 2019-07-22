/// <summary>
/// 绑定DataGridView数据到DataTable
/// </summary>
/// <param name="dgv">复制数据的DataGridView</param>
/// <returns>返回的绑定数据后的DataTable</returns>
public DataTable GetDgvToTable(DataGridView dgv)
{
    DataTable dt = new DataTable();
    // 列强制转换
    for (int count = 0; count < dgv.Columns.Count; count++)
    {
        DataColumn dc = new DataColumn(dgv.Columns[count].Name.ToString());
        dt.Columns.Add(dc);
    }
    // 循环行
    for (int count = 0; count < dgv.Rows.Count; count++)
    {
        DataRow dr = dt.NewRow();
        for (int countsub = 0; countsub < dgv.Columns.Count; countsub++)
        {
            dr[countsub] = Convert.ToString(dgv.Rows[count].Cells[countsub].Value);
        }
        dt.Rows.Add(dr);
    }
    return dt;
}
