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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=bank;Integrated Security=True;Pooling=False");
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (string.IsNullOrEmpty(Session["username"] as string))
            {
                Response.Redirect("login.aspx");
            }
            SqlDataAdapter adp = new SqlDataAdapter("select *  from account",conn);
            adp.Fill(ds);
            string user = ds.Tables[0].Rows.Count.ToString();
            Ttluser.Text = user;

            int amount = 0;
           for(int i=0;i< ds.Tables[0].Rows.Count; i++)
            {
                amount = Convert.ToInt32( ds.Tables[0].Rows[i]["amount"])+amount;
            }

            Ttlamount.Text = "₹" + amount.ToString();


            DataSet ds1 = new DataSet();

            SqlDataAdapter withdraw = new SqlDataAdapter("select * from withdraw", conn);
            withdraw.Fill(ds1);
            int withdrawamt = 0;
            for (int i = 0; i < ds1.Tables[0].Rows.Count; i++)
            {
                withdrawamt = Convert.ToInt32(ds1.Tables[0].Rows[i]["withdraw"]) + withdrawamt;
            }

            Ttlwithdraw.Text = "₹" + withdrawamt.ToString();


            DataSet ds2 = new DataSet();

            SqlDataAdapter deposit = new SqlDataAdapter("select * from deposite", conn);
            deposit.Fill(ds2);
            int depositeamt = 0;
            for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
            {
                depositeamt = Convert.ToInt32(ds2.Tables[0].Rows[i]["deposit"]) + depositeamt;
            }

            TtlDeposite.Text = "₹" + depositeamt.ToString();
        }
    }
}