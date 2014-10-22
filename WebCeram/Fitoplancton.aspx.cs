using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessRules;

namespace WebCeram
{
    public partial class Formulario_web16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Función que permite limpiar todos los controles de una página Web
        //recursivamente. Útil cuando en la página existen varios controles
        //evita tener que limpiar uno por uno. 
        public void CleanControl(ControlCollection controles)
        {
            foreach (Control control in controles)
            {
                if (control is TextBox)
                    ((TextBox)control).Text = string.Empty;
                else if (control.HasControls())
                    //Esta linea detécta un Control que contenga otros Controles
                    //Así ningún control se quedará sin ser limpiado.
                    CleanControl(control.Controls);
            }
        }
        protected void btAddCell_Click(object sender, EventArgs e)
        {
            CatalogFitoplancton cf = new CatalogFitoplancton();
            cf.addFitoplancton(new Fitoplancton(tbName.Text));
            CleanControl(this.Controls);
            this.lbAdd.Text = "Especie Agregada";
        }

        protected void btSearchName_Click(object sender, EventArgs e)
        {
            CatalogFitoplancton cf = new CatalogFitoplancton();
            List<Fitoplancton> lf = cf.getCellName(tbName.Text);
            this.gvSearchCell.DataSource = lf;
            DataBind();
        }

        protected void btSearchCode_Click(object sender, EventArgs e)
        {
            CatalogFitoplancton cf = new CatalogFitoplancton();
            List<Fitoplancton> lf = cf.getCellCode(Int32.Parse(tbCodeSearch.Text));
            this.gvSearchCell.DataSource = lf;
            DataBind();
        }

        protected void btDrop_Click(object sender, EventArgs e)
        {
            CatalogFitoplancton cf = new CatalogFitoplancton();
            cf.dropFitoplancton(new Fitoplancton(Int32.Parse(tbCodeDrop.Text)));
            CleanControl(this.Controls);
            this.lbDrop.Text = "Especie Eliminada";
        }

    }
}