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
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=bank;Integrated Security=True;Pooling=False");
        DataSet ds = new DataSet();

        protected void view()
        {
            SqlDataAdapter fetch_data = new SqlDataAdapter("select * from account where accno = '" + AccNO.Text + "'", conn);
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

        protected void Withdra_Click(object sender, EventArgs e)
        {
            Random rand = new Random();
            string recpt = "withdraw" + rand.Next(10000, 99999).ToString();

            if (Name.Text != "" && Acc.Text != "" &&  Withdraw.Text != "" )
            {
                int amountbalance;
                if(int.TryParse(Amount.Text ,out amountbalance))
                {
                    int withdrawamount;
                    if(int.TryParse(Withdraw.Text,out withdrawamount))
                    {
                        if (amountbalance < withdrawamount)
                        {
                            string script1 = "alert('you have insufficient balance')";
                            ClientScript.RegisterStartupScript(this.GetType(), "MyScript", script1, true);
                        }
                        else
                        {
                            SqlDataAdapter deposit = new SqlDataAdapter("insert into withdraw(name,accno,recptno,withdraw) values('" + Name.Text + "','" + Acc.Text + "','" + recpt + "','" + Withdraw.Text + "')", conn);
                            deposit.Fill(ds);

                            int new_amt = Convert.ToInt32(Amount.Text) - Convert.ToInt32(Withdraw.Text);
                            SqlDataAdapter update_amt = new SqlDataAdapter("update account set amount='" + new_amt.ToString() + "' where accno='" + Acc.Text + "'", conn);
                            update_amt.Fill(ds);

                            string script = "alert('Money is successfully withdraw')";
                            ClientScript.RegisterStartupScript(this.GetType(), "MyScript", script, true);

                            Withdraw.Text = "";
                            view();
                        }
                    }
                }

                    
                
            }
            
            else
            {
                string script = "alert('Compulsory to fill to all input filed')";
                ClientScript.RegisterStartupScript(this.GetType(), "MyScript", script, true);
            }

        }

        protected void Search_Click(object sender, EventArgs e)
        {
            view();
        }
    }
}