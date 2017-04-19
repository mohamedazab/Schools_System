using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.parent_pages
{
    public partial class Schools_Reviews : System.Web.UI.Page
    {
       static string id;
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
            Label2.Text = id;
            grid();
            Label1.Text = "";

        }
        protected void grid()
        {
            GridView1.DataSource = schools.View_all_myChildren_Schools(id);
            GridView1.DataBind();

        }



        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;


            var x = schools.Parents_Review_Schools.Where(a => a.parent.Equals(id) && a.school.Equals(Convert.ToInt32(TextBox1.Text)));
            
            if (x.Count() > 0)
            {
                Label1.Text = " You Have Reviewed This School Before";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
            }
            else
            {
                Boolean z = false;
                for (int i = 0; i < GridView1.Rows.Count; i++)
                {

                    if (GridView1.Rows[i].Cells[1].Text == TextBox1.Text)
                        z = true;


                }

                if (z)
                {
                    schools.Parent_Review_School(id, Convert.ToInt32(TextBox1.Text), TextBox3.Text);
                    Label1.Text = "You  Have Entered Your Review ";
                    Label1.ForeColor = System.Drawing.Color.Green;
                    Label1.Visible = true;
                }
                else
                {
                    Label1.Text = "This School Id is not From Column Primary_key frm The Table";
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Visible = true;
                }
            }
        }

     

    }
}