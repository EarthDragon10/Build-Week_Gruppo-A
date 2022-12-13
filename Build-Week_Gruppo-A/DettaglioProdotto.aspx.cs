﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Build_Week_Gruppo_A
{
    public partial class DettaglioProdotto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string id = Request.QueryString["Id"];

            foreach (Prodotto item in Prodotto.ListaProdotti)
            {
                if( Convert.ToInt32(id) == item.ID_Prodotto)
                {
                    Image1.ImageUrl = "./img/" + item.URLImg ;
                    Nome.Text = item.Marca + item.Modello;
                    Descrizione.Text = item.Descrizione;
                    Prezzo.Text = item.PrezzoVendita.ToString("c2");
                }
            }
        }
        protected void AddProduct_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["Id"];


            foreach (Prodotto a in Prodotto.ListaProdotti)
            {
                if (a.ID_Prodotto == Convert.ToInt32(id))
                {
                    Prodotto.CarrelloUtente.Add(a);
                    
                }
            }
        }

    }
}