using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMensaje.Visible = false;
    }
    protected void btnIngresar_Click(object sender, EventArgs e)
    {
        lblMensaje.Visible = false;
        string nombre = txtUsuario.Text;
        string pas = txtContraseña.Text;

        using (examenCRUDEntities5 db = new examenCRUDEntities5())
        {
            UsuariosSesion oUsuario = db.UsuariosSesion.Where(d => d.usuario == nombre && d.password == pas).FirstOrDefault();
            
            if (oUsuario != null)
            {

                Session["logado"] = true;  //crea una variable de sesion (visible en todas las webs)
                Session["tipo"] = oUsuario.tipo;
                Response.Redirect("Default.aspx");//redireccionamos a otra web
            }
            else
            {
                lblMensaje.Visible = true;
                lblMensaje.Text = "Datos Incorrectos, verifique.";
            }
        }        
    }

    protected void Cancel_Click(object sender, EventArgs e)
    {
        txtUsuario.Text = "";
        txtContraseña.Text = "";
        lblMensaje.Visible = false;
    }
 
}