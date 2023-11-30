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
    public partial class WebForm7 : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=bank;Integrated Security=True;Pooling=False");
        DataSet ds = new DataSet();
        protected void view()
        {

            SqlDataAdapter fetch_with = new SqlDataAdapter("select * from withdraw order by id desc", conn);
            fetch_with.Fill(ds);

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                ds.Tables[0].Rows[i]["Id"] = i + 1;
            }
            Withdrawtbl.DataSource = ds;
            Withdrawtbl.DataBind();
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

        protected void Withdrawtbl_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            Withdrawtbl.PageIndex = e.NewPageIndex;
            view();
        }
    }
}