using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.parent_pages
{
    
    public partial class Application : System.Web.UI.Page
    {
        schoolsDataContext school= new schoolsDataContext();
       static  string id;
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
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            var x = school.Students.Where(a => a.ssn.Equals(Convert.ToInt32(TextBox1.Text)));
            if (x.Count() > 0)
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = " This SSN already exists as a Student ";
                Label1.Visible = true;
            }
            else
            {
                var y= school.Childrens.Where(a => a.ssn.Equals(Convert.ToInt32(TextBox1.Text)) && a.parent.Equals(id));
                var z = school.Childrens.Where(a => a.ssn.Equals(Convert.ToInt32(TextBox1.Text)));
                if (y.Count()>0 || z.Count()==0)
                { 

                school.Parent_APPLYFOR_CHILD_IN_SCHOOL(id, Convert.ToInt32(TextBox1.Text), TextBox2.Text, Convert.ToDateTime(TextBox3.Text), RadioButtonList1.Text, Convert.ToInt32(TextBox4.Text));
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Text = " You Have Successfully Applied ";
                Label1.Visible = true;
                }
                else 
                {
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Text = " This Information is not right ";
                    Label1.Visible = true;
                }
            }
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}