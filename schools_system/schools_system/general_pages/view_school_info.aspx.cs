using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.general_pages
{
    public partial class view_school_info : System.Web.UI.Page
    {
        schoolsDataContext schools = new schoolsDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!IsPostBack)
            {
                if(Request["Value"]!= null)
                {
                    string id = Request["Value"].ToString();
                    if (IsDigitsOnly(id))
                    {
                        grid1(Convert.ToInt32(id));
                    }
                    else {
                        char one = id[0];
                        string rest = id.Substring(1, (id.Length) - 1);
                        grid(one, rest);
                        

                              }
                }
               
            }

        }
        protected void grid1(int key)
        {
            
                GridView1.DataSource = schools.View_Info(key);
                GridView1.DataBind();
            
        }
        protected void grid( char k, string input)
        {
            
             if (k == '1')
            {
                GridView1.DataSource = schools.Search_School_ByName(input);
                GridView1.DataBind();
            }
            else if (k == '2')
            {
                GridView1.DataSource = schools.Search_School_ByAddress(input);
                GridView1.DataBind();
            }
            else if (k == '3')
            {
                GridView1.DataSource = schools.Search_School_ByType(input);
                GridView1.DataBind();
            }

        }

        bool IsDigitsOnly(string str)
        {
            foreach (char c in str)
            {
                if (c < '0' || c > '9')
                    return false;
            }

            return true;
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }
    }
}