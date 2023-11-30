using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bank_app
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string var = Request.QueryString["v"];
            admin.Text = "Admin.";
            if (var!="")
            {
                admin.Text = var + ".";
            }
            else
            {
                admin.Text = "Admin.";
            }

            
            


        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Session.Abandon();
        }
    }
}