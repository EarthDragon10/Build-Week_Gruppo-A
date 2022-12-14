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


                if (Prodotto.CarrelloUtente.Count() == 0) 
                {
                    Delete.Visible = false;
                    lblEmptyCart.Visible = true;
                    lblTotCarrello.Text = 0.ToString("c2");
                } 
                else { 
                    Delete.Visible = true; 
                    lblEmptyCart.Visible = false; 
                }


                if (Prodotto.CarrelloUtente.Count != 0)
                {

                    decimal Tot = 0;

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
            
            Prodotto.CarrelloUtente.Clear();
            Response.Redirect("~/Carrello.aspx");
       
        }
    }
}