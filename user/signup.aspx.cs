using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bank_app.user
{
    public partial class signup : System.Web.UI.Page
    {
        CommanUtils cu = new CommanUtils();
        Random random = new Random();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string name = Name.Text;
            string dob = DOB.Text;
            string add = Add.Text;
            string contact = Contact.Text;
            string img = "../img/" + Img.FileName;
            string email = Email.Text;
            string pass = Pass.Text;
            string repass = RePass.Text;
            long accno = (long)(random.NextDouble() * 9000000000000L) + 1000000000000L;
            string upi = contact + "@skybank";


            if (name != "" && dob != "" && add != "" && contact != "" && email != "" && pass != "" && repass != "")
            {

                // cu.CommanSqlQuery("select * from account where email='" + email + "'");
                // if (cu.ds.Tables[0].Rows.Count > 0)
                // {
                if (pass == repass)
                {
                    Img.SaveAs(Server.MapPath(img));
                    cu.CommanSqlQuery("insert into account(name , dob,accno,address,image,amount,status,contact,acctype,branch,password,upiid,email) values('" + name + "','" + dob + "','" + accno.ToString() + "','" + add + "','" + img + "','0','active','" + contact + "','Saving','Remote','" + pass + "','" + upi + "','" + email + "')");

                    cu.ShowAlert(this, "You are successfully Registered in our Bank");
                    Response.Redirect("../login.aspx");
                }
                else
                {
                    Msg.Visible = false;
                    Msg.Text = "Password is not match try again";
                }

                // }
                // else
                // {
                //     Msg.Text = "Email is already exist pls try another";
                // }
            }
            else
            {
                Msg.Visible = false;
                Msg.Text = "Pls Fill up the all neccessary field";
            }


        }
    }
}