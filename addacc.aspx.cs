using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;

namespace bank_app
{
    public partial class WebForm3 : System.Web.UI.Page
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

        protected void AddAccount_Click(object sender, EventArgs e)
        {
            Random random = new Random();
            string name = Name.Text;
            string dob = DOB.Text;
            string contact = Contact.Text;
            string add = Add.Text;
            string imgs = "~/img/" + Img.FileName;
            string amount = Amount.Text;
            
            long accno =  (long)(random.NextDouble() * 9000000000000L) + 1000000000000L;

            if (name!="" && dob != "" && contact!="" && add !="" && imgs !="" && amount != "")
            {
                SqlDataAdapter conval = new SqlDataAdapter("Select * from account where contact='" + contact + "'", conn);
                conval.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    string script1 = "alert('Contact number is already exist.')";
                    ClientScript.RegisterStartupScript(this.GetType(), "MyScript", script1, true);
                }
                else if (contact.Length > 10)
                {
                    string script2 = "alert('Contact number is already exist.')";
                    ClientScript.RegisterStartupScript(this.GetType(), "MyScript", script2, true);
                }
                else
                {

                    Img.SaveAs(Server.MapPath(imgs));
                    SqlDataAdapter adp = new SqlDataAdapter("insert into account(name , dob,accno,address,image,amount,status,contact,acctype,branch) values('" + name + "','" + dob + "','" + accno.ToString() + "','" + add + "','" + imgs + "','" + amount + "','active','"+contact+"','Saving','Main Branch')", conn);
                    adp.Fill(ds);

                    string script = "alert('User is successfully added in bank')";
                    ClientScript.RegisterStartupScript(this.GetType(), "MyScript", script, true);

                    Name.Text = "";
                    DOB.Text = "";
                    Add.Text = "";
                    Amount.Text = "";
                }
                
            }
            else
            {
                string script = "alert('Compulsory to fill all input filed')";
                ClientScript.RegisterStartupScript(this.GetType(), "MyScript", script, true);
            }

        }
    }
}