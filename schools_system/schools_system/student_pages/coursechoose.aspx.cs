using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.Student_pages
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        schoolsDataContext schools = new schoolsDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            String username = Request.QueryString["username"];
            String code = Request.QueryString["coursecode"];
            String  name= Request.QueryString["coursename"];

            Labelusername.Text = username;
            Labelcourse.Text = name;
            Labelcode.Text = code;
            Labelusername.Visible = true;
            Labelcode.Visible = true;
            Labelcourse.Visible=true;


        }
   

   
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/general_pages/Home.aspx");
        }
        protected void Buttonpostquestion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Student_pages/postQuestion.aspx?username=" + Labelusername.Text + "&coursecode=" + Labelcode.Text + "&coursename=" + Labelcourse.Text);


        }

        protected void Buttonviewquestion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Student_pages/viewQuestions.aspx?username=" + Labelusername.Text + "&coursecode=" + Labelcode.Text + "&coursename=" + Labelcourse.Text);


        }

        protected void Buttonviewassign_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Student_pages/viewAssign.aspx?username=" + Labelusername.Text + "&coursecode=" + Labelcode.Text + "&coursename=" + Labelcourse.Text);


        }

        protected void Buttonviewgrades_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/Student_pages/assignmentgrade.aspx?username=" + Labelusername.Text + "&coursecode=" + Labelcode.Text + "&coursename=" + Labelcourse.Text);


        }
    }
}