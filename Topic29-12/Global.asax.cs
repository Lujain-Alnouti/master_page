using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Topic29_12
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            Application["user"] = 0;
        }
        protected void Session_Start(object sender, EventArgs e)
        {
            //when session in start application variable is increased by 1  
            Application.Lock();
            Application["user"] = (int)Application["user"] + 1;
            Application.UnLock();
        }
        protected void Session_End(object sender, EventArgs e)
        {
            //when session in end application variable is decrease by 1  
            Application.Lock();
            Application["user"] = (int)Application["user"] - 1;
            Application.UnLock();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("The num of users online=" + Application["user"].ToString());
        }
    }
}