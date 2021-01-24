using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Clientes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        clientes_view();
    }
    protected void btnAgregar1_Click(object sender, EventArgs e)
    {
        using (examenCRUDEntities5 db = new examenCRUDEntities5())
        {
            Cliente oCliente = new Cliente();

            if (txtIDCliente.Text == "" || txtNombre.Text == "" )
            {
                Response.Write("<script>alert('Debe llenar todos los campos, verifique.');</script>");
            }
            else
            {
                oCliente.id_cliente = Convert.ToInt32(txtIDCliente.Text);
                oCliente.Nombre = txtNombre.Text.ToString();
               
                db.Cliente.Add(oCliente);
                db.SaveChanges();
                clientes_view();
                LimpiarControles();
            }
        }
    }
    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        LimpiarControles();
    }
    protected void btnBuscar1_Click(object sender, EventArgs e)
    {
        Buscar();
    }

    public void Buscar()
    {
        int id = Convert.ToInt32(txtIDCliente.Text);
        using (examenCRUDEntities5 db = new examenCRUDEntities5())
        {
            Cliente oCliente = db.Cliente.Where(d => d.id_cliente == id).FirstOrDefault();

            if (oCliente != null)
            {
                txtNombre.Text = oCliente.Nombre;
            }
            else
            {
                Response.Write("<script>alert('No se encuentra el registro');</script>");
            }
        }
    }

    public void clientes_view()
    {
        using (examenCRUDEntities5 gridDB = new examenCRUDEntities5())
        {
            IQueryable<Cliente> cli = from p in gridDB.Cliente
                                         select p;

            List<Cliente> lista = cli.ToList();
            GridView1.DataSource = lista;
            GridView1.DataBind();
        }
    }

    public void LimpiarControles()
    {
        txtIDCliente.Text = "";
        txtNombre.Text = "";
    }
}