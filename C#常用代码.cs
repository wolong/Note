/*
按下按键时
KeyDown可为任何键
KeyPress只是字母、数字、回车、Esc等
*/

//按下回车键

private void textBox1_KeyPress(object sender, KeyPressEventArgs e)
{
    //按下 回车 且列表中只有一个时
    if (e.KeyChar == (char)13)
    {
        //do something
        e.Handled = true; //这段用于消除警告音
    }
}
