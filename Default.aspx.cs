using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //IMPORTANTE. Cuando se lee una variable de sesión
        //hay que realizar una conversión de tipos (casting) al tipo del valor que almacena
        //en este caso es un boolean por esto se hace (bool) delante de la variable de sesion

        if ((Session["logado"] == null) || ((bool)Session["logado"] == false))
        {
            Response.Redirect("Default.aspx");
            //Response.Write("Cantidad de aplicaciones instanciadas " + Application["Aplicaciones"] + "<br/>");
            //Response.Write("Cantidad de sesiones de usuario " + Application["SesionesUsuarios"] + "<br/>");
        }
    }   
}
