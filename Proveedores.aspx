<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Proveedores.aspx.cs" Inherits="Proveedores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="4"><h1>Proveedores</h1></td>
        </tr>
        <tr>
            <td style="width: 99px">&nbsp;</td>
            <td style="width: 144px">
                <asp:Label ID="Label1" runat="server" Text="ID Proveedor"></asp:Label>
            </td>
            <td style="width: 276px">
                <asp:TextBox ID="txtIDProveedor" runat="server" Width="120px"></asp:TextBox>
                &nbsp;
                &nbsp;
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" BackColor="#BEDD55" OnClick="btnBuscar_Click" />
            </td>
            <td rowspan="5">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
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
            <td style="width: 99px">&nbsp;</td>
            <td style="width: 144px">
                <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
            </td>
            <td style="width: 276px">
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 99px">&nbsp;</td>
            <td style="width: 144px">
                <asp:Label ID="Label3" runat="server" Text="Teléfono"></asp:Label>
            </td>
            <td style="width: 276px">
                <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 99px">&nbsp;</td>
            <td style="width: 144px">
                <asp:Label ID="Label4" runat="server" Text="Empresa"></asp:Label>
            </td>
            <td style="width: 276px">
                <asp:TextBox ID="txtEmpresa" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 99px">&nbsp;</td>
            <td style="width: 144px">&nbsp;</td>
            <td style="width: 276px">
                <asp:Button ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
                <asp:Button ID="btnLimpiar" runat="server" OnClick="btnLimpiar_Click" Text="Limpiar" />
            </td>
        </tr>
    </table>
</asp:Content>

