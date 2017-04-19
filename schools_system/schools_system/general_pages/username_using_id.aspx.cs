using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.general_pages
{
    public partial class username_using_id : System.Web.UI.Page
    {
        schoolsDataContext school = new schoolsDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        bool IsDigitsOnly(string str)
        {
            foreach (char c in str)
            {
                if (c < '0' || c > '9')
                    return false;
            }

            return true;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
           
            if (IsDigitsOnly(TextBox1.Text) == false)
            {
                Label1.Text = "Wrong Format , This is not a number ";
                Label1.ForeColor = System.Drawing.Color.DarkRed;
                Label1.Visible = true;
            }
            else
            {
                int id = Convert.ToInt32(TextBox1.Text);
                var x = school.Employees.Where(a => a.id.Equals(id));

                if (x.Count() < 1)
                {
                    Label1.Text = "Wrong ID . If you Don't Remember Your ID , You've to Signup Again";
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Visible = true;

                }
                else
                {
                    var y = x.SingleOrDefault();

                    if (y.username!= null)
                    {
                        string xx = "Your Password is :- ";
                        Label1.Text = "Your Username is:- " + "\n" + y.username + "\n" + "\n" +xx + y.password;
                        Label1.ForeColor = System.Drawing.Color.MediumSeaGreen;
                        Label1.Visible = true;
                        
                    }
                    else
                    {
                        Label1.Text = "The Admin Didn't Assign You A Username , Yet . Wait !";
                        Label1.ForeColor = System.Drawing.Color.Orange;
                        Label1.Visible = true;

                    }
                }
            }
        }
        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }
    }
}