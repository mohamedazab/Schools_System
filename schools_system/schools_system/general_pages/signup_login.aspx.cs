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
            Label1.Visible = false;
            var x = schools.Employees.Where(a => a.username.Equals(null));
            
            if (RadioButtonList2.SelectedValue.Equals("As Teacher"))
            {
                if ((TextBox1.Text.Length) ==0)
                {
                    Label1.Text = "Enter the School's PK";
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Visible = true;
                }
                else
                {
                    var sc = schools.Schools.Where(a => a.primary_key.Equals(Convert.ToInt32(TextBox1.Text)));
                    if (sc.Count() < 1 )
                    {
                        Label1.Text = "Wrong Primary Key , No Such A School";
                        Label1.ForeColor = System.Drawing.Color.Red;
                        Label1.Visible = true;
                    }

                    else if (x.Count() > 0)
                    {
                        Label1.Text = "There is an employee in the queue waiting for username assignment from the Admin , wait !";
                        Label1.ForeColor = System.Drawing.Color.DarkOrange;
                        Label1.Visible = true;
                    }
                    else
                    {
                        Response.Redirect("~/general_pages/signup_teacher.aspx?Value="+TextBox1.Text);
                    }
                }
            }
            else if (RadioButtonList2.SelectedValue.Equals("As Parent"))
            {
                Response.Redirect("~/general_pages/signup_parent.aspx");
            }
            else if (RadioButtonList2.SelectedValue.Equals("As Student"))
            {
                Response.Redirect("~/general_pages/signup_student.aspx");
            }
            else
            {
                Label1.Text = "Specify An Action";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
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
                var x = schools.Employees.Where(a => (a.username.Equals(usernamebox.Text) && a.password.Equals(passwordbox.Text)));
                var y = schools.Teachers.Where(a => (a.username.Equals(usernamebox.Text)));
                if (x.Count() < 1 || y.Count()<1)
                {
                    Label1.Text = " Wrong username or password";
                    Label1.Visible = true;
                }
                else
                {
                    Response.Redirect("~/teacher_Pages/controller.aspx?Value=" + usernamebox.Text);
                }
            }

            else if (RadioButtonList1.SelectedValue.Equals("As Admin"))
            {
                var x = schools.Administrators.Where(a => a.username.Equals(usernamebox.Text));
                var y = schools.Employees.Where(a => (a.username.Equals(usernamebox.Text) && a.password.Equals(passwordbox.Text)));
                if (x.Count() <1 || y.Count() < 1)
                {
                    Label1.Text = " Wrong username or password";
                    Label1.Visible = true;
                }
                else
                {
                    Response.Redirect("~/admin_Pages/main.aspx?Value=" + usernamebox.Text);
                }
            }

            else if (RadioButtonList1.SelectedValue.Equals("As Admin"))
            {
                var x = schools.Administrators.Where(a => a.username.Equals(usernamebox.Text));
                var y = schools.Employees.Where(a => (a.username.Equals(usernamebox.Text) && a.password.Equals(passwordbox.Text)));
                if (x.Count() < 1 || y.Count() < 1)
                {
                    Label1.Text = " Wrong username or password";
                    Label1.Visible = true;
                }
                else
                {
                    Response.Redirect("~/admin_Pages/main.aspx?Value=" + usernamebox.Text);
                }
            }else if (RadioButtonList1.SelectedValue.Equals("As Parent"))
            {
                var x = schools.Parents.Where(a => a.username.Equals(usernamebox.Text));
                if (x.Count() <1 )
                {
                    Label1.Text = " Wrong username or password";
                    Label1.Visible = true;
                }
                else
                {
                    Response.Redirect("~/parent_pages/Parent_main.aspx?Value=" + usernamebox.Text);
                }
            }



            else if (RadioButtonList1.SelectedValue.Equals("As Student"))
            {
                var x = schools.Students.Where(a => a.username.Equals(usernamebox.Text));
                if (x.Count() < 1)
                {
                    Label1.Text = " Wrong username or password";
                    Label1.Visible = true;
                }
                else
                {
                    Response.Redirect("~/student_pages/main.aspx?Value=" + usernamebox.Text);
                }
            }
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }
    }
}