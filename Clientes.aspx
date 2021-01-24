<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Clientes.aspx.cs" Inherits="Clientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="4"><h1>Clientes</h1></td>
        </tr>
        <tr>
            <td style="width: 68px; height: 15px;"></td>
            <td style="width: 181px; height: 15px;">
                <asp:Label ID="Label1" runat="server" Text="ID Cliente"></asp:Label>
            </td>
            <td style="width: 409px; height: 15px">
                <asp:TextBox ID="txtIDCliente" runat="server"></asp:TextBox>
                &nbsp;
                &nbsp;
                <asp:Button ID="btnBuscar1" runat="server" Text="Buscar" BackColor="#BEDD55" OnClick="btnBuscar1_Click" />
            </td>
            <td rowspan="3">
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
            <td style="width: 68px">&nbsp;</td>
            <td style="width: 181px">
                <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
            </td>
            <td style="width: 409px">
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 68px">&nbsp;</td>
            <td style="width: 181px">&nbsp;</td>
            <td style="width: 409px">
                <asp:Button ID="btnAgregar1" runat="server" Text="Agregar" OnClick="btnAgregar1_Click" />
                <asp:Button ID="btnLimpiar" runat="server" OnClick="btnLimpiar_Click" Text="Limpiar" />
            </td>
        </tr>
    </table>
</asp:Content>

