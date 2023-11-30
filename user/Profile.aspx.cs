using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bank_app.user
{
    public partial class Profile : System.Web.UI.Page
    {
        CommanUtils cu = new CommanUtils();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Session["user"] as string))
            {
                Response.Redirect("../login.aspx");
            }
            if (!IsPostBack)
            {
                cu.CommanSqlQuery("select * from account where email='" + Session["user"] + "'");
                AccNo.InnerText = cu.ds.Tables[0].Rows[0]["accno"].ToString();
                Name.Text= cu.ds.Tables[0].Rows[0]["name"].ToString();
                DOB.Text= cu.ds.Tables[0].Rows[0]["dob"].ToString();
                Email.Text=cu.ds.Tables[0].Rows[0]["email"].ToString();
                Contact.Text=cu.ds.Tables[0].Rows[0]["contact"].ToString();
                Address.Text=cu.ds.Tables[0].Rows[0]["address"].ToString();
                Img.Src= cu.ds.Tables[0].Rows[0]["image"].ToString();

                if (cu.ds.Tables[0].Rows[0]["mpin"].ToString() != "")
                {
                    mpin.Text = cu.ds.Tables[0].Rows[0]["mpin"].ToString();
                    mpin.ReadOnly = true;
                    Submit.Visible = false;
                }

            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string pin = mpin.Text;
            if (pin.Length!=4)
            {
                Msg.Visible = true;
                Msg.Text = "Mpin Must be 4 charachters";
            }
            else
            {
                cu.CommanSqlQuery("Update account set mpin='" + pin + "' where email='" + Session["user"] + "'");
                string script = "alert('Your mpin is successfully generate')";
                ClientScript.RegisterStartupScript(this.GetType(), "MyScript", script, true);
            }
                
        }
    }
}