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
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=bank;Integrated Security=True;Pooling=False");
        DataSet ds = new DataSet();

        protected void view()
        {
            SqlDataAdapter fetch_data = new SqlDataAdapter("select * from account where accno = '" + AccNo.Text + "'", conn);
            fetch_data.Fill(ds);
            Name.Text = ds.Tables[0].Rows[0]["name"].ToString();
            Acc.Text = ds.Tables[0].Rows[0]["accno"].ToString();
            Amount.Text = ds.Tables[0].Rows[0]["amount"].ToString();
            Userimg.ImageUrl = ds.Tables[0].Rows[0]["image"].ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Session["username"] as string))
            {
                Response.Redirect("login.aspx");
            }

        }

        protected void AddAccount_Click(object sender, EventArgs e)
        {
            Random rand = new Random();
            string recpt ="bank"+ rand.Next(10000, 99999).ToString();

            if (Name.Text != "" && Acc.Text != "" && Deposite.Text != "")
            {

                SqlDataAdapter deposit = new SqlDataAdapter("insert into deposite(name,accno,recptno,deposit) values('" + Name.Text + "','" + Acc.Text + "','" + recpt + "','" + Deposite.Text + "')", conn);
                deposit.Fill(ds);

                int new_amt = Convert.ToInt32(Amount.Text) + Convert.ToInt32(Deposite.Text);
                SqlDataAdapter update_amt = new SqlDataAdapter("update account set amount='" + new_amt.ToString() + "' where accno='"+Acc.Text+"'", conn);
                update_amt.Fill(ds);

                string script = "alert('User amount is successfuly deposite')";
                ClientScript.RegisterStartupScript(this.GetType(), "MyScript", script, true);

                Deposite.Text = "";
                view();
            }
            else
            {
                string script = "alert('Compulsory to fill to all input filed')";
                ClientScript.RegisterStartupScript(this.GetType(), "MyScript", script, true);
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            view();
        }
    }
}