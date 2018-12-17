using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace PetaPuppy
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
               var ticketID = Session["TicketID"].ToString();//get the ID of the Error Report to LOAD in To The screen
                                                          //we now haveto load the database into strings to give us our values
                string connStr = ConfigurationManager.ConnectionStrings["PetAPuppyWilliamWrightConnectionString"].ConnectionString;//this allows us to update the sql name to our azure server later on
                SqlDataReader usernameRdr = null;//the object to hald all the info from our command
                using (var con = new SqlConnection(connStr))//when we connect to sql database
                {
                    con.Open();//open the connection
                    var sql = "SELECT * FROM [Tickets] WHERE Id = @ReportName;";//our qury
                    
                    using (var cmd = new SqlCommand(sql, con))//build the commmand
                    {
                        cmd.Parameters.AddWithValue("@ReportName", ticketID);// ticketID);//send username entered

                        usernameRdr = cmd.ExecuteReader();
                        while (usernameRdr.Read())
                        {
                            ReportNamebox2.Text = usernameRdr["ReportName"].ToString();
                            AssignTechbox.SelectedValue = usernameRdr["TechUserName"].ToString();
                            UsernameBox2.Text = usernameRdr["ContactUsername"].ToString();
                            EmailBox2.Text = usernameRdr["ContactEmail"].ToString();
                            DescriptionBox2.Text = usernameRdr["ErrorDecription"].ToString();
                            StepsBox2.Text = usernameRdr["ErrorSteps"].ToString();
                            Crashlist.SelectedValue = usernameRdr["ErrorType"].ToString();
                            datecreated.Text = "Date Ticket Created: " + usernameRdr["TicketCreateDate"].ToString();
                            Reportnamelbl.Text = "Editing Report: " + usernameRdr["Id"].ToString();
                        }
                        usernameRdr.Close();

                    }
                    con.Close();//close the connection to sql database

                }//after using the sql database we know if the username and password was entered correctly
            }
        }
        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }
        protected void SubmitReportbtn_Click(object sender, EventArgs e)
        {
            
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Loggedintech = Session["Tech"].ToString();
            string acesscode = Session["verify"].ToString();
            Session["Tech"] = Loggedintech;
            Session["verify"] = acesscode;
            Session["status"] = "Canceled";
            Server.Transfer("~/TechSupportMain.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string Loggedintech = Session["Tech"].ToString();
            string acesscode = Session["verify"].ToString();
            string connStr = ConfigurationManager.ConnectionStrings["PetAPuppyWilliamWrightConnectionString"].ConnectionString;//this allows us to update the sql name to our azure server later on

            using (var con = new SqlConnection(connStr))//when we connect to sql database
            {
                con.Open();//open the connection
             
                var sql3 = "UPDATE [Tickets] SET ReportName = @ReportName,TechUserName = @TechUserName, ContactUsername = @ContactUsername ,ContactEmail = @ContactEmail , ErrorDecription = @ErrorDecription , ErrorSteps = @ErrorSteps, ErrorType = @ErrorType,Queue = @Queue WHERE[Id] = @Id;";

                using (var cmd = new SqlCommand(sql3, con))//build the commmand
                {
                    cmd.Parameters.AddWithValue("@ReportName", ReportNamebox2.Text);
                    cmd.Parameters.AddWithValue("@TechUserName", AssignTechbox.SelectedValue);
                    cmd.Parameters.AddWithValue("@ContactUsername", UsernameBox2.Text);
                    cmd.Parameters.AddWithValue("@ContactEmail", EmailBox2.Text);
                    cmd.Parameters.AddWithValue("@ErrorDecription", DescriptionBox2.Text);
                    cmd.Parameters.AddWithValue("@ErrorSteps", StepsBox2.Text);
                    cmd.Parameters.AddWithValue("@ErrorType", Crashlist.SelectedValue);
                    cmd.Parameters.AddWithValue("@Queue", Priority.SelectedValue);
                    cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(Session["TicketID"].ToString()));
                    int text =  cmd.ExecuteNonQuery();
                    Button2.Text = "" + text;
                    con.Close();//close the connection to sql database
                }
            }//after using the sql database we know if the username and password was entered correctly

            Session["Tech"] = Loggedintech;
            Session["verify"] = acesscode;
            Session["status"] = "Successfully Edited Ticket";
             Server.Transfer("~/TechSupportMain.aspx");//send back to Menu
        }
    }
}