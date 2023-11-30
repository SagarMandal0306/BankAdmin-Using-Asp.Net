using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bank_app
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=bank;Integrated Security=True;Pooling=False");
        DataSet ds = new DataSet();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = Session["username"] as string;
            if (!string.IsNullOrEmpty(user)) 
            {
                Response.Redirect("dashbord.aspx?v=Dashbord");
            }

            if (IsPostBack && SelectLogin.SelectedItem.Text == "User")
            {
                Fpass.Visible = true;
                Register.Visible = true;
            }
            else{
                 Fpass.Visible = false;
                Register.Visible = false;
            }
        }

        protected void Login_Click(object sender, EventArgs e)
        {

            if (SelectLogin.SelectedItem.Text == "Admin")
            {

                SqlDataAdapter adp = new SqlDataAdapter("select * from admin where name='"+User.Text+"'", conn);
                adp.Fill(ds);

                if (ds.Tables[0].Rows.Count>0)
                {
                    if(Pass.Text== ds.Tables[0].Rows[0]["password"].ToString())
                    {
                        Session["username"] = User.Text;
                        string script = "alert('You are successfully login')";
                        ClientScript.RegisterStartupScript(this.GetType(), "MyScript", script, true);
                        Response.Redirect("dashbord.aspx?v=Dashbord");
                    }
                    else
                    {
                        msg.Visible = true;
                        msg.Text = "Enter wrong password";
                    }

                }
                else
                {
                    msg.Visible = true;
                    msg.Text = "Enter wrong User Name";
                }
            }
            else if(SelectLogin.SelectedItem.Text == "User")
            {
                DataSet ds1 = new DataSet();
                SqlDataAdapter adp1 = new SqlDataAdapter("select * from account where email='" + User.Text + "'", conn);
                adp1.Fill(ds1);

                if (ds1.Tables[0].Rows.Count > 0)
                {
                    if (Pass.Text == ds1.Tables[0].Rows[0]["password"].ToString())
                    {
                        Session["user"] = User.Text;
                        string script = "alert('You are successfully login')";
                        ClientScript.RegisterStartupScript(this.GetType(), "MyScript", script, true);
                        Response.Redirect("user/home.aspx");
                    }
                    else
                    {
                        msg.Visible = true;
                        msg.Text = "Enter wrong password";
                    }

                }
                else
                {
                    msg.Visible = true;
                    msg.Text = "Enter wrong User Name";
                }
            }
            else
            {
                msg.Visible = true;
                msg.Text = "First Select the user type";
            }
        }
    }
}