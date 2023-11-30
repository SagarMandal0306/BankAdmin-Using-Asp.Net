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
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=bank;Integrated Security=True;Pooling=False");
        DataSet ds = new DataSet();
        protected void dataFetch()
        {
            SqlDataAdapter fetch_dep = new SqlDataAdapter("select * from deposite  order by Id desc", conn);
            fetch_dep.Fill(ds);

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                ds.Tables[0].Rows[i]["Id"] = i + 1;
            }
            dpstbl.DataSource = ds;
            dpstbl.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Session["username"] as string))
            {
                Response.Redirect("login.aspx");
            }
            if (!IsPostBack)
            {
                dataFetch();
            }
        }

        protected void dpstbl_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dpstbl.PageIndex = e.NewPageIndex;
            dataFetch();
        }
    }
}