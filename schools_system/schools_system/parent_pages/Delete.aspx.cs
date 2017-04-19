using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.parent_pages
{
    public partial class Delete : System.Web.UI.Page
    {
     static    string id;
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
            grid();
            Label2.Text = id;
            Label1.Text = "";


        }
        protected void grid()
        {
            GridView1.DataSource = schools.Get_all_Reviews(id);
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var x = schools.Parents_Review_Schools.Where(a => a.school.Equals(Convert.ToInt32(TextBox2.Text)) && a.parent.Equals(id));
            if (x.Count() > 0)
            {
                schools.Delete_Review(id, Convert.ToInt32(TextBox2.Text));
                Label1.Text = "You Deleted Your Review";
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Visible = true;
            }
            else
            {

                Label1.Text = "You don't have any Review";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

      
    }
}