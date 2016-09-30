using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Menu mnuStudent = (Menu)Master.FindControl("mnuStudent");
        //Menu mnuCompany = (Menu)Master.FindControl("mnuCompany");
        if (Convert.ToString(Session["Category"]) == "Student")
            mnuStudent.Visible = true;
        else
            mnuStudent.Visible = false;

        if (Convert.ToString(Session["Category"]) == "Company")
            mnuCompany.Visible = true;
        else
            mnuCompany.Visible = false;
    }
}
