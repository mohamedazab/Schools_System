using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.teacher_pages
{
    public partial class view_answer_questions : System.Web.UI.Page
    {
        schoolsDataContext school = new schoolsDataContext();
        string course = "";
        string username = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            string inc = Request["Value"].ToString();
            string[] a = inc.Split(',');
            username = a[0];
            course = a[1];
            
            grid(course, username);

        }
        protected void grid(string s,string s1)
        {
            GridView1.DataSource = school.questions_viewed_by_teacher(s,s1);
            GridView1.DataBind();
            
             
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            string content = GridView1.SelectedRow.Cells[1].Text;
            string name = GridView1.SelectedRow.Cells[2].Text;
            var x = school.Childrens.Where(a => a.name.Equals(name)).SingleOrDefault();
            int ssn = x.ssn;
            var y = school.Questions.Where(a => a.student.Equals(ssn)).SingleOrDefault();
            int pri = y.primary_key;
            
            Response.Redirect("~/teacher_pages/answer_questions.aspx?Value=" + pri);
        }
    }
}