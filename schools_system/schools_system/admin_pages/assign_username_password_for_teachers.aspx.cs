using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.admin_pages
{
    public partial class assign_username_password_for_teachers : System.Web.UI.Page
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
            var x = school.Employees.Where(a => a.username.Equals(TextBox1.Text));
            if (x.Count() >0)
            {
                Label1.Text = "This Username Already Exists For Another Employee";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
            }
            else
            {
                school.adminstrator_assign_username_password_salary(Convert.ToInt32(username), TextBox1.Text, TextBox2.Text);
                Label1.Text = "Username & Password Are Assigned Successfully";
                Label1.ForeColor = System.Drawing.Color.LawnGreen;
                Label1.Visible = true;
            }
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }
    }
}