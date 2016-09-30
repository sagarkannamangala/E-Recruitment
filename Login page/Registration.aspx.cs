using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=sagar;Initial Catalog=erec;Integrated Security=True");
    con.Open();
        SqlCommand cmd = new SqlCommand("select*from regform where username='" + TextBox1.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            Label1.Text = "User Name is Already Exist";
            this.Label1.ForeColor = Color.Red;
        }
        else
        {
            Label1.Text = "UserName is Available";
            this.Label1.ForeColor = Color.Red;
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //captcha1.ValidateCaptcha(TextBox6.Text.Trim());
        //if (captcha1.UserValidated)
        //{
            //you can use disconnected architecture also,here i have used connected architecture.

            SqlConnection con = new SqlConnection(@"Data Source=sagar;Initial Catalog=erec;Integrated Security=True");
            con.Open();
            String str = "insert into regform values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + ddlCategory.SelectedValue.ToString() + "')";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();

            Session["name"] = TextBox1.Text;
            Session["Category"] = ddlCategory.SelectedValue;
            con.Close();
            Response.Redirect("default.aspx");
           
        //}
        //else
        //{
        //    //Response.Redirect("Registration.aspx");
        //    Label2.ForeColor = System.Drawing.Color.Red;
        //    Label2.Text = "You have Entered InValid Captcha Characters please Enter again";
        //}

    }

}