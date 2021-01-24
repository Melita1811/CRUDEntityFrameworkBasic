using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Usuarios : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (examenCRUDEntities5 db = new examenCRUDEntities5())
        {
            UsuariosSesion oUsuario = new UsuariosSesion();

            if (txtUsuario.Text == "" || txtContraseña.Text == "")
            {
                Response.Write("<script>alert('Debe llenar todos los campos, verifique.');</script>");
            }
            else
            {
                oUsuario.usuario = txtUsuario.Text;
                oUsuario.password = txtContraseña.Text.ToString();
                oUsuario.tipo = ddTipo.SelectedIndex; //-- 0 Administrador 1 cajero

                db.UsuariosSesion.Add(oUsuario);
                db.SaveChanges();
                LimpiaControles();
            }
        }
    }


    public void Buscar()
    {
        string usuario = txtUsuario.Text;

        using (examenCRUDEntities5 db = new examenCRUDEntities5())
        {
            UsuariosSesion oUsuario = db.UsuariosSesion.Where(d => d.usuario == usuario).FirstOrDefault();

            if (oUsuario != null)
            {
                txtUsuario.Text = oUsuario.usuario;
                txtContraseña.Text = oUsuario.password;
                lblID_usuario.Text = oUsuario.id_usuario.ToString();

            }
            else
            {
                Response.Write("<script>alert('No se encuentra el registro');</script>");
            }
        }
    }

    public void LimpiaControles()
    {
        txtUsuario.Text = "";
        txtContraseña.Text = "";
    }
    protected void btnModificar_Click(object sender, EventArgs e)
    {
        string usuario = txtUsuario.Text;

        using (examenCRUDEntities5 db = new examenCRUDEntities5())
        {
            UsuariosSesion oUsuario1 = new UsuariosSesion();
            int id = Convert.ToInt32(lblID_usuario.Text);

            UsuariosSesion oUsuario = db.UsuariosSesion.Where(d => d.id_usuario == id).FirstOrDefault();
            oUsuario.usuario = txtUsuario.Text.ToString();
            oUsuario.password = txtContraseña.Text;

            if (oUsuario != null)
            db.Entry(oUsuario).State = EntityState.Modified;
            db.SaveChanges();
            LimpiaControles();
        }
    }
    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        string usuario = txtUsuario.Text;
        using (examenCRUDEntities5 db = new examenCRUDEntities5())
        {
            UsuariosSesion oUsuario = db.UsuariosSesion.Where(d => d.usuario == usuario).FirstOrDefault();

            if (oUsuario != null)
            {
                db.UsuariosSesion.Remove(oUsuario);
                db.SaveChanges();
                LimpiaControles();            
            }
            else
            {
                Response.Write("<script>alert('No se encuentra el registro');</script>");
            }          
        }
    }
    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        Buscar();
    }
    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        LimpiaControles();
    }
}