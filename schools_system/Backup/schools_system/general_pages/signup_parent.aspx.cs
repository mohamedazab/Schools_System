using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.general_pages
{
    public partial class signup_parent : System.Web.UI.Page
    {

        schoolsDataContext schools = new schoolsDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            var x = schools.Parents.Where(a => a.username.Equals(TextBoxusername.Text));
            if (x.Count() > 0)
            {
                Label1.Text = " this username already exists";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
            }
            else
            {
                ///proc insert
            }



        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxmobile1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxmobile2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxlastname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxmobile3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxmobile4_TextChanged(object sender, EventArgs e)
        {

        }
    }
}