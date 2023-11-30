using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bank_app.user
{
    public partial class Pay : System.Web.UI.Page
    {
        CommanUtils cu=new CommanUtils();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Accounts.Visible = false;
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string search = Search.Text;
            cu.CommanSqlQuery("select * from account where accno='%"+search+"%'");
            if (cu.ds.Tables[0].Rows.Count > 0)
            { 
                Msg.InnerText = cu.ds.Tables[0].Rows[0]["name"].ToString();

            }
            else
            {
                Msg.InnerText = "There are no any account of this number";
            }
        }
    }
}