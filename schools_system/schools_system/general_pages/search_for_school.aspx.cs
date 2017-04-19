using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.general_pages
{
    public partial class search_for_school : System.Web.UI.Page
    {
        schoolsDataContext schools = new schoolsDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "";
                if (Request["Value"] != null)
                {
                    s = Request["Value"].ToString();
                }
                if (s == "1")
                {
                    TextBox2.Visible = false;
                    RadioButtonList1.Visible = false;
                }
                else if (s == "2")
                {
                    TextBox1.Visible = false;
                    RadioButtonList1.Visible = false;
                }
                else if (s == "3" || s == "4")
                {
                    TextBox1.Visible = false;
                    TextBox2.Visible = false;
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            string s = "";
            if (Request["Value"] != null)
            {
                s = Request["Value"].ToString();
            }
            if (s == "1")
            {
                var x = schools.Schools.Where(a => a.name.Equals(TextBox1.Text));
                if (x.Count() < 1)
                {
                    Label1.Text = "No such a school Name";
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Visible = true;
                    
                }
                else
                {
                    string id = "1" + TextBox1.Text;
                    Response.Redirect("~/general_pages/view_school_info.aspx?value=" + id);
                }

            }
            else if (s == "2")
            {
                
                var x = schools.Schools.Where(a => a.address.Equals(TextBox2.Text));
                if (x.Count() < 1)
                {
                    Label1.Text = "No such a school Address";
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Visible = true;
                }
                else
                {
                    string id = "2" + TextBox2.Text;
                    Response.Redirect("~/general_pages/view_school_info.aspx?value=" + id);
                }

            }
            else if (s == "3")
            {
               
                if (RadioButtonList1.SelectedValue.Equals("National"))
                {
                    string id = "3" + "National";
                    Response.Redirect("~/general_pages/view_school_info.aspx?value=" + id);
                }
                else if(RadioButtonList1.SelectedValue.Equals("International"))
                {
                    string id = "3" + "international";
                    Response.Redirect("~/general_pages/view_school_info.aspx?value=" + id);
                }
                else
                {
                    Label1.Text = "Specify A Proper Action";
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Visible = true;
                }



            }
            else
            {
                Label1.Text = "Specify A Proper Action";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }
    }
}