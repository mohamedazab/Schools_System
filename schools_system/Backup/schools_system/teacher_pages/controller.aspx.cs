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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void view_courses_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/teacher_Pages/view_courses.aspx");
        }

        protected void assignemnt_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/teacher_Pages/post_assignments.aspx");
        }

        protected void view_assignments_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/teacher_pages/view_grade_assignments.aspx");
        }

        protected void reports_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/teacher_pages/write_reports.aspx");
        }

        protected void questions_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/teacher_pages/view_answer_questions.aspx");
        }

        protected void view_students_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/teacher_pages/view_students.aspx");
        }
    }
}