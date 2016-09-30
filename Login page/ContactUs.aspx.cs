using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        contactlabel.Text = "Thank you for contacting! We will reply you back soon";
        txtname.Text = "";
        txtemail.Text = "";
        txtsubject.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtemail.Text = "";
        txtsubject.Text = "";
    }
}