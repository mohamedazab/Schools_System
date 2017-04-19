using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.teacher_pages
{
    
    public partial class view_grade_assignments : System.Web.UI.Page
    {
        schoolsDataContext school = new schoolsDataContext();
        string id = "";
        string username = "";
        string code = "";
        string post_date = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["Value"] != null)
            {
                id = Request["Value"].ToString();
                string[] a = id.Split(',');
                username = a[0];
                code = a[1];
                post_date = a[2];
               // Label1.Text = username + code + post_date;
            }
                
               
            grid(username, code);

          
        }

        protected void grid(string username, string course)
        {
            
            GridView1.DataSource = school.teacher_view_soluions_for_Assignments(username, course);
            GridView1.DataBind();
           // DataTable data = DAL.getdata();
            if (GridView1.Rows.Count ==0)
            {
                Label1.Text = "NO Solutions For This Assignment , yet ";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string student_id = GridView1.SelectedRow.Cells[1].Text;
            Response.Redirect("~/teacher_pages/put_grade.aspx?Value=" + student_id + "," + code + ","+ post_date);
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            
        }
        
    }
}