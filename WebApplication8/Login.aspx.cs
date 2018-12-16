//William Wright
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApplication8
  
{
   
    public partial class WebForm3 : System.Web.UI.Page
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
        //first we declaare our diffrent tests for the fields
        bool usernamegood = false;
        bool passwordgood = false;
        bool factorgood = false;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitbtn_Click(object sender, EventArgs e)
        {
            if( Usernametxtbox.Text.Length >5&& Usernametxtbox.Text.Length <10)//check for username requirements adding more later
            {
                usernamegood = true;
                usernameerrorlbl.Visible = false;
            }
            else
            {
                usernameerrorlbl.Visible = true;
            }
            if(Passwordtxtbox.Text.Length >8)//check for password requirements adding more later only 8 right now
            {
                passwordgood = true;
                passworderrorlbl.Visible = false;
            }
            else
            {
                passworderrorlbl.Visible = true;
            }
            if (factortext.Text != "")//check for 2-factor requirements adding this later :)
            {
                factorgood = true;
                factorerrorlbl.Visible = false;
            }
            else {
                factorerrorlbl.Visible = true;
            }

            //alot has happended since the begining of the year i know alot more then i did then about azure 
            //now that i can have the project in my dev team for azure i can release live builds on the fly to the website where this will be hosted
            //the azure website will build with a custom sql server running on my server for this project for now i will leave the file included
            //https://petapuppyhelpdesk20181215015755.azurewebsites.net/Login.aspx
            if (passwordgood == true && usernamegood == true)
            { 
                string connStr = ConfigurationManager.ConnectionStrings["PetAPuppy"].ConnectionString;//this allows us to update the sql name to our azure server later on
                string usernamereturn;//the username from sql
                using (var con = new SqlConnection(connStr))//when we connect to sql database
                {
                    var sql = "SELECT [UserName] FROM [tblUsers] WHERE (([Password] = @Password) AND ([UserName] = @UserName))";//our qury
                    using (var cmd = new SqlCommand(sql, con))//build the commmand
                    {
                        cmd.Parameters.AddWithValue("@UserName", Usernametxtbox.Text);//send username entered
                        cmd.Parameters.AddWithValue("@Password", Passwordtxtbox.Text);//send password entered
                        con.Open();//open the connection
                        usernamereturn = (string)cmd.ExecuteScalar();//get the request from the server and set the varable from the query
                        con.Close();//close the connection to sql database
                    }
                }//after using the sql database we know if the username and password was entered correctly
                if (usernamereturn == null)//if the username is null
                {
                    Globalerror.Text = "Invalid login, Please Try Again";
                    Globalerror.Visible = true;//the user trying to login didnt exist in the database
                    Usernametxtbox.Text = "";//set the username box empty
                    Passwordtxtbox.Text = "";//set the passowrd box empty
                    factorerrorlbl.Visible = false;
                    passworderrorlbl.Visible = false;
                    usernameerrorlbl.Visible = false;
                }
                else//if it contains a user
                { 
                    Globalerror.Visible = true;//the user existed so we show that
                    Globalerror.Text = usernamereturn;//this is for testing

                    Session["user"] = usernamereturn;
                    Server.Transfer("~/Loggedin.aspx");

                }




            }


        }
    }
}