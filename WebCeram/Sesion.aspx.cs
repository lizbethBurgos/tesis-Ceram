using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessRules;


namespace WebCeram
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bSesion_Click(object sender, EventArgs e)
        {
            CatalogUsuario cu = new CatalogUsuario();
            Session["ok"] = cu.Validate(new Usuario(this.tbName.Text, this.tbPass.Text));
            if ((bool)Session["ok"] == true)
            {
                Response.Redirect("Inicio.aspx");
            }
            else
            {
                this.lSesion.Text = "Email o Contraseña Incorrectos";
                Session["ok"] = false;
                Response.Redirect("Sesion.aspx");
            }
        }
    }
}
