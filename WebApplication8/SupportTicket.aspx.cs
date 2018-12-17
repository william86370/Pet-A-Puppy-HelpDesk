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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SubmitReportbtn_Click(object sender, EventArgs e)
        {
            //first do error checking to make sure that the user put the report in correctly

            //after error checking we can add the value to the SQL DataBase
            string connStr = ConfigurationManager.ConnectionStrings["PetAPuppyWilliamWrightConnectionString"].ConnectionString;//this allows us to update the sql name to our azure server later on
            string sqlreturn;//the return from sql
            using (var con = new SqlConnection(connStr))//when we connect to sql database
            {
                var sql = "EXEC NewTicket @ReportName = @reportadd , @ContactUsername = @contactusernameadd , @ContactEmail= @contactemailadd , @ErrorDecription = @errordescriptionadd , @ErrorSteps = @errorstepsadd , @ErrorType = @errortypeadd, @TicketCreateDate=@ticketcreateadd;";//our qury to add a report to the database
                using (var cmd = new SqlCommand(sql, con))//build the commmand
                {
                    cmd.Parameters.AddWithValue("@reportadd", ReportNamebox.Text);//send username entered
                    cmd.Parameters.AddWithValue("@contactusernameadd", UsernameBox.Text);//send password entered
                    cmd.Parameters.AddWithValue("@contactemailadd", EmailBox.Text);//send password entered
                    cmd.Parameters.AddWithValue("@errordescriptionadd", DescriptionBox.Text);//send password entered
                    cmd.Parameters.AddWithValue("@errorstepsadd", StepsBox.Text);//send password entered
                    cmd.Parameters.AddWithValue("@errortypeadd", Crashlist.SelectedValue.ToString());//send password entered
                    cmd.Parameters.AddWithValue("@ticketcreateadd", DateTime.Today);//send password entered
                    con.Open();//open the connection
                    cmd.ExecuteScalar();//get the request from the server and set the varable from the query
                    con.Close();//close the connection to sql database
                }
            }//after using the sql database we know the report was added suscufally 
             Server.Transfer("~/ReportSubmitRedirect.aspx");//redirect to reportcompleation
        }
    }
}