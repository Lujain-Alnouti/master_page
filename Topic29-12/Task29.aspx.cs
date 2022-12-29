using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Topic29_12
{
    public partial class Task29 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["mylogin"] != null)
            {
                string user1 = Request.Cookies["mylogin"]["userN"];
                UN.Text = user1;
                string pass1 = Request.Cookies["mylogin"]["passU"];
                pass.Text = pass1;

            }
        }

      
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true)
            {

                HttpCookie cook = new HttpCookie("mylogin");
                cook.Values.Add("userN", UN.Text);
                cook.Values.Add("passU", pass.Text);
                cook.Expires = DateTime.Now.AddDays(10);
                Response.Cookies.Add(cook);
                Response.Cookies["mylogin"].Expires = DateTime.Now.AddSeconds(-1);
                cook.Values.Add("userN", UN.Text);
                cook.Values.Add("passU", pass.Text);
            }

          

            Response.Redirect("P2.aspx");

        }
    }
}