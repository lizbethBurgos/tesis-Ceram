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
    public partial class Formulario_web17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            this.lbFechaIngr.Text = DateTime.Today.ToShortDateString();
            this.lbTimeIngre.Text = DateTime.Now.ToShortTimeString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
        protected void btnCerrar_Click(object sender, EventArgs e)
        {
            ModalPopupExtender2.Hide();
        }
       
        protected void btnClose_Click(object sender, EventArgs e)
        {
            ModalPopupExtender1.Hide();
        }
        protected void btBuscar_Click(object sender, EventArgs e)
        {
            if (this.tbNameSearch.Text == "")
            {
                CatalogApplicantCompany cac = new CatalogApplicantCompany();
                DataSet ds = cac.listApplicantCompany();
                this.gvSearch.DataSource = ds;
                DataBind();
                this.CleanControl(this.Controls);
            }
            else
            {
                CatalogApplicantCompany cac = new CatalogApplicantCompany();
                List<ApplicantCompany> lac = cac.getApplicantCompanyName(this.tbNameSearch.Text);
                this.gvSearch0.DataSource = lac;
                DataBind();
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
               this.CleanControl(this.Controls);
            }
            else
            {
                CatalogApplicantCompany cac = new CatalogApplicantCompany();
                List<ApplicantCompany> lac= cac.getApplicantCompanyCode(Int32.Parse(tbCode.Text));
                this.gvSearch0.DataSource = lac;
                DataBind();
               this.CleanControl(this.Controls);

                if (lac.Count == 0)
                {
                    this.lbSearchCod.Text = "No se encontraron resultados para su busqueda";
                   this.CleanControl(this.Controls);
                }
            }
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

        protected void btnPopUp_Click1(object sender, EventArgs e)
        {
            this.ModalPopupExtender1.Show();
        }
        protected void btnPopUPMuestrea_Click1(object sender, EventArgs e)
        {
            this.ModalPopupExtender2.Show();
        }
        
        protected void btBuscarName_Click(object sender, EventArgs e)
        {
            if (this.TextBox1.Text == "")
            {
                CatalogSamplerCompany csc = new CatalogSamplerCompany();
                DataSet ds = csc.listSamplerCompany();
                this.GridView1.DataSource = ds;
                DataBind();
                this.CleanControl(this.Controls);
            }
            else
            {
                CatalogSamplerCompany csc = new CatalogSamplerCompany();
                List<SamplerCompany> lcs = csc.getSamplerCompanyName(this.TextBox1.Text);
                this.GridView2.DataSource = lcs;
                DataBind();
                this.CleanControl(this.Controls);
                if (lcs.Count == 0)
                {
                    this.labelNamSearch0.Text = "No se encontraron resultados para su busqueda";
                    this.CleanControl(this.Controls);
                }
            }
        }

        protected void btBuscarCodeMue_Click(object sender, EventArgs e)
        {
            if (this.TextBox2.Text == "")
            {
                CatalogSamplerCompany csc = new CatalogSamplerCompany();
                DataSet ds = csc.listSamplerCompany();
                this.GridView1.DataSource = ds;
                DataBind();
                this.CleanControl(this.Controls);
            }
            else
            {
                CatalogSamplerCompany csc = new CatalogSamplerCompany();
                List<SamplerCompany> lcs = csc.getSamplerCompanyCode(Int32.Parse(this.TextBox2.Text));
                this.GridView2.DataSource = lcs;
                DataBind();
                this.CleanControl(this.Controls);

                if (lcs.Count == 0)
                {
                    this.labelCodSearch.Text = "No se encontraron resultados para su busqueda";
                    this.CleanControl(this.Controls);
                }
            }
        }
    }
}