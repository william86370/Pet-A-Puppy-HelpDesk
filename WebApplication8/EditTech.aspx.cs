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
    public partial class WebForm7 : System.Web.UI.Page
    {
        bool edit;
        string usertoedit;
        protected void Page_Load(object sender, EventArgs e)
        {
            edit = (bool)Session["tce"];
            
            if (edit == true)
            {
                usertoedit = Session["techtoedit"].ToString();
                TextBox1.Text = usertoedit;
                TextBox1.ReadOnly = true;
                create.Visible = true;
                editlbl.Visible = false;
            }
            else
            {
                create.Visible = false;
                editlbl.Visible = true;
            }
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["PetAPuppy"].ConnectionString;//this allows us to update the sql name to our azure server later on
            string usernamereturn;//the username from sql
            using (var con = new SqlConnection(connStr))//when we connect to sql database
            {
                string sql;
                if (edit == true)
                {
                    sql = "UPDATE [Users] SET TechPassword=@pass,CreateDate=@date WHERE TechUserName = @user;";//our qury
                }
                else
                {
                    sql = "INSERT INTO [Users] ([TechUserName],[TechPassword],[CreateDate]) values (@user,@pass,@date);";//our qury
                }
                 
                using (var cmd = new SqlCommand(sql, con))//build the commmand
                {
                    cmd.Parameters.AddWithValue("@user", TextBox1.Text);//send username entered
                    cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@date", System.DateTime.Now.ToString());
                    con.Open();//open the connection
                    usernamereturn = (string)cmd.ExecuteScalar();//get the request from the server and set the varable from the query
                    con.Close();//close the connection to sql database
                }
            }//after using the sql database we know if the username and password was entered correctly

            Session["status"] = "Successfully Edited Users";
            Server.Transfer("~/TechSupportMain.aspx");
           
        }
    }
}