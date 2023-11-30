using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace bank_app.user
{
    public class CommanUtils
    {
        SqlConnection conn = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=bank;Integrated Security=True;Pooling=False");
        public DataSet ds = new DataSet();

       

        public void CommanSqlQuery(string query)
        {
            SqlDataAdapter adp = new SqlDataAdapter(query, conn);
            adp.Fill(ds);
        }

        public  void ShowAlert(Page page, string message)
        {
            string script = $"alert('{message}');";
            page.ClientScript.RegisterStartupScript(page.GetType(), "ServerControlScript", script, true);
        }
    }
}