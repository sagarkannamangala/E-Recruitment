using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=sagar;Initial Catalog=erec;Integrated Security=True;");
        con.Open();
        SqlCommand cmd = new SqlCommand("select COUNT(*) FROM regform WHERE username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'");
        cmd.Connection = con;
        int OBJ = Convert.ToInt32(cmd.ExecuteScalar());
        if (OBJ > 0)
        {
            Session["name"] = TextBox1.Text;
            Session["Category"] = ddlCategory.SelectedValue;
            if (ddlCategory.SelectedValue.Equals("Student")) 
            Response.Redirect("candidatehome.aspx");
            else
                if (ddlCategory.SelectedValue.Equals("Company"))
                    Response.Redirect("company.aspx");
        }
        else
        {
            Label1.Text = "Invalid username or password";
            this.Label1.ForeColor = Color.Red;
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
     
    }
}