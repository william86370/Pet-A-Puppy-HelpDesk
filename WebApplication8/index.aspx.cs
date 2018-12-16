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
    public partial class WebForm2 : System.Web.UI.Page
    {
        //first we define our bool for checking if username and passwords meet requirements 
        bool usernamegood = false;//for username
        bool passwordgood = false;//for password
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)//when the user clicks the login button on the index page we act as its an acual login so perform same values
        {//first we check for correct password length then the sql query to send to the azure database
            if (UsernameBox.Text.Length > 5 && UsernameBox.Text.Length < 20) { //check for username requirements
                usernamegood = true;//username is Good
                Usernameerrorlbl.Visible = false;//get rid of the error
            } else {
                Usernameerrorlbl.Visible = true;//show the user the error
            }
            if (PasswordBox.Text.Length > 2) { //check for password requirements
                passwordgood = true;//password passes check
                PasswordErrorlbl.Visible = false;//clear user error
            } else {
                PasswordErrorlbl.Visible = true;//show user error
            }
            if (passwordgood == true && usernamegood == true)
            {
                string connStr = ConfigurationManager.ConnectionStrings["PetAPuppy"].ConnectionString;//this allows us to update the sql name to our azure server later on
                string usernamereturn;//the username from sql
                using (var con = new SqlConnection(connStr))//when we connect to sql database
                {
                    var sql = "EXEC TechLoginTest @TechUsername=@UserName, @TechPassword=@Password;";//our qury to exec a login test
                    using (var cmd = new SqlCommand(sql, con))//build the commmand
                    {
                        cmd.Parameters.AddWithValue("@UserName", UsernameBox.Text);//send username entered
                        cmd.Parameters.AddWithValue("@Password", PasswordBox.Text);//send password entered
                        con.Open();//open the connection
                        usernamereturn = (string)cmd.ExecuteScalar();//get the request from the server and set the varable from the query
                        con.Close();//close the connection to sql database
                    }
                }//after using the sql database we know if the username and password was entered correctly
                if (usernamereturn == null)//if the username is null
                {
                    Loginerrorlbl.Text = "Invalid login, Please Try Again";
                    Loginerrorlbl.Visible = true;//the user trying to login didnt exist in the database
                    UsernameBox.Text = "";//set the username box empty
                    PasswordBox.Text = "";//set the passowrd box empty
                    PasswordErrorlbl.Visible = false;
                    Usernameerrorlbl.Visible = false;
                }
                else//if it contains a user
                {
                    Loginerrorlbl.Visible = true;//the user existed so we show that
                    Loginerrorlbl.Text = usernamereturn;//this is for testing
                    Session["user"] = usernamereturn;//store the users username in storage for the next page
                    Session["TransferKey"] = "8637007368";//this key is used to verify that the person requesting the page isnt trying to hack into the system
                    Server.Transfer("~/TechSupportMain.aspx");//transfer to Tech Support Main Page

                }
            }
        }
    }
}