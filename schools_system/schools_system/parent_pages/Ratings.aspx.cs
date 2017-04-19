using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.parent_pages
{
    public partial class Ratings : System.Web.UI.Page
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
            grid();
            Label2.Text = id;
            Label1.Text = "";



        }
        protected void grid() 
        {
                 
          GridView1.DataSource =schools.View_Overall_Ratings(id);

           GridView1.DataBind();
           



        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            Label1.Visible = false;


            var x = schools.Parents_Rate_Teachers.Where(a => a.parent.Equals(id) && a.teacher.Equals(TextBox1.Text));

            if (x.Count() > 0)
            {
                Label1.Text = " You Have Rated This Teacher Before";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
            }
            else
            {
                Boolean z = false;
                for (int i = 0; i < GridView1.Rows.Count; i++)
                {

                    if (GridView1.Rows[i].Cells[0].Text == TextBox1.Text)
                        z = true ;
                        
                    
                }
                if (z)
                {
                    var xx = decimal.Parse(TextBox2.Text
                        );
                    schools.Parent_RATE_TEACHER(id, TextBox1.Text, xx);
                    Label1.Text = "You have Rated This Teacher , refresh the page";
                    Label1.ForeColor = System.Drawing.Color.Green;
                    Label1.Visible = true;
                }
                else
                {
                    Label1.Text = "This Teacher is Not in the Table";
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Visible = true;
                }
           }
        }
    }
}