using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.teacher_pages
{
    public partial class view_students : System.Web.UI.Page
    {
        schoolsDataContext school = new schoolsDataContext();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                id = Request["Value"].ToString();
                grid(id);
            }
        }

        protected void grid(string username)
        {
            GridView1.DataSource = school.students_seen_by_teacher(username);
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