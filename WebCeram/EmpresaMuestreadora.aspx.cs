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
    public partial class Formulario_web14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btAgregar_Click(object sender, EventArgs e)
        {
            CatalogSamplerCompany cs = new CatalogSamplerCompany();
            cs.InsertUser(new SamplerCompany(tbName.Text, tbDireccion.Text, Int32.Parse(tbFono.Text), tbEmail.Text));
            this.labelAgregar.Text = "Empresa Agregada";
            //Cuando se llama el método limpiar se pasa como parámetro 
            //la colección de controles de la página Web.
            CleanControl(this.Controls);

        }

        protected void btBuscar_Click(object sender, EventArgs e)
        {
            if (this.tbNameSearch.Text == "")
            {
                CatalogSamplerCompany csc = new CatalogSamplerCompany();
                DataSet ds = csc.listSamplerCompany();
                this.GridView1.DataSource = ds;
                DataBind();
                this.CleanControl(this.Controls);
                this.labelNamSearch0.Text = "";
            }
            else
            {
                CatalogSamplerCompany csc = new CatalogSamplerCompany();
                List<SamplerCompany> lcs = csc.getSamplerCompanyName(this.tbNameSearch.Text);
                this.gvSearch.DataSource = lcs;
                DataBind();
                this.CleanControl(this.Controls);
                this.labelNamSearch0.Text = "";
                if (lcs.Count == 0)
                {
                    this.labelNamSearch0.Text = "No se encontraron resultados para su busqueda";
                    this.CleanControl(this.Controls);
                } 
            }
        }

        protected void btBuscarCode_Click(object sender, EventArgs e)
        {
            if (this.tbCode.Text == "")
            {
                CatalogSamplerCompany csc = new CatalogSamplerCompany();
                DataSet ds = csc.listSamplerCompany();
                this.GridView1.DataSource = ds;
                DataBind();
                this.CleanControl(this.Controls);
                this.labelCodSearch.Text = "";
            }
            else
            {
                CatalogSamplerCompany csc = new CatalogSamplerCompany();
                List<SamplerCompany> lcs = csc.getSamplerCompanyCode(Int32.Parse(this.tbCode.Text));
                this.gvSearch.DataSource = lcs;
                DataBind();
                this.CleanControl(this.Controls);
                this.labelCodSearch.Text = "";
                if (lcs.Count == 0)
                {
                    this.labelCodSearch.Text = "No se encontraron resultados para su busqueda";
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

        protected void btEliminar_Click(object sender, EventArgs e)
        {
            CatalogSamplerCompany csc = new CatalogSamplerCompany();
            csc.dropUser(new SamplerCompany(Int32.Parse(this.tbCodeDrop.Text)));
            this.labelEliminar.Text = "Empresa Eliminada";
            CleanControl(this.Controls);
        }

        protected void gridvie1_selectedIndexChange(object sender, EventArgs e)
        {
            int selected= this.GridView1.SelectedIndex;
            this.tbName.Text = Convert.ToString(this.GridView1.Rows[selected].Cells[1].Text);
        }
    }
}