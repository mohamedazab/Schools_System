using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.general_pages
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Value = "";
            if (RadioButtonList1.SelectedValue.Equals("Name"))
            {
                Value = "1";
                Response.Redirect("~/general_pages/search_for_school.aspx?value=" + Value);
            }
            else if (RadioButtonList1.SelectedValue.Equals("Address"))
            {
                Value = "2";
                Response.Redirect("~/general_pages/search_for_school.aspx?value=" + Value);
            }
            else if (RadioButtonList1.SelectedValue.Equals("Type"))
            {
                Value = "3";
                Response.Redirect("~/general_pages/search_for_school.aspx?value=" + Value);
            }
            else
            {
                Label1.Text = "Specify An Action";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
            }
        }
    }
}