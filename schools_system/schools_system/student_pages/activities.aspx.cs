using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.Student_pages
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        schoolsDataContext schools = new schoolsDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

            String s1 = Request.QueryString["username"];
            

            Labelusername.Text = s1;
          
            if (!IsPostBack)
            {
               grid(s1);
            }

        }
    

        protected void grid(string s)
        {
           GridView1.DataSource = schools.view_my_school_activities( s); 
            GridView1.DataBind();

        }
       

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            alreadyin.Visible = false;

            alreadyin.Text =" you are already a member or the activity you choose conflicts with other activity";
               
            int index = GridView1.SelectedIndex;
            string activityID = GridView1.Rows[index].Cells[1].Text;
            
    int x= schools.apply_for_activity(Labelusername.Text, Convert.ToInt32(activityID));
    if(x==1)
            {
                alreadyin.Text = "successful";
                
            }
        alreadyin.Visible = true;
        }




    }
}