using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Data.SqlClient;
using System.Data;

public class ValuesController1 : ApiController
{
    // GET api/<controller>
    public IEnumerable<string> Get()
    {
        return new string[] { "value1", "value2" };
    }

    // GET api/<controller>/5
    public string Get(int id)
    {
        return "value";
    }

    // POST api/<controller>
    public void Post([FromBody]string value)
    {
    }

    // PUT api/<controller>/5
    public void Put(int id, [FromBody]string value)
    {
    }

    // DELETE api/<controller>/5
    public void Delete(int id)
    {
    }

    //public int UpdateSesion(string newName, string connString)
    //{
        //Int32 newProdID = 0;
        //string sql = "UPDATE UsuariosSesion SET IsLogged=0 WHERE usuario =" + newName;
        ////"INSERT INTO Production.ProductCategory (Name) VALUES (@Name); "
        ////+ "SELECT CAST(scope_identity() AS int)";
        //using (SqlConnection conn = new SqlConnection(connString))
        //{
        //    SqlCommand cmd = new SqlCommand(sql, conn);
        //    cmd.Parameters.Add("@Name", SqlDbType.VarChar);
        //    cmd.Parameters["@name"].Value = newName;
        //    try
        //    {
        //        conn.Open();
        //        newProdID = (Int32)cmd.ExecuteScalar();
        //    }
        //    catch (Exception ex)
        //    {
        //        Console.WriteLine(ex.Message);
        //    }
        //}
        //return (int)newProdID;

        //                int id = Convert.ToInt32(txtIDproducto.Text);
        //using (examenCRUDEntities4 db = new examenCRUDEntities4())
        //{
        //    Producto oProducto = db.Producto.Where(d => d.id_producto == id).First();

        //    oProducto.des_producto = txtDescProd.Text.ToString();
        //    oProducto.precio = Convert.ToDouble(txtPrecio.Text);

        //    db.Entry(oProducto).State = EntityState.Modified;
        //    db.SaveChanges();
        //    productos_view();
        //    LimpiarControles();
        //}


    //}

    public bool ResetUserLoginStatus(string username = "")
    {
        //string connection = "data source=localhost;initial catalog=examenCRUD;integrated security=True;multipleactiveresultsets=True;application name=EntityFramework";
         
        //ValuesController1 person = new ValuesController1();
        //int id = UpdateSesion(username, connection);

        //new Dictionary<string, object>() 
        //{
        //    { "Person", (!string.IsNullOrEmpty(username)?username:User.Name )}
        //}
        //, "Person");


        //int id = Convert.ToInt32(txtIDproducto.Text);
        using (examenCRUDEntities5 db = new examenCRUDEntities5())
        {
            UsuariosSesion oSesion = db.UsuariosSesion.Where(d => d.usuario == username).First();

            oSesion.IsLogged = 0;
            //oSesion.precio = Convert.ToDouble(txtPrecio.Text);

            db.Entry(oSesion).State = EntityState.Modified;
            db.SaveChanges();
            //productos_view();
            //LimpiarControles();
        }









        return true;
    }


}
