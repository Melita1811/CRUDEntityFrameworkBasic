using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((Session["logado"] == null) || ((bool)Session["logado"] == false))
        {
            Response.Redirect("Login.aspx");
            //Response.Write("Cantidad de aplicaciones instanciadas " + Application["Aplicaciones"] + "<br/>");
            //Response.Write("Cantidad de sesiones de usuario " + Application["SesionesUsuarios"] + "<br/>");
        }
        else
        {
            if ((int)Session["tipo"] == 0) //-- 0 Administrador
            {
                linkproductos.Visible = true;
                linkproveedorer.Visible = true;
                linkcliente.Visible = false;
                linkusuarios.Visible = true;
            }
            else // -- 1 cajero
            {
                linkproductos.Visible = false;
                linkproveedorer.Visible = false;
                linkcliente.Visible = true;
                linkusuarios.Visible = false;
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }
    protected void btnSalir_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");//redireccionamos a otra web
    }
}
