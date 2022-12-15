using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Build_Week_Gruppo_A
{
    public partial class DettagliUtente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connessioneDB = new SqlConnection();
            connessioneDB.ConnectionString = ConfigurationManager.ConnectionStrings["ConnessioneDB_Musicalita"].ToString();
            connessioneDB.Open();

            SqlCommand command = new SqlCommand();
            string ID_Utente = Request.Cookies["Utente_Loggato"]["ID_Utente"];
            command.Parameters.AddWithValue("@ID_Utente", ID_Utente);
            command.CommandText = "SELECT * FROM Utente WHERE ID_Utente = @ID_Utente";
            command.Connection = connessioneDB;

            SqlDataReader reader = command.ExecuteReader();


            if (reader.HasRows)
            {
                while (reader.Read()) { 
                    Label_NomeCognome.Text = reader["Nome"].ToString() + " " + reader["Cognome"].ToString();
                    Label_Username.Text = reader["Username"].ToString();
                    Label_Email.Text = reader["Email"].ToString();

                }
            } else
            {

            }

            connessioneDB.Close();
        }

        protected void LinkButton_Logout_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            HttpCookie LogoutCookie = new HttpCookie("Utente_Loggato");
            LogoutCookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(LogoutCookie);
            Response.Redirect("~/Default.aspx");
        }
    }
}