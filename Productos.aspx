<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Productos.aspx.cs" Inherits="Productos" %>

<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Data.Linq" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table style="width: 100%">
        <tr>
            <td colspan="4">
            <h1>Productos</h1>

            </td>
        </tr>
        <tr>
            <td style="width: 48px">&nbsp;</td>
            <td style="width: 159px">
                <asp:Label ID="Label6" runat="server" Text="ID Producto"></asp:Label>
            </td>
            <td style="width: 378px">
                <asp:TextBox ID="txtIDproducto" runat="server" OnTextChanged="txtIDproducto_TextChanged"></asp:TextBox>
                &nbsp;
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" BackColor="#BEDD55" />
            </td>
            <td rowspan="5">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" GridLines="Vertical" ForeColor="Black">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="#BEDD55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </td>
            
        </tr>
        <tr>
            <td style="width: 48px">&nbsp;</td>
            <td style="width: 159px">
                <asp:Label ID="Label3" runat="server" Text="Descripción"></asp:Label>
            </td>
            <td style="width: 378px">
                <asp:TextBox ID="txtDescProd" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 48px">&nbsp;</td>
            <td style="width: 159px">
                <asp:Label ID="Label4" runat="server" Text="Precio"></asp:Label>
            </td>
            <td style="width: 378px">
                <asp:TextBox ID="txtPrecio" runat="server">0</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 48px">&nbsp;</td>
            <td style="width: 159px">&nbsp;</td>
            <td style="width: 378px">
                <asp:Button ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
                <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click" />
                <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
                <asp:Button ID="btnLimpiar" runat="server" OnClick="btnLimpiar_Click" Text="Limpiar" />
            </td>
        </tr>
        <tr>
            <td style="width: 48px">&nbsp;</td>
            <td style="width: 159px">&nbsp;</td>
            <td style="width: 378px">&nbsp;</td>
        </tr>
    </table>





</asp:Content>

