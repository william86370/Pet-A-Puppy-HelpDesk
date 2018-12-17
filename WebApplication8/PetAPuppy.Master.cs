using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetaPuppy
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Login(object sender, EventArgs e)
        {
            Server.Transfer("~/index.aspx");
        }
        protected void Report(object sender, EventArgs e)
        {
            Server.Transfer("~/SupportTicket.aspx");
        }


        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}