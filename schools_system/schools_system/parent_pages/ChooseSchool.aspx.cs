using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.parent_pages
{
    public partial class ChooseSchool : System.Web.UI.Page
    {
     static   string id;
     
        schoolsDataContext schools = new schoolsDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request["Value"] != null)
                {
                    id = Request["Value"].ToString();
                    

                }
              
            }
            Label1.Text = "";
            Label2.Text = id;
            grid();
        }
        protected void grid()
        {
            GridView1.DataSource = schools.Schools_ACCEPTED_CHILD(id);
            GridView1.DataBind();

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            Label1.Visible = false;
            var x = schools.Students.Where(a => a.ssn.Equals(Convert.ToInt32(TextBox2.Text)));
            if (x.Count() > 0)
            {
                Label1.Text = " this Child already Registered To a School";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
            }
            else
            {
                var y = schools.Parents_ApplyForChildIn_Schools.Where(a => a.child.Equals(Convert.ToInt32(TextBox2.Text)) && a.school.Equals(Convert.ToInt32(TextBox1.Text)) && a.accepted==true);
                if(y.Count()==1)
                schools.CHOOSE_SCHOOL(Convert.ToInt32(TextBox1.Text), Convert.ToInt32(TextBox2.Text));
                else
                {
                    Label1.Text = "Choose from the Table";
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Visible = true;
                }
            }
        }
     
      

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/general_pages/Home.aspx");
        }
    }
}