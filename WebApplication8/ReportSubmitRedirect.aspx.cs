using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetaPuppy
{
    public partial class WebForm4 : System.Web.UI.Page//this class is very easy it only redirects the user
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ReportAgainbtn_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/SupportTicket.aspx");//redirect back to supportticket page
        }

        protected void Mainbtn_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/index.aspx");//redirect to main page(index)
        }
    }
}