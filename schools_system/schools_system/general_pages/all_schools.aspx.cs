using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.general_pages
{
    public partial class all_schools : System.Web.UI.Page
    {
        schoolsDataContext schools = new schoolsDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grid();
            }
        }

        protected void grid()
        {
            GridView1.DataSource = schools.View_Available();
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