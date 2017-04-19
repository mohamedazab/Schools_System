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
        string schoool = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request["Value"]!= null)
            schoool = Request["Value"].ToString();
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

                school.teacher_signup(TextBoxfirstname.Text, TextBoxmiddlename.Text, TextBoxlastname.Text, Convert.ToDateTime(TextBoxbirthdate.Text), TextBoxaddress.Text, TextBoxemail.Text, RadioButtonList1.SelectedValue, null, null, Convert.ToInt32(schoool));
                Label1.ForeColor = System.Drawing.Color.Green;
                var y = school.Employees.Where(a => a.username.Equals(null)).SingleOrDefault();
                Label1.Text = "you've registered successfully , Your ID = [ " + y.id + " ] Use It to check your username for the first time only - it's secret- ";
                Label1.ForeColor = System.Drawing.Color.MediumSeaGreen;
                Label1.Visible = true;
                
            }
        }

        protected void TextBoxfirstname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }
    }
}