using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.general_pages
{
    public partial class signup_student : System.Web.UI.Page
    {
        schoolsDataContext school = new schoolsDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            var x = school.Childrens.Where(a=>a.ssn.Equals(Convert.ToInt32(TextBoxssn.Text)));
            if (x.Count() > 0)
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = " This SSN already exists ";
                Label1.Visible = true;
            }
            else
            {
                // put the procedure here 
            }


        }
    }
}