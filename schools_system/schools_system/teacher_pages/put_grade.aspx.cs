using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.teacher_pages
{
    public partial class put_grade : System.Web.UI.Page
    {
        schoolsDataContext school = new schoolsDataContext();
        string id="";
        string code = "";
        string post_date="";
        string sid="";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Request["Value"] != null)
            {
                id = Request["Value"].ToString();
                string[] a = id.Split(',');
                id = a[0];
                code = a[1];
                post_date = a[2];
                //Label1.Text = username + code + post_date;
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            school.teacher_grade_assignment("",Convert.ToInt32(id), Convert.ToDateTime(post_date), Convert.ToDecimal(TextBox1.Text), code);
            Label1.Text = "You've Graded this Student Successfully";
            Label1.ForeColor = System.Drawing.Color.LawnGreen;
            Label1.Visible = true;
        }
    }
}