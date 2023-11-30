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
    public partial class WebForm10 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=bank;Integrated Security=True;Pooling=False");
        DataSet ds = new DataSet();

        protected void mergedataShow()
        {
            string accno = Request.QueryString["acc"];
            DataTable dtDeposite = new DataTable();
            SqlDataAdapter deposite = new SqlDataAdapter("select * from deposite where accno='"+accno+"'",conn);
            deposite.Fill(dtDeposite);

            DataTable dtWithdraw = new DataTable();
            SqlDataAdapter withdraw = new SqlDataAdapter("select * from withdraw where accno='"+accno+"'", conn);
            withdraw.Fill(dtWithdraw);

            DataTable mergeTable = new DataTable();
            mergeTable.Columns.Add("Sr no", typeof(int));
            mergeTable.Columns.Add("Account Holder Name", typeof(string));
           
            mergeTable.Columns.Add("Receipt No.", typeof(string));
            mergeTable.Columns.Add("Transaction", typeof(string));
            mergeTable.Columns.Add("Date", typeof(DateTime));
            mergeTable.Columns.Add("Transaction Type", typeof(string));


            
            foreach(DataRow depositeRow in dtDeposite.Rows)
            {
                mergeTable.Rows.Add(0, depositeRow["name"],  depositeRow["recptno"], "₹" +depositeRow["deposit"], depositeRow["date"], "Credit");
                
            }
            foreach(DataRow withdrawRow in dtWithdraw.Rows)
            {
                mergeTable.Rows.Add(0, withdrawRow["name"],  withdrawRow["recptno"], "₹" + withdrawRow["withdraw"], withdrawRow["date"], "Debit");
                
            }


            mergeTable.DefaultView.Sort = "Date DESC";
            mergeTable = mergeTable.DefaultView.ToTable();

            for(int i = 0; i < mergeTable.Rows.Count; i++ )
            {
                mergeTable.Rows[i]["Sr no"] = i + 1;
            }
            if(mergeTable.Rows.Count > 0)
            {
            GridView1.DataSource = mergeTable;
            GridView1.DataBind();

            }
            else
            {
                msg.Visible = true;
                msg.Text = "There are not any transaction";
            }


        }   
        protected void Page_Load(object sender, EventArgs e)
        {

            if (string.IsNullOrEmpty(Session["username"] as string))
            {
                Response.Redirect("login.aspx");
            }
            if (!IsPostBack)
            {
                mergedataShow();
            }
        }
    }
}