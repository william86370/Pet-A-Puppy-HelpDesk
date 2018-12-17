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
using System.Data;

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
                    if (cell != null)
                    {
                        cell.Style.Add("background-color", "Red");//set to red
                    }
                }
               else if (System.DateTime.Now.Day - policyid.Day > 3)//if the days are more then 3
                {
                    HtmlTableRow cell = (HtmlTableRow)e.Item.FindControl("_itemrow");//get the row ID
                    if (cell != null)
                    {
                        cell.Style.Add("background-color", "Yellow");//set it to yellow
                    }
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
                string connStr = ConfigurationManager.ConnectionStrings["PetAPuppyWilliamWrightConnectionString"].ConnectionString;//this allows us to update the sql name to our azure server later on
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

        protected void ViewUnassignedbtn_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["PetAPuppyWilliamWrightConnectionString"].ConnectionString;//this allows us to update the sql name to our azure server later on
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            SqlCommand command = conn.CreateCommand();
            Loggedintech = Session["Tech"].ToString();
            command.CommandText = "SELECT Id, TechUserName, ReportName, TicketCreateDate, Queue, ErrorType, ErrorDecription FROM Tickets WHERE(TechUserName = '"+Loggedintech +"') ORDER BY TicketCreateDate";//this is bad but im tierd
            
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ListView1.DataSourceID = null;
            ListView1.DataSource = null;
            ListView1.DataSource = dt;
            ListView1.DataBind();
            conn.Close();
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["PetAPuppyWilliamWrightConnectionString"].ConnectionString;//this allows us to update the sql name to our azure server later on
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            SqlCommand command = conn.CreateCommand();
            Loggedintech = Session["Tech"].ToString();
            command.CommandText = "SELECT Id, TechUserName,ReportName, TicketCreateDate, Queue, ErrorType , ErrorDecription  FROM Tickets ORDER BY TicketCreateDate";//sort all data value
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ListView1.DataSourceID = null;
            ListView1.DataSource = null;
            ListView1.DataSource = dt;
            ListView1.DataBind();
            conn.Close();
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["PetAPuppyWilliamWrightConnectionString"].ConnectionString;//this allows us to update the sql name to our azure server later on
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            SqlCommand command = conn.CreateCommand();
            Loggedintech = Session["Tech"].ToString();
            command.CommandText = "SELECT Id, TechUserName,ReportName, TicketCreateDate, Queue, ErrorType , ErrorDecription  FROM Tickets ORDER BY TechUserName";//sort all data value
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ListView1.DataSourceID = null;
            ListView1.DataSource = null;
            ListView1.DataSource = dt;
            ListView1.DataBind();
            conn.Close();
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["PetAPuppyWilliamWrightConnectionString"].ConnectionString;//this allows us to update the sql name to our azure server later on
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            SqlCommand command = conn.CreateCommand();
            Loggedintech = Session["Tech"].ToString();
            command.CommandText = "SELECT Id, TechUserName,ReportName, TicketCreateDate, Queue, ErrorType , ErrorDecription  FROM Tickets ORDER BY ErrorType";//sort all data value
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ListView1.DataSourceID = null;
            ListView1.DataSource = null;
            ListView1.DataSource = dt;
            ListView1.DataBind();
            conn.Close();
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["PetAPuppyWilliamWrightConnectionString"].ConnectionString;//this allows us to update the sql name to our azure server later on
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            SqlCommand command = conn.CreateCommand();
            Loggedintech = Session["Tech"].ToString();
            command.CommandText = "SELECT Id, TechUserName,ReportName, TicketCreateDate, Queue, ErrorType , ErrorDecription  FROM Tickets ORDER BY TicketCreateDate DESC";//sort all data value
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ListView1.DataSourceID = null;
            ListView1.DataSource = null;
            ListView1.DataSource = dt;
            ListView1.DataBind();
            conn.Close();
        }
    }
}