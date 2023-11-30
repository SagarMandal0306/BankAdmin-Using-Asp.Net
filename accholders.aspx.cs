using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bank_app
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=bank;Integrated Security=True;Pooling=False");
        DataSet ds = new DataSet();
        protected void view()
        {
            SqlDataAdapter adp = new SqlDataAdapter("select * from account order by Id DESC", conn);
            adp.Fill(ds);

            for(int i = 0; i < ds.Tables[0].Rows.Count;i++)
            {
                ds.Tables[0].Rows[i]["Id"] = i + 1;
            }


            Account.DataSource = ds;
            Account.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Session["username"] as string))
            {
                Response.Redirect("login.aspx");
            }
            if (!IsPostBack)
            {
                view();
                
                
            }
        }

        protected void Account_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            Account.PageIndex = e.NewPageIndex;
            view();
        }
    }
}