using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Build_Week_Gruppo_A
{
    public partial class Navbar_Footer : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Categoria.Categorie.Clear();
                SqlConnection connessioneDB = new SqlConnection();
                connessioneDB.ConnectionString = ConfigurationManager.ConnectionStrings["ConnessioneDB_Musicalita"].ToString();
                connessioneDB.Open();

                SqlCommand command = new SqlCommand();
                command.CommandText = "SELECT * FROM Categoria";
                command.Connection = connessioneDB;

                SqlDataReader reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {                        
                        Categoria cat = new Categoria();
                        cat.ID_Categoria = Convert.ToInt32(reader["ID_Categoria"].ToString());
                        cat.Tipologia = reader["Tipologia"].ToString();
                        Categoria.Categorie.Add(cat);

                    }
                }

                Repeater_NavbarCategorie.DataSource = Categoria.Categorie;
                Repeater_NavbarCategorie.DataBind();
                
                connessioneDB.Close();
            }
        }

        protected void Button_CercaChitarra_Click(object sender, EventArgs e)
        {
            string url = $"BarraDiRicerca.aspx?Marca={TextBox_CercaChitarra.Text}";
            Response.Redirect(url);
        }
    }
}