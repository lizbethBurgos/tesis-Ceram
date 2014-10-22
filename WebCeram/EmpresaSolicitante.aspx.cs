using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessRules;
using System.Data;

namespace WebCeram
{
    public partial class Formulario_web11 : System.Web.UI.Page
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

        protected void btAgregar_Click(object sender, EventArgs e)
        {
            CatalogApplicantCompany cac = new CatalogApplicantCompany();
            cac.addApplicant(new ApplicantCompany(tbName.Text,tbEmail.Text,tbDireccion.Text,Int32.Parse(tbFono.Text)));
            this.CleanControl(this.Controls);
            this.labelAgregar.Text = "Empresa Agregada Exitosamente";
        }

        protected void btBuscar_Click(object sender, EventArgs e)
        {
            if (tbNameSearch.Text == "")
            {
                CatalogApplicantCompany cac = new CatalogApplicantCompany();
                DataSet ds = cac.listApplicantCompany();
                this.gvSearch.DataSource = ds;
                DataBind();
                this.lbSearchName.Text = "";
                this.lbSearchCod.Text = "";
                CleanControl(this.Controls);
            }
            else
            {
                CatalogApplicantCompany cac = new CatalogApplicantCompany();
                List<ApplicantCompany> lac = cac.getApplicantCompanyName(tbNameSearch.Text);
                this.gvSearch0.DataSource = lac;
                DataBind();
                this.lbSearchName.Text = "";
                this.lbSearchCod.Text = "";
                this.CleanControl(this.Controls);
                if (lac.Count == 0)
                {
                    this.lbSearchName.Text = "No se encontraron resultados para su busqueda";
                    this.CleanControl(this.Controls);
                } 
            }
        }
        protected void btBuscarCode_Click(object sender, EventArgs e)
        {
            if (this.tbCode.Text == "")
            {
                CatalogApplicantCompany cac = new CatalogApplicantCompany();
                DataSet ds = cac.listApplicantCompany();
                this.gvSearch.DataSource = ds;
                DataBind();
                this.lbSearchCod.Text = "";
                this.lbSearchName.Text = "";
                CleanControl(this.Controls);
            }
            else
            {
                CatalogApplicantCompany cac = new CatalogApplicantCompany();
                List<ApplicantCompany> lac = cac.getApplicantCompanyCode(Int32.Parse(tbCode.Text));
                this.gvSearch0.DataSource = lac;
                DataBind();
                this.lbSearchCod.Text = "";
                this.lbSearchName.Text = "";
                this.CleanControl(this.Controls);
                if (lac.Count == 0)
                {
                    this.lbSearchCod.Text = "No se encontraron resultados para su busqueda";
                    this.CleanControl(this.Controls);
                } 
            }
        }

        protected void btEliminar_Click(object sender, EventArgs e)
        {
            CatalogApplicantCompany cac = new CatalogApplicantCompany();
            cac.dropUser(new ApplicantCompany(Int32.Parse(tbCodeDrop.Text)));
            this.labelEliminar.Text = "Empresa Eliminada";
            CleanControl(this.Controls);
        }
    }
}