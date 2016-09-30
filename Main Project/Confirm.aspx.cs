using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Confirm : System.Web.UI.Page
{
    private ResumeClass resume = new ResumeClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Resume"] != null)
        {
            resume = (ResumeClass)Session["Resume"];
            this.DisplayResume();
        }
    }
    private void DisplayResume()
    {
        lblFirstName.Text = resume.FirstName;
        lblLastName.Text = resume.LastName;
        lblEducation.Text = resume.Education;
        lblUniversity.Text = resume.University;
        lblWorkEx.Text = resume.WorkEx.ToString();
        lblPrevComp1.Text = resume.PrevComp1.ToString();
        lblPrevComp2.Text = resume.PrevComp2.ToString();
        lblSkill1.Text = resume.Skill1;
        lblSkill2.Text = resume.Skill2;
        lblSkill3.Text = resume.Skill3;
        lblSkill4.Text = resume.Skill4;
        lblProj1.Text = resume.Project1;
        lblProj2.Text = resume.Project2;
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        lblMessage.Text = "Thank You for your Resume.";
        HttpCookie nameCookie = new HttpCookie("FirstName", lblFirstName.Text);
        nameCookie.Expires = DateTime.Now.AddMonths(6);
        Response.Cookies.Add(nameCookie);
    }
    protected void btnModify_Click(object sender, EventArgs e)
    {
        Response.Redirect("Resume.aspx");
    }
}