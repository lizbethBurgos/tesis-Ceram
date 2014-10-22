using System;
using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessRules;

namespace WebCeram
{
    public partial class Formulario_web1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CatalogUsuario cu = new CatalogUsuario();
            cu.InsertUser(new Usuario(tbInsertName.Text, tbLastName.Text, tbInsertPosi.Text, tbInsertPass.Text, tbInsertEmail.Text, tbInsertSecurity.Text));
            this.lRegister.Text="Usuario Agregado";
            if (!Page.IsPostBack)
            {
                clearcontrol();
            }
        }
        /**
         * Método que limpia los cmapos de la página de registro del usuario.
         * **/
        public void clearcontrol()
        {
            this.tbInsertEmail.Text = "";
            this.tbInsertName.Text = "";
            this.tbInsertPass.Text = "";
            this.tbInsertPosi.Text = "";
            this.tbInsertSecurity.Text = "";
            this.tbLastName.Text = "";
            this.tbRepitPass.Text = "";
        }
    }
}