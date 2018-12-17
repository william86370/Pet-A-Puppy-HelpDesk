using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace PetaPuppy
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitReportbtn_Click(object sender, EventArgs e)
        {
            int ticketID = (int)Session["TicketID"];
            string Loggedintech = Session["Tech"].ToString();
            string acesscode = Session["verify"].ToString();
            string connStr = ConfigurationManager.ConnectionStrings["PetAPuppy"].ConnectionString;//this allows us to update the sql name to our azure server later on
            string usernamereturn;//the username from sql
            using (var con = new SqlConnection(connStr))//when we connect to sql database
            {
                var sql = "UPDATE [Tickets] SET TechUserName = @techusername,ContactUsername =@ContactUsername,ContactEmail=@ContactEmail ,ErrorDecription =@ErrorDecription ,ErrorSteps = @ErrorSteps ,ErrorType = @ErrorType,TicketCreateDate=@TicketEditDate WHERE Id = @ReportName;";//our qury
                using (var cmd = new SqlCommand(sql, con))//build the commmand
                {
                    cmd.Parameters.AddWithValue("@ReportName", ticketID);//send username entered
                    cmd.Parameters.AddWithValue("@techusername", AssignTechbox.Text);
                    cmd.Parameters.AddWithValue("@ContactUsername", UsernameBox.Text);
                    cmd.Parameters.AddWithValue("@ErrorDecription", DescriptionBox.Text);
                    cmd.Parameters.AddWithValue("@ErrorSteps", StepsBox.Text);
                    cmd.Parameters.AddWithValue("@ErrorType", Crashlist.SelectedIndex.ToString());
                    cmd.Parameters.AddWithValue("@TicketEditDate", System.DateTime.Now.ToString());
                    cmd.Parameters.AddWithValue("@ContactEmail", EmailBox.Text);
                    con.Open();//open the connection
                    usernamereturn = (string)cmd.ExecuteScalar();//get the request from the server and set the varable from the query
                    con.Close();//close the connection to sql database
                }
            }//after using the sql database we know if the username and password was entered correctly

                Session["Tech"] = Loggedintech;
                Session["verify"] = acesscode;
                Session["status"] = "Successfully Edited Ticket";
                Server.Transfer("~/TechSupportMain.aspx");

            
        }
    }
}