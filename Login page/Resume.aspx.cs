using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Resume : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.DataBind();
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        
            SqlDataSource1.Insert();
        
    }
    
}