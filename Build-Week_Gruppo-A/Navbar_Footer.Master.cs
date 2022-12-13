using System;
using System.Collections.Generic;
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

        }

        protected void SelectCategory(object sender, EventArgs e) {
            prova.Text = "Funziona";
        }

        protected void IdCategoria_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProdottiPerCategoria.aspx?IdCategoria=1");
        }
    }
}