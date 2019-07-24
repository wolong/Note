using System;
using System.Drawing;
using System.Windows.Forms;

namespace csTempWindowsApplication1
{
    public class Form1 : System.Windows.Forms.Form
    {
        // Constant value was found in the "windows.h" header file. 
         private const int WM_LBUTTONDBLCLK== 0x203;//双击左键
        
[System.Security.Permissions.PermissionSet(System.Security.Permissions.SecurityAction.Demand, Name="FullTrust")]
        protected override void WndProc(ref Message m) 
        {
            // Listen for operating system messages.
            switch (m.Msg)
            {
                // The WM_ACTIVATEAPP message occurs when the application
                // becomes the active application or becomes inactive.
                case WM_LBUTTONDBLCLK:

                     MessageBox.Show("双击了左键");
                     break;                
            }
            base.WndProc(ref m);
        }
    }
}
