<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">


table{width:100%; border-collapse:collapse; table-layout:auto; vertical-align:top; margin-bottom:15px; border:1px solid #CCCCCC;}
table thead th, table tbody td{padding:5px; border-collapse:collapse;}
table tbody td{vertical-align:top; border-collapse:collapse; border-left:1px solid #CCCCCC; border-right:1px solid #CCCCCC;}
input, textarea, select{font-size:12px; font-family:Verdana, Arial, Helvetica, sans-serif;}

        .auto-style1
        {
            width: 272px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

    
    </div>
        <asp:Panel ID="Panel1" runat="server" BackColor="#9CE085">
            <table style="width: 100%">
                <tr>
                    <td colspan="3">&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                                    &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                                    &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                                    &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                                    &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                                    &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp                        
                        Bienvenido, favor de ingresar su usuario y contraseña. &nbsp<asp:Label ID="lblMensaje" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC0000" Text="Label" Visible="False"></asp:Label>
                  

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td style="width: 101px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td style="width: 101px">
                        <asp:Label ID="Label1" runat="server" Text="Usuario"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsuario" runat="server" Width="181px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td style="width: 101px">
                        <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtContraseña" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td style="width: 101px">&nbsp;</td>
                    <td>
                        &nbsp;
                        &nbsp;
                         <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" BackColor="#BEDD55" OnClick="btnIngresar_Click" />
                        &nbsp;
                        &nbsp;
                        <asp:Button ID="Cancel" runat="server" OnClick="Cancel_Click" BackColor="#BEDD55" Text="Cancel" />
                        &nbsp;
                        &nbsp;
                        </td>
                </tr>
            </table>
        </asp:Panel>

    </form>
</body>

   <%-- <body>
      <form id="form1" runat="server">
         <p>This form displays the results of the FormsAuthentication.HashPasswordForStoringInConfigFile
         method.<br />The user name and hashed password can be stored in a &lt;credentials&gt; node
         in the Web.config file.</p>
         <table cellpadding="2">
            <tbody>
               <tr>
                  <td>New User Name:</td>
                  <td><asp:TextBox id="userName" runat="server" /></td>
                  <td><asp:RequiredFieldValidator id="userNameRequiredValidator" 
                        runat="server" ErrorMessage="User name required" 
                        ControlToValidate="userName" /></td>
               </tr>
               <tr>
                  <td>Password: </td>
                  <td><asp:TextBox id="password" runat="server" TextMode="Password" /></td>
                  <td><asp:RequiredFieldValidator id="passwordRequiredValidator" 
                        runat="server" ErrorMessage="Password required" 
                        ControlToValidate="password" /></td>
               </tr>
               <tr>
                  <td>Repeat Password: </td>
                  <td><asp:TextBox id="repeatPassword" runat="server" TextMode="Password" /></td>
                  <td><asp:RequiredFieldValidator id="repeatPasswordRequiredValidator" 
                        runat="server" ErrorMessage="Password confirmation required" 
                        ControlToValidate="repeatPassword" />
                      <asp:CompareValidator id="passwordCompareValidator" runat="server" 
                        ErrorMessage="Password does not match" 
                        ControlToValidate="repeatPassword" 
                        ControlToCompare="password" /></td>
               </tr>
               <tr>
                  <td>Hash function:</td>
                  <td align="center">
                     <asp:RadioButton id="sha1" runat="server" GroupName="HashType" 
                                      Text="SHA1" />
                     <asp:RadioButton id="md5" runat="server" GroupName="HashType" 
                                      Text="MD5" />
                  </td>
               </tr>
               <tr>
                  <td align="center" colspan="2">
                    <asp:Button id="hashPassword" onclick="HashPassword_Click" 
                                runat="server" Text="Hash Password" />&nbsp;&nbsp; 
                    <asp:Button id="cancel" onclick="Cancel_Click" runat="server" 
                                Text="Cancel" CausesValidation="false" />
                  </td>
               </tr>
            </tbody>
         </table>

         <pre><asp:Label id="result" runat="server"></asp:Label></pre>
      </form>
   </body>--%>

</html>
