using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Principal;

namespace bank_app
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=bank;Integrated Security=True;Pooling=False");
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Session["username"] as string))
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Search_Click(object sender, EventArgs e)
        {
            if (Searches.Text != "")
            {
                SqlDataAdapter fetch_data = new SqlDataAdapter("select * from account where accno = '" + AccNo.Text + "'", conn);
                fetch_data.Fill(ds);
                Name.Text = ds.Tables[0].Rows[0]["name"].ToString();
                dob.Text= ds.Tables[0].Rows[0]["dob"].ToString();
                Created.Text= ds.Tables[0].Rows[0]["CreatedAt"].ToString();
                Amount.Text= ds.Tables[0].Rows[0]["amount"].ToString();
                Userimg.ImageUrl = ds.Tables[0].Rows[0]["image"].ToString();
            }
        }

        protected void View_Click(object sender, EventArgs e)
        {
            Response.Redirect("transactionview.aspx?acc=" + AccNo.Text);
        }
    }
}