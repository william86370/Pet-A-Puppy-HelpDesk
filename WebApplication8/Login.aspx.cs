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
        //first we declaare our diffrent tests for the fields
        bool usernamegood = false;
        bool passwordgood = false;
        bool factorgood = false;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitbtn_Click(object sender, EventArgs e)
        {
            if(Usernametxtbox.Text != "")//check for username requirements adding more later
            {
                usernamegood = true;
                usernameerrorlbl.Visible = false;
            }
            else
            {
                usernameerrorlbl.Visible = true;
            }
            if(Passwordtxtbox.Text != "")//check for password requirements adding more later
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
            
            if (passwordgood == true && usernamegood == true)
            { 
                string connStr = ConfigurationManager.ConnectionStrings["PetAPuppy"].ConnectionString;
                string usernamereturn;
                using (var con = new SqlConnection(connStr))
                {
                    var sql = "SELECT [UserName] FROM [tblUsers] WHERE (([Password] = @Password) AND ([UserName] = @UserName))";//our qury
                    using (var cmd = new SqlCommand(sql, con))
                    {
                        cmd.Parameters.AddWithValue("@UserName", Usernametxtbox.Text);//send username entered
                        cmd.Parameters.AddWithValue("@Password", Passwordtxtbox.Text);//send password entered
                        con.Open();//open the connection
                        usernamereturn = (string)cmd.ExecuteScalar();//get the request from the server and set the varable from the query
                        con.Close();//close the connection to sql database
                    }
                }//after using the sql database we know if the username and password was entered correctly
                if (usernamereturn == null)
                {
                    Globalerror.Visible = true;//the user trying to login didnt exist in the database
                    Usernametxtbox.Text = "";//set the username box empty
                    Passwordtxtbox.Text = "";//set the passowrd box empty
                    factorerrorlbl.Visible = false;
                    passworderrorlbl.Visible = false;
                    usernameerrorlbl.Visible = false;
                }
                else
                {
                    Globalerror.Text = "Invalid login, Please Try Again";
                    Globalerror.Visible = true;//the user existed so we show that
                    Globalerror.Text = usernamereturn;//this is for testing
                }




            }


        }
    }
}