using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.teacher_pages
{
    public partial class view_assignments : System.Web.UI.Page
    {
        schoolsDataContext school = new schoolsDataContext();
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request["Value"]!= null)
            {
                id = Request["Value"].ToString();
                Label1.Text = id;
                //Label1.Visible = true;
                grid(id);
            }

        }

        protected void grid (string username)
        {
            GridView1.DataSource = school.teacher_view_assignemnts(username);
            GridView1.DataBind();
        }






        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string code =GridView1.SelectedRow.Cells[1].Text;
            string post_date = GridView1.SelectedRow.Cells[2].Text;
            Response.Redirect("~/teacher_pages/view_assignments_solutions.aspx?Value=" + id+","+ code+","+post_date );
        }
    }
}