<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Código que se ejecuta al iniciarse la aplicación
        Application["Aplicaciones"] = 0;
        Application["SesionesUsuarios"] = 0;

        Application["Aplicaciones"] = (int)Application["Aplicaciones"] + 1;

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Código que se ejecuta al cerrarse la aplicación

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Código que se ejecuta cuando se produce un error sin procesar

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Código que se ejecuta al iniciarse una nueva sesión
        Application["SesionesUsuarios"] = (int)Application["Aplicaciones"] + 1;

    }

    void Session_End(object sender, EventArgs e)
    {
        // Código que se ejecuta cuando finaliza una sesión. 
        // Nota: el evento Session_End se produce solamente con el modo sessionstate
        // se establece como InProc en el archivo Web.config. Si el modo de sesión se establece como StateServer
        // o SQLServer, el evento no se produce.
        Application["SesionesUsuarios"] = (int)Application["Aplicaciones"] - 1;
    }



    //protected void Session_Start(Object sender, EventArgs e)
    //{
    //    Session["init"] = 0;
    //    Session.Timeout = 15;
        
    //}
    //protected void Session_End(Object sender, EventArgs e)
    //{
    //    ValuesController1 person = new ValuesController1();
         
    //    // calling the function to update entry in database
    //    ResetUserLoginStatus(HttpContext.Current.User.Identity.Name);
    //}

    //public bool ResetUserLoginStatus(string username = "")
    //{
    //    using (examenCRUDEntities5 db = new examenCRUDEntities5())
    //    {
    //        UsuariosSesion oSesion = db.UsuariosSesion.Where(d => d.usuario == username).First();

    //        oSesion.IsLogged = 0;            

    //        db.Entry(oSesion).State = System.Data.EntityState.Modified;
    //        db.SaveChanges();
            
    //    }
        
    //    return true;
    //}

   
       
</script>
