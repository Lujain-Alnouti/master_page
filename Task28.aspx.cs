using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Task28_12_2022
{
    public partial class Task28 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {



            SqlConnection conn = new SqlConnection("data source =DESKTOP-6GNKJL5\\SQLEXPRESS01; database =Tasks ; integrated security=SSPI");
            conn.Open();
            string ins = $"insert into comments(Comment,UserName) values('" + TextBox1.Text + "','" +TextBox2.Text+"')";
            SqlCommand cmd = new SqlCommand(ins, conn);
            cmd.ExecuteNonQuery();
            //conn.Close();
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);
            string sel = "select * from comments";
            SqlCommand cmd2 = new SqlCommand(sel, conn);
            SqlDataReader rr=cmd2.ExecuteReader();
            info.Text = "<table class='table table-striped' style='width:60%; margin-left:20%'>";
            while(rr.Read())
            {
                info.Text += $"<tr><td>{rr[0]}</td><td>{rr[2]}</td><td>{rr[1]}</td></tr>";
            }
            info.Text += "</table>";
            conn.Close();

        }
    }
}