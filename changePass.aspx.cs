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
    public partial class changePass : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=bank;Integrated Security=True;Pooling=False");
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Change_Click(object sender, EventArgs e)
        {
            
            SqlDataAdapter adp = new SqlDataAdapter("select * from admin where name='" + Session["username"].ToString() + "'", conn);
            adp.Fill(ds);

            if (OldPAss.Text == ds.Tables[0].Rows[0]["password"].ToString())
            {
                if(NewPass.Text == RePass.Text)
                {

                    SqlDataAdapter adp1 = new SqlDataAdapter("update admin set password='" + NewPass.Text + "' where name='" + Session["username"].ToString() + "' ", conn);
                    adp1.Fill(ds);
                    string script = "alert('Your password is succefully changed')";
                    ClientScript.RegisterStartupScript(this.GetType(), "MyScript", script, true);
                    Response.Redirect("dashbord.aspx?v=Dashbord");
                }
            }
        }
    }
}