using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.teacher_pages
{
    public partial class make_report : System.Web.UI.Page
    {

        schoolsDataContext school = new schoolsDataContext();
        string username = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            username = Request["Value"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            int y = Convert.ToInt32(TextBox1.Text);
            var x = school.Students.Where(a => a.id .Equals(y));
            
           


            if (x.Count()<1)
            {
                Label1.Text = "This is not a Valid Student ID";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;

            }
            else
            {
                var s = school.Students.Where(a => a.id.Equals(Convert.ToInt32(TextBox1.Text))).SingleOrDefault();
                int ssn = s.ssn;
                school.student_has_report_from_teacher(username, ssn, TextBox2.Text);
                Label1.Text = "You've Successfully Made A report in This Student ";
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Visible = true;
            }
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }
    }
}