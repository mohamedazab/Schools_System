using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.teacher_pages
{
    public partial class post_assignments : System.Web.UI.Page
    {
        schoolsDataContext school = new schoolsDataContext();
        string s = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Request["Value"] != null)
            {
                s = Request["Value"].ToString();
               
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            var x = school.Courses.Where(a => a.code.Equals(TextBoxcode.Text));
            if (x.Count() < 1)
            {
                Label1.Text = "Invalid Course Code";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
            }
            else
            {
                school.teacher_post_assignment(s, TextBoxcode.Text, DateTime.Now, Convert.ToDateTime(TextBoxduedate.Text), TextBox5.Text, Convert.ToDecimal(TextBoxmaximummarks.Text));
                Label1.Text = "Assignment Added Successfully";
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Visible = true;
            }
        }

        protected void TextBoxcode_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }
    }
}