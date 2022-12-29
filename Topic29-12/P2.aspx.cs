using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Topic29_12
{
    public partial class P2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Text = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss");

            if (Request.Cookies["Color11"] != null)
            {
                string user1 = Request.Cookies["Color11"]["COLOR"];
                switch (user1)
                {
                    case "orange":
                        Label3.ForeColor = System.Drawing.Color.Orange;
                        break;
                    case "blue":
                        Label3.ForeColor = System.Drawing.Color.Blue;
                        break;
                    case "red":
                        Label3.ForeColor = System.Drawing.Color.Red;
                        break;
                    default:
                        Label3.ForeColor = System.Drawing.Color.Black;
                        break;
                }


            }
        }
        


        protected void Button2_Click(object sender, EventArgs e)
            {

                HttpCookie colors1 = new HttpCookie("Color11");
                colors1.Values.Add("COLOR", DropDownList1.SelectedValue);
                colors1.Expires = DateTime.Now.AddDays(10);
                Response.Cookies.Add(colors1);
            Response.Cookies["Color11"].Expires = DateTime.Now.AddDays(7);
            string color = Request.Cookies["Color11"]["COLOR"];

                switch (color)
                {
                    case "orange":
                        Label3.ForeColor = System.Drawing.Color.Orange;
                        break;
                    case "blue":
                        Label3.ForeColor = System.Drawing.Color.Blue;
                        break;
                    case "red":
                        Label3.ForeColor = System.Drawing.Color.Red;
                        break;
                    default:
                        Label3.ForeColor = System.Drawing.Color.Black;
                        break;
                }


        }






    }
    
}