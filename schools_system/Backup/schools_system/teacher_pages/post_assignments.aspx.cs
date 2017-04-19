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
    //    schoolsDataContext schools = new schoolsDataContext();
        schoolsDataContext schools = new schoolsDataContext();
       
        protected void Page_Load(object sender, EventArgs e)
        {
          //  var y = schools.
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            var x = schools.Courses.Where(a => a.code.Equals(TextBox1.Text));
            if ((TextBox3.Text).Length == 0 || x.Count() < 1)
            {
                if (x.Count() < 1)
                {
                    
                
                    Label1.Text = " INVALID Course Code ";
                    Label1.Visible = true;
                
                }
                //if ((TextBox3.Text).Length == 0)
                else
                {

                    Label1.Text = " You cant't make an empty assignment ";
                    Label1.Visible = true;
                }
                
               
                
            }
            /*
            else
            {
                schools.teacher_post_assignment("user", TextBox1.Text, DateTime.Now, Convert.ToDateTime(TextBox2.Text), TextBox3.Text, 10.0); 
                Label1.Text = "You've successfully posted this assignment ";
                Label1.ForeColor =System.Drawing.Color.Green ;
                Label1.Visible = true;

            }*/
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/teacher_Pages/controller.aspx");
        }
    }
}