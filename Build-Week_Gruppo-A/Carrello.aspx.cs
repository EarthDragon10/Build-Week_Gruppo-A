using System;
using System.Collections.Generic;
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
                if(Prodotto.CarrelloUtente.Count != 0)
                {

                    double Tot = 0;

                    foreach (Prodotto item in Prodotto.CarrelloUtente)
                    {
                        Tot += item.PrezzoVendita;
                    }

                    lblTotCarrello.Text = Tot.ToString("c2");
                }
                GridCarrello.DataSource = Prodotto.CarrelloUtente;
                GridCarrello.DataBind();
                
            }
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            GridCarrello.Visible = false;
            Delete.Visible = false;
            Prodotto.ListaProdotti.Clear();

            lblTotCarrello.Text = 0.ToString("c2");
            lblEmptyCart.Text = $" <a href=\"Default.aspx\">Il tuo carrello è vuoto... Torna alla pagina prodotti</a><hr />";
        }
    }
}