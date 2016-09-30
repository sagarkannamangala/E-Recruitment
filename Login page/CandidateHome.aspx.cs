using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class CandidateHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            gvJobs.DataBind();
        }
    }
    protected void gvJobs_SelectedIndexChanged(object sender, EventArgs e)
    {
        string job = gvJobs.SelectedDataKey.Value.ToString();
        //txtDummy.Text = job;
        SqlDataSource2.InsertCommand = "insert into application values ('MS Corporation','Web Developer', '1')";
        SqlDataSource2.Insert();
        Label1.Text = "Congratulations, You've applied for the Job";
    }
}