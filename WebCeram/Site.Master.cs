using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCeram
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ok"] != null)
            {
                if ((Boolean)Session["ok"] == false)
                {
                    Response.Redirect("Sesion.aspx");
                    this.Label1.Text = "";
                    this.LinkButton1.Text = "";
                }
                else
                {
                    this.Label1.Text = "Bienvenido";
                    this.LinkButton1.Text = "Cerrar Sesion ";
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sesion.aspx");
            this.Label1.Text = " ";
            this.LinkButton1.Text = " ";
            Session.Abandon();
            
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

        }
    }
}
