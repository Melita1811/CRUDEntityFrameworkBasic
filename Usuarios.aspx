<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Usuarios.aspx.cs" Inherits="Usuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 184px;">
        <tr>
            <td colspan="4" style="height: 32px"><h1>Usuarios </h1></td>
        </tr>
        <tr>
            <td style="width: 137px; height: 28px;"></td>
            <td style="width: 89px; height: 28px;">
                <asp:Label ID="Label1" runat="server" Text="Tipo:"></asp:Label>
            </td>
            <td style="width: 323px; height: 28px;">
                <asp:DropDownList ID="ddTipo" runat="server">
                    <asp:ListItem>1.- Administrador</asp:ListItem>
                    <asp:ListItem>2.- Cajero</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 28px">
            </td>
        </tr>
        <tr>
            <td style="width: 137px; height: 28px;"></td>
            <td style="width: 89px; height: 28px;">
                <asp:Label ID="Label2" runat="server" Text="Usuario:"></asp:Label>
            </td>
            <td style="width: 323px; height: 28px;">
                <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                &nbsp
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" BackColor ="#9CE085" OnClick="btnBuscar_Click" />
                <asp:Label ID="lblID_usuario" runat="server" Visible="False"></asp:Label>
            </td>
            <td style="height: 28px">
            </td>
        </tr>
        <tr>
            <td style="width: 137px; height: 25px;"></td>
            <td style="width: 89px; height: 25px;">
                <asp:Label ID="Label3" runat="server" Text="Contraseña:"></asp:Label>
            </td>
            <td style="width: 323px; height: 25px;">
                <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="height: 25px">
            </td>
        </tr>
        <tr>
            <td style="width: 137px; height: 33px;"></td>
            <td style="width: 89px; height: 33px;"></td>
            <td style="width: 323px; height: 33px;">
                <asp:Button ID="btnRegistrar" runat="server" OnClick="Button1_Click" Text="Registrar" />
                <asp:Button ID="btnModificar" runat="server" OnClick="btnModificar_Click" Text="Modificar" />
                <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" />
                <asp:Button ID="btnLimpiar" runat="server" OnClick="btnLimpiar_Click" Text="Limpiar" />
            </td>
            <td style="height: 33px">
            </td>
        </tr>
        <tr>
            <td style="width: 137px; height: 20px;"></td>
            <td style="width: 89px; height: 20px;"></td>
            <td style="width: 323px; height: 20px;"></td>
            <td style="height: 20px">
            </td>
        </tr>
    </table>
</asp:Content>

