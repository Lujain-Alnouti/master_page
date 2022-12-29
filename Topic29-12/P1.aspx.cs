using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Topic29_12
{
    public partial class P1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    ViewState["name"] = TextBox1.Text;
        //    TextBox1.Text = Convert.ToString(ViewState["name"]);
        //    Label6.Text = Convert.ToString(ViewState["name"])+ Convert.ToString(HF.Value);
        //}

        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    HF.Value = TextBox5.Text;
        //    TextBox5.Text = Convert.ToString(HF.Value);
        //    Label7.Text = Convert.ToString(HF.Value);

        //}

        protected void Button3_Click(object sender, EventArgs e)
        {
            //craeate new cookies
            HttpCookie cook = new HttpCookie("mylogin");
            cook.Values.Add("email",TextBox4.Text);

            //cook.Expires = DateTime.Now;   //default
            cook.Expires = DateTime.Now.AddSeconds(10);
            Response.Cookies.Add(cook);
            Response.Redirect("P2.aspx");
          
        }
        protected void Button7_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["mylogin"] != null)
            {
                string user1 = Request.Cookies["mylogin"]["email"];
                Label8.Text = user1;        }

        }

        //protected void Button4_Click(object sender, EventArgs e)
        //{
        //    Session["age"] = TextBox2.Text;
        //    Label9.Text = Convert.ToString(Session["age"]);
        //}

        //protected void Button5_Click(object sender, EventArgs e)
        //{
        //    Label10.Text = "The num of users online=" + Application["user"].ToString();
        //}

        //protected void Button8_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("P3.aspx?firstname=" + TextBox3.Text + "&lastname=" + TextBox6.Text);
        //}

       
    }
}