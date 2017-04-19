using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.Student_pages
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        schoolsDataContext schools = new schoolsDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            String username = Request.QueryString["username"];
            String code = Request.QueryString["coursecode"];
            String name = Request.QueryString["coursename"];

            Labelusername.Text = username;
            Labelcourse.Text = name;
            Labelcode.Text = code;
            Labelusername.Visible = true;
            Labelcode.Visible = true;
            Labelcourse.Visible = true;
            Labeldone.Visible = false;

        }

        protected void Buttonpost_Click(object sender, EventArgs e)
        {
            schools.add_My_Question(Labelusername.Text, Labelcode.Text, TextBoxQuestion.Text);
            Labeldone.Text = "done";
            Labeldone.Visible = true;
        }

        protected void Buttonlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/general_pages/Home.aspx");


        }

        protected void TextBoxQuestion_TextChanged(object sender, EventArgs e)
        {

        }
    }
}