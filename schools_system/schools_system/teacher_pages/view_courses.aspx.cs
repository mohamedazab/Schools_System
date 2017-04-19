using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.teacher_pages
{
    public partial class view_courses : System.Web.UI.Page
    {
        schoolsDataContext school = new schoolsDataContext();
        string s = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["Value"] != null)
            {
                s = Request["Value"].ToString();
                grid(s);
            }
           

        }

        protected void grid (string username)
        {
            GridView1.DataSource = school.teacher_view_courses(username);
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            
        }
    }
}