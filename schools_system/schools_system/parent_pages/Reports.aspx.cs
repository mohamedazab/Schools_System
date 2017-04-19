using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.parent_pages
{
    public partial class Reports1 : System.Web.UI.Page
    {
      static  string id;
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
            GridView1.DataSource = schools.VIEW_REPORTS(id);
            GridView1.DataBind();

        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Boolean z = false;
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {

                if (GridView1.Rows[i].Cells[1].Text == TextBox1.Text && GridView1.Rows[i].Cells[0].Text==TextBox2.Text && Convert.ToDateTime(GridView1.Rows[i].Cells[3].Text).Equals(Convert.ToDateTime(TextBox4.Text)))
                    z = true;


            }
            if (z)
            {

                Convert.ToDecimal(TextBox2.Text);
                schools.Reply(TextBox3.Text, Convert.ToInt32(TextBox2.Text), TextBox1.Text, Convert.ToDateTime(TextBox4.Text));
                Label1.Text = " you have Replied (if Replied before this will change your relpy) ";
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Visible = true;
            }
            else
            {
                Label1.Text = " This Information Doesn't match the table above ";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
            }
            
        }
        
    }
}