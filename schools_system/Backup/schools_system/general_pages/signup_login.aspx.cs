using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.general_pages
{
    public partial class signup_login : System.Web.UI.Page
    {
        schoolsDataContext schools = new schoolsDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      
        protected void signup_Click(object sender, EventArgs e)
        {
            if (RadioButtonList2.SelectedValue.Equals("As Teacher"))
            {
                Response.Redirect("~/general_pages/signup_teacher.aspx");
            }
        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            if (RadioButtonList1.SelectedValue.Equals("As Teacher"))
            {
              var x = schools.Employees.Where(a=> (a.username.Equals( usernamebox.Text) && a.password.Equals(passwordbox.Text)));
              if (x.Count() < 1)
              {
                  Label1.Text = " Wrong username or password";
                  Label1.Visible = true;
              }
              else
              {
                  Response.Redirect("~/teacher_Pages/controller.aspx");
              }
            }

        }
    }
}