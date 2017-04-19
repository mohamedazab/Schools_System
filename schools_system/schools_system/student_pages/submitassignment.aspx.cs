using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.Student_pages
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        schoolsDataContext schools = new schoolsDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {

            String username = Request.QueryString["username"];
            String code = Request.QueryString["coursecode"];
            String name = Request.QueryString["coursename"];
            string post= Request.QueryString["postingdate"];
            string due = Request.QueryString["duedate"];
            Labelusername.Text = username;
            Labelcourse.Text = name;
            Labelcode.Text = code;
            Labelpost.Text = post;
            Labeldue.Text = due;
            Labelusername.Visible = true;
            Labelcode.Visible = true;
            Labelcourse.Visible = true;
            Labelpost.Visible = true;
            Labeldue.Visible = true;



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Labelsucces.Visible = false;
            
     int x=  schools.solve_assignment(Labelusername.Text,Labelcourse.Text, TextBoxsol.Text, Convert.ToDateTime( Labelpost.Text), Convert.ToDateTime(Labeldue.Text));
            if (x == 1)
            {
                Labelsucces.Text = "you have succesfully submitted the assignment";
            }
            else
            {
                Labelsucces.Text = "you passed the deadline sorry for that";

            }
            Labelsucces.Visible = true;

        }
    }
}