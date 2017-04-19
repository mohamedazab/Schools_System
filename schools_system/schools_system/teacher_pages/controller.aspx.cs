using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.teacher_pages
{
    public partial class controller : System.Web.UI.Page
    {
        schoolsDataContext school = new schoolsDataContext();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request["Value"]!= null)
            {
                id = Request["Value"].ToString();
            }
        }

        protected void view_courses_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/teacher_Pages/view_courses.aspx?Value="+id);
        }

        protected void assignemnt_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/teacher_Pages/post_assignments.aspx?Value="+id);
        }

        protected void view_assignments_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/teacher_pages/view_assignments.aspx?Value="+id);
        }

        protected void reports_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/teacher_pages/make_report.aspx?Value="+id);
        }

        protected void questions_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            var x = school.Courses.Where(a => a.code.Equals(TextBox1.Text));
            var y = school.Teachers_assigned_to_Courses.Where(a => a.teacher.Equals(id));
            
            if (x.Count()<1)
            {
                Label1.Text = "Invalid Course Code ";
                Label1.Visible = true;
            }
           else if (y.Count() < 1)
            {
                Label1.Text = "You Don't Teach This Course ";
                Label1.Visible = true;
            }
            else
            {

                Response.Redirect("~/teacher_pages/view_questions.aspx?Value=" + id + "," + TextBox1.Text);
            }
        }

        protected void view_students_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/teacher_pages/view_students.aspx?Value="+id);
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }
    }
}