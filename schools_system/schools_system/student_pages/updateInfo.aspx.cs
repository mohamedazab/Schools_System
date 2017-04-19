using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.Student_pages
{
    public partial class WebForm9 : System.Web.UI.Page
    {

        schoolsDataContext schools = new schoolsDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            String s1 = Request.QueryString["username"];
            Labelusername.Text = s1;
            Grid();

        }

        protected void Buttonlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/general_pages/Home.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Labelsucc.Visible = false;

            string level = TextBoxlevel.Text;
            string password = TextBoxpassword.Text;
            string grade = TextBoxgrade.Text;
            string school = TextBoxschool.Text;
            
           schools.Update_Student_Info(Labelusername.Text, Int32.Parse(level),password, Int32.Parse(grade),Int32.Parse(school));
            Labelsucc.Text = "updated";
            Labelsucc.Visible = true;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxlastname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxemail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxadress_TextChanged(object sender, EventArgs e)
        {

        }

       protected void  Grid()
        {

            GridView1.DataSource = schools.Students.Where(a=>a.username.Equals(Labelusername.Text));
            GridView1.DataBind();
            GridView2.DataSource = schools.Schools;
            GridView2.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = GridView2.SelectedIndex;
            string schoolID = GridView2.Rows[index].Cells[1].Text;
            TextBoxschool.Text = schoolID;

        }
    }
}