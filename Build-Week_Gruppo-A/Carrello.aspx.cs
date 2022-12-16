using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Build_Week_Gruppo_A
{
    public partial class Carrello : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            


            if(!IsPostBack)
            {


                if (Prodotto.CarrelloUtente.Count() == 0) 
                {
                    Delete.Visible = false;
                    lblEmptyCart.Visible = true;
                    lblTotCarrello.Text = 0.ToString("c2");
                } 
                else { 
                   
                    Delete.Visible = true; 
                    lblEmptyCart.Visible = false; 

                    decimal Tot = 0;


                    foreach (Prodotto item in Prodotto.CarrelloUtente)
                    {
                        Tot += item.PrezzoVendita;
                    }


                    lblTotCarrello.Text = Tot.ToString("c2");

                    //int totQuantitaProdotti = 0;
                    //for (int i = 0; i < Prodotto.CarrelloUtente.Count; i++)
                    //{
                    //    for (int j = 0; j < Prodotto.CarrelloUtente.Count; j++)
                    //    {
                    //        if (Prodotto.CarrelloUtente[i].ID_Prodotto == Prodotto.CarrelloUtente[j].ID_Prodotto)
                    //        {
                    //            totQuantitaProdotti++;
                    //            Prodotto.CarrelloUtente[i].Quantità = totQuantitaProdotti;
                    //        }
                    //    }
                    //}
                }
                GridCarrello.DataSource = Prodotto.CarrelloUtente;
                GridCarrello.DataBind();
                
            }
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            
            Prodotto.CarrelloUtente.Clear();
            Response.Redirect("~/Carrello.aspx");
       
        }

        protected void Button_EffettuaOrdine_Click(object sender, EventArgs e)
        {

            if (Request.Cookies["Utente_Loggato"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                SqlConnection connessioneDB = new SqlConnection();
                connessioneDB.ConnectionString = ConfigurationManager.ConnectionStrings["ConnessioneDB_Musicalita"].ToString();
                connessioneDB.Open();

                SqlCommand command = new SqlCommand();

                decimal Tot = 0;


                foreach (Prodotto item in Prodotto.CarrelloUtente)
                {
                    Tot += item.PrezzoVendita;
                }




                command.Parameters.AddWithValue("@ID_Utente", Request.Cookies["Utente_Loggato"]["ID_Utente"]);
                command.Parameters.AddWithValue("@DataOrdine", DateTime.Now.Date);

                command.Parameters.AddWithValue("@TotaleOrdine", Tot);
                command.CommandText = "INSERT INTO Ordine VALUES (@ID_Utente, @DataOrdine, @TotaleOrdine)";
                command.Connection = connessioneDB;

                int righeInteressate = command.ExecuteNonQuery();

                if (righeInteressate > 0)
                {
                    Prodotto.CarrelloUtente.Clear();
                    GridCarrello.DataSource = Prodotto.CarrelloUtente;
                    GridCarrello.DataBind();
                    //Label_RigheInteressate.Text = "Inserimento effettuato sul cesso.";
                }
                else
                {

                    //Label_RigheInteressate.Text = "Hai cagato fuori dal vaso.";
                }

                connessioneDB.Close();


            }
        }
    }
}