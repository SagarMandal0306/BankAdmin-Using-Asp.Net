using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bank_app.user
{
    public partial class Home : System.Web.UI.Page
    {
        CommanUtils cu = new CommanUtils();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(string.IsNullOrEmpty(Session["user"] as string))
            {
                Response.Redirect("../login.aspx");
            }
            if (!IsPostBack)
            {
                cu.CommanSqlQuery("select * from account where email='" + Session["user"] + "'");
                Money.InnerText = cu.ds.Tables[0].Rows[0]["amount"].ToString();

                Upi.InnerText= cu.ds.Tables[0].Rows[0]["upiid"].ToString();
            
            }
           
        }

        
    }
}