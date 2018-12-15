using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)//i changed the values in the designer but they dont update here :(
        {
            Response.Redirect("Login.aspx"); //when user clicks tewch login redirect to subview
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Errorreport.aspx");//when the user click the error report button in master redirect to subview
        }
    }
}