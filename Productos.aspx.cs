using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Threading.Tasks;
using System.Text.RegularExpressions;
using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Objects;
using System.Data.Objects.DataClasses;
using System.Linq;




public partial class Productos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {       

        productos_view();
    }
    protected void btnAgregar_Click(object sender, EventArgs e)
    {
        using (examenCRUDEntities5 db = new examenCRUDEntities5())
        {
            Producto oProducto = new Producto();

            if (txtIDproducto.Text == "" || txtDescProd.Text == "")
            {
                Response.Write("<script>alert('Debe llenar todos los campos, verifique.');</script>");
            }
            else
            {
                if (txtPrecio.Text == "0")
                {
                    Response.Write("<script>alert('El precio no puede ser 0, verifique.');</script>");
                }
                else
                {
                    oProducto.id_producto = Convert.ToInt32(txtIDproducto.Text);
                    oProducto.des_producto = txtDescProd.Text.ToString();
                    oProducto.precio = Convert.ToDouble(txtPrecio.Text);
                    db.Producto.Add(oProducto);
                    db.SaveChanges();
                    productos_view();
                    LimpiarControles();
                }
            }
        }
    }
    protected void btnModificar_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(txtIDproducto.Text);
        using (examenCRUDEntities5 db = new examenCRUDEntities5())
        {
            Producto oProducto = db.Producto.Where(d => d.id_producto == id).First();

            oProducto.des_producto = txtDescProd.Text.ToString();
            oProducto.precio = Convert.ToDouble(txtPrecio.Text);

            db.Entry(oProducto).State = EntityState.Modified;
            db.SaveChanges();
            productos_view();
            LimpiarControles();
        }
    }
    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(txtIDproducto.Text);
        using (examenCRUDEntities5 db = new examenCRUDEntities5())
        {
            Producto oProducto = db.Producto.Where(d => d.id_producto == id).First();

            db.Producto.Remove(oProducto);
            db.SaveChanges();
            productos_view();
            LimpiarControles();
        }
    }
    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        Buscar();
    }
    public void Buscar()
    {
        int id = Convert.ToInt32(txtIDproducto.Text);
        using (examenCRUDEntities5 db = new examenCRUDEntities5())
        {
            Producto oProducto = db.Producto.Where(d => d.id_producto == id).FirstOrDefault();

            if (oProducto != null)
            {
                txtDescProd.Text = oProducto.des_producto;
                txtPrecio.Text = oProducto.precio.ToString();
            }
            else
            {
                Response.Write("<script>alert('No se encuentra el registro');</script>");
            }

        }
    }
    protected void txtIDproducto_TextChanged(object sender, EventArgs e)
    {
        // Buscar();
    }
    public void productos_view()
    {

        using (examenCRUDEntities5 gridDB = new examenCRUDEntities5())
        {
            IQueryable<Producto> pro = from p in gridDB.Producto
                                       select p;

            List<Producto> lista = pro.ToList();
            GridView1.DataSource = lista;
            GridView1.DataBind();
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        LimpiarControles();
    }
    public void LimpiarControles()
    {
        txtIDproducto.Text = "";
        txtDescProd.Text = "";
        txtPrecio.Text = "0";
    }


}