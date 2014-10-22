using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessRules;

namespace WebCeram
{
    public partial class Formulario_web13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CatalogUsuario cu = new CatalogUsuario();
            cu.dropUser(new Usuario(Convert.ToInt32(tbInsertName.Text), tbInsertPass.Text));
        }
    }
}