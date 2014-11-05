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
    public partial class Formulario_web15 : System.Web.UI.Page
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
        protected void Button3_Click(object sender, EventArgs e)
        {
            CatalogProduct cp = new CatalogProduct();
            cp.addProduct(new Producto(this.tbName.Text));
            CleanControl(this.Controls);
            this.lbAdd.Text = "Producto Agregado Exitosamente";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (this.tbName.Text == "")
            {
                CatalogProduct cp = new CatalogProduct();
                DataSet ds = cp.listProduct();
                this.gvSearch0.DataSource = ds;
                DataBind();
                CleanControl(this.Controls);
                this.lbSearch0.Text = "";
            }
            else
            {

                CatalogProduct cp = new CatalogProduct();
                List<Producto> lp = cp.getProductName(tbName.Text);
                this.gvSearch.DataSource = lp;
                DataBind();
                CleanControl(this.Controls);
                this.lbSearch0.Text = "";
                if(lp.Count==0)
                {
                    this.lbSearch0.Text = "No se encontraron resultados para su busqueda";
                    this.CleanControl(this.Controls);
                } 
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (this.tbSearchCod.Text == "")
            {
                CatalogProduct cp = new CatalogProduct();
                DataSet ds = cp.listProduct();
                this.gvSearch0.DataSource = ds;
                DataBind();
                CleanControl(this.Controls);
                this.lbSearch.Text = "";
            }
            else
            {
                CatalogProduct cp = new CatalogProduct();
                List<Producto> lp = cp.getProductCode(Int32.Parse(tbSearchCod.Text));
                this.gvSearch.DataSource = lp;
                DataBind();
                CleanControl(this.Controls);
                this.lbSearch.Text = "";
                if (lp.Count == 0)
                {
                    this.lbSearch.Text = "No se encontraron resultados para su busqueda";
                    this.CleanControl(this.Controls);
                } 
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            CatalogProduct cp = new CatalogProduct();
            cp.dropProduct(new Producto(Int32.Parse(tbCodDrop.Text)));
            CleanControl(this.Controls);
            this.lbDrop.Text = "Producto Eliminado";
        }
    }
}