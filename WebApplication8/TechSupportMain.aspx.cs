using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace PetaPuppy
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        string Loggedintech;
        string acesscode;
        protected void Page_Load(object sender, EventArgs e)
        {
             Loggedintech = Session["Tech"].ToString();
             acesscode = Session["verify"].ToString();
            if (acesscode != "8637007368")
            {
                Server.Transfer("~/index.aspx");
            }
            USernamelbl.Text = "Welcome " + Loggedintech + " ";
            Usernamesignedinlbl.Text = Loggedintech;
        }
        protected void ListView1_ItemDataBound(object sender, ListViewItemEventArgs e)//THIS TOOK FOREVER TO FIND OUT
        {
   
            if (e.Item.ItemType == ListViewItemType.DataItem)//first we check if the object we are adding is a row
            {//if it is
                //So we take in a whole row at a time not multible objects 
                //people need to understand that  
                ListViewDataItem dataitem = (ListViewDataItem)e.Item;//we parse the row into a database
                DateTime policyid = (DateTime)DataBinder.Eval(dataitem.DataItem, "TicketCreateDate");//try to parse this at runtime IT HANDLES ERRORS
                if (System.DateTime.Now.Day-policyid.Day > 7)//if the days are greater then 7
                {
                    HtmlTableRow cell = (HtmlTableRow)e.Item.FindControl("_itemrow");//get the row value set
                    cell.Style.Add("background-color", "Red");//set to red
                }
               else if (System.DateTime.Now.Day - policyid.Day > 3)//if the days are more then 3
                {
                    HtmlTableRow cell = (HtmlTableRow)e.Item.FindControl("_itemrow");//get the row ID
                    cell.Style.Add("background-color", "Yellow");//set it to yellow
                }
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {

        }

        protected void RemoveTech_Click(object sender, EventArgs e)
        {
            if (TechChanebox.Text != "")
            {
                string connStr = ConfigurationManager.ConnectionStrings["PetAPuppy"].ConnectionString;//this allows us to update the sql name to our azure server later on
                string sqlreturn;//the return from sql
                using (var con = new SqlConnection(connStr))//when we connect to sql database
                {
                    var sql = "DELETE FROM [Users] WHERE [TechUserName] = @username;";//our qury to add a report to the database
                    using (var cmd = new SqlCommand(sql, con))//build the commmand
                    {
                        cmd.Parameters.AddWithValue("@username", TechChanebox.Text);//send username entered
                        
                        con.Open();//open the connection
                        cmd.ExecuteScalar();//get the request from the server and set the varable from the query
                        con.Close();//close the connection to sql database
                    }
                }//after using the sql database we know the report was added suscufally 
                RemovedTechlbl.Visible = true;
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Session["tce"] = false;
            Server.Transfer("~/EditTech.aspx");
        }

        protected void EditTEech_Click(object sender, EventArgs e)
        {
            Session["tce"] = true;
            Session["techtoedit"] = TechChanebox.Text;
            Server.Transfer("~/EditTech.aspx");
        }

        protected void EditTicketbtn_Click(object sender, EventArgs e)
        {
            Session["TicketID"] = TicketEditBox.Text;
            Session["Tech"] = Loggedintech;
            Session["verify"] = acesscode;
            Server.Transfer("~/EditTicket.aspx");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/index.aspx");
        }
    }
}