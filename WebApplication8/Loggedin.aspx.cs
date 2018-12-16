﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetaPuppy
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_PreInit(Object sender, EventArgs e)
        {
            if (DateTime.Now.Month == 12)//this checks if its december
            {
                Page.Theme = "christmas";//set the theme to december
            }
            else
            {
                Page.Theme = "DefaultTheme";//set the theme to normal
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Session["user"].ToString();
            Usernamelbl.Text = username;

            
        }
    }
}