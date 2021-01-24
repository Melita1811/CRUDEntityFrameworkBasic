using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Proveedores : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        proveedor_view();
    }
    protected void btnAgregar_Click(object sender, EventArgs e)
    {
        using (examenCRUDEntities5 db = new examenCRUDEntities5())
        {
            Proveedor  oProvedor = new Proveedor ();

            if (txtIDProveedor.Text == "" || txtNombre.Text == "" || txtTel.Text == "" || txtEmpresa.Text == "")
            {
                Response.Write("<script>alert('Debe llenar todos los campos, verifique.');</script>");
            }
            else
            {
                oProvedor.id_proveedor = Convert.ToInt32(txtIDProveedor.Text);
                oProvedor.Nombre = txtNombre.Text.ToString();
                oProvedor.Telefono = txtTel.Text;
                oProvedor.Empresa = txtEmpresa.Text;
                db.Proveedor.Add(oProvedor);
                db.SaveChanges();
                proveedor_view();
                LimpiarControles();
            }
        }
    }

    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        LimpiarControles();
    }
    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        Buscar();
    }

    public void Buscar()
    {
        int id = Convert.ToInt32(txtIDProveedor.Text);
        using (examenCRUDEntities5 db = new examenCRUDEntities5())
        {
            Proveedor oProveedor = db.Proveedor.Where(d => d.id_proveedor == id).FirstOrDefault();

            if (oProveedor != null)
            {
                txtNombre.Text = oProveedor.Nombre;
                txtTel.Text = oProveedor.Telefono;
                txtEmpresa.Text = oProveedor.Empresa;                
            }
            else
            {
                Response.Write("<script>alert('No se encuentra el registro');</script>");
            }

        }
    }

    public void proveedor_view()
    {
        using (examenCRUDEntities5 gridDB = new examenCRUDEntities5())
        {
            IQueryable<Proveedor> prov = from p in gridDB.Proveedor
                                       select p;

            List<Proveedor> lista = prov.ToList();
            GridView1.DataSource = lista;
            GridView1.DataBind();
        }
    }

    public void LimpiarControles()
    {
        txtIDProveedor.Text = "";
        txtNombre.Text = "";
        txtTel.Text = "";
        txtEmpresa.Text = "";
    }
}