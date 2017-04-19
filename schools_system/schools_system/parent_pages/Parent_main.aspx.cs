using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schools_system.parent_pages
{
    public partial class Parent_main : System.Web.UI.Page
    {
        static string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request["Value"] != null)
                {
                     id = Request["Value"].ToString();
                    

                }

            }
        }

        protected void Application_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/parent_pages/Application.aspx?Value=" + id);
        }

        protected void Choose_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/parent_pages/ChooseSchool.aspx?Value=" + id);
        }

        protected void Reports_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/parent_pages/Reports.aspx?Value=" + id);
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/parent_pages/Ratings.aspx?Value=" + id);
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/parent_pages/Schools_Reviews.aspx?Value=" + id);

        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/parent_pages/Delete.aspx?Value=" + id);

        }

      

      

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/general_pages/Home.aspx");
        }
    }
}