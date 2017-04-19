using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.Student_pages
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        schoolsDataContext schools = new schoolsDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            String username = Request.QueryString["username"];
            String code = Request.QueryString["coursecode"];
            String name = Request.QueryString["coursename"];

            Labelusername.Text = username;
            Labelcourse.Text = name;
            Labelcode.Text = code;
            Labelusername.Visible = true;
            Labelcode.Visible = true;
            Labelcourse.Visible = true;
            if (!IsPostBack)
            {
                Grid(username,code);
            }

        }
        protected void Grid(String username, String course)
        {

            //change this proc to username
            
            GridView1.DataSource = schools.View_my_assignments(username,course);
           GridView1.DataBind();
        }

        // send post date due date course  and username 
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {



            int index = GridView1.SelectedIndex;
            string postingdate = GridView1.Rows[index].Cells[1].Text;
            string duedate = GridView1.Rows[index].Cells[2].Text; 
            



            Response.Redirect("~/Student_pages/submitassignment.aspx?username=" + Labelusername.Text + "&coursecode=" + Labelcode.Text + "&coursename=" + Labelcourse.Text+ "&duedate=" + duedate + "&postingdate=" + postingdate);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/general_pages/Home.aspx");
        }

    }

    
}