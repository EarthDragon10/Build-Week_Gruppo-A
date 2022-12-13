using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Build_Week_Gruppo_A.admin
{
    public partial class ListaProdotti : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connessioneDB = new SqlConnection();
            connessioneDB.ConnectionString = ConfigurationManager.ConnectionStrings["ConnessioneDB_Musicalita"].ToString();
            try
            {
                connessioneDB.Open();

                SqlDataAdapter sqlDataGrid = new SqlDataAdapter(@"SELECT Marca, Modello, PrezzoVendita, InPromozione, Tipologia FROM Prodotto
                                                                INNER JOIN
                                                                Categoria ON
                                                                Prodotto.ID_Categoria = Categoria.ID_Categoria", connessioneDB);

                DataTable prodottiTable = new DataTable();
                sqlDataGrid.Fill(prodottiTable);

                GridView_ListaProdotti.DataSource = prodottiTable;
                GridView_ListaProdotti.DataBind();
            }
            catch { }

            

            connessioneDB.Close();

    


        }

    

        protected void Button_EliminaProdotto_Click(object sender, EventArgs e)
        {

        }
    }
}