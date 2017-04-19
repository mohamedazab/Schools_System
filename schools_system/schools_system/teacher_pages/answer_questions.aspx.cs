using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.teacher_pages
{
    public partial class answer_questions : System.Web.UI.Page
    {
        schoolsDataContext school = new schoolsDataContext();
        string inc = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            inc = Request["Value"].ToString();
           
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            school.questions_answered_by_teacher(Convert.ToInt32(inc),TextBox1.Text);
            Label1.Text = "you Answered This Question Successfully";
            Label1.ForeColor = System.Drawing.Color.LawnGreen;
            Label1.Visible = true;
            
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }
    }
}