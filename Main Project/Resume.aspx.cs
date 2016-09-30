using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Resume : System.Web.UI.Page
{
    private ResumeClass resume = new ResumeClass();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Resume"] != null)
            {
                resume = (ResumeClass)Session["Resume"];
                this.DisplayResume();
            }
            else
            {
                if (Request.Cookies["FirstName"] != null)
                {
                    txtFirstName.Text = Request.Cookies["FirstName"].Value;
                }
                if (Request.Cookies["LastName"] != null)
                {
                    txtLastName.Text = Request.Cookies["LastName"].Value;
                }
            }
            
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        
            SqlDataSource1.Insert();
            HttpCookie nameCookie = new HttpCookie("FirstName", txtFirstName.Text);
            nameCookie.Expires = DateTime.Now.AddMonths(6);
            Response.Cookies.Add(nameCookie);
            HttpCookie nameCookie1 = new HttpCookie("LastName", txtLastName.Text);
            nameCookie1.Expires = DateTime.Now.AddMonths(6);
            Response.Cookies.Add(nameCookie1);

            ResumeClass r = new ResumeClass();
            r.FirstName = txtFirstName.Text;
            r.LastName = txtLastName.Text;
            r.Education = txtEducation.Text;
            r.University = txtUniversity.Text;
            //r.WorkEx = Convert.ToInt32(txtWorkEx.Text);
            String wex = txtWorkEx.Text;
            r.WorkEx = 34;
            r.PrevComp1 = txtPrev1.Text;
            r.PrevComp2 = txtPrev2.Text;
            r.Skill1 = txtSkill1.Text;
            r.Skill2 = txtSkill2.Text;
            r.Skill3 = txtSkill3.Text;
            r.Skill4 = txtSkill4.Text;
            r.Project1 = txtProj1.Text;
            r.Project2 = txtProj2.Text;

            //Assign to Session
            Session["Resume"] = r;
            //Navigate to Confirm page
            Response.Redirect("Confirm.aspx");
    }
    private void DisplayResume()
    {
        txtFirstName.Text = resume.FirstName.ToString();
        txtLastName.Text = resume.LastName.ToString();
        txtUniversity.Text = resume.University.ToString();
        txtEducation.Text = resume.Education.ToString();
        txtWorkEx.Text = Convert.ToString(resume.WorkEx);
        txtPrev1.Text = resume.PrevComp1;
        txtPrev2.Text = resume.PrevComp2;
        txtSkill1.Text = resume.Skill1.ToString();
        txtSkill2.Text = resume.Skill2.ToString();
        txtSkill3.Text = resume.Skill3.ToString();
        txtSkill4.Text = resume.Skill4.ToString();
        txtProj1.Text = resume.Project1.ToString();
        txtProj2.Text = resume.Project2.ToString();

    }
    
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtFirstName.Text = null;
        txtLastName.Text = null;
        txtEducation.Text = null;
        txtUniversity.Text = null;
        txtWorkEx.Text = null;
        //ddlComp1.SelectedIndex = -1;
        //ddlComp2.SelectedIndex = -1;
        //ddlSkill1.SelectedIndex = -1;
        //ddlSkill2.SelectedIndex = -1;
        //ddlSkill3.SelectedIndex = -1;
        //ddlSkill4.SelectedIndex = -1;
        txtProj1.Text = null;
        txtProj2.Text = null;
    }
}