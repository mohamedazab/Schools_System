using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.admin_pages
{
    public partial class view_teachers_no_username : System.Web.UI.Page
    {
        schoolsDataContext school = new schoolsDataContext();
        string username = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request["Value"] != null)
                    username = Request["Value"].ToString();
                grid();
            }

        }

        protected void grid()
        {

            GridView1.DataSource = school.administrator_view_teachers_no_username(username);
            GridView1.DataBind();
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string teacher_id = GridView1.SelectedRow.Cells[1].Text;
            Response.Redirect("~/admin_Pages/assign_username_password_for_teachers.aspx?Value=" + teacher_id);
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }
    }
}