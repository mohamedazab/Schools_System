using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.general_pages
{
    public partial class signup_teacher : System.Web.UI.Page
    {
        schoolsDataContext school = new schoolsDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            var x = school.Employees.Where(a => a.mail.Equals(TextBoxemail.Text));
            if (x.Count() > 0)
            {
                Label1.Text = "This mail already exists";
                Label1.Visible = true;
            }
            else
            {
               // school.teacher_signup(TextBoxfirstname.Text,TextBoxmiddlename.Text,TextBoxlastname.Text,
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Text = " you've registered successfully ";
                
                Label1.Visible = true;
            }
        }

        protected void TextBoxfirstname_TextChanged(object sender, EventArgs e)
        {

        }
    }
}