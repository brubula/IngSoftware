<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmEditarCliente.aspx.cs" Inherits="Presentacion.frmEditarCliente" %>
<%@ Register src="Control_ID.ascx" tagname="Control_ID" tagprefix="uc1" %>
<%@ Register src="Control_String.ascx" tagname="Control_String" tagprefix="uc2" %>
<%@ Register src="Control_Fecha.ascx" tagname="Control_Fecha" tagprefix="uc3" %>
<%@ Register src="Control_Alfanumerico.ascx" tagname="Control_Alfanumerico" tagprefix="uc4" %>
<%@ Register src="Control_Int.ascx" tagname="Control_Int" tagprefix="uc5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

        .style3
        {
            width: 538px;
        }
        .style4
        {
            font-weight: bold;
            color: #6699FF;
        }
        .style5
        {
            height: 32px;
        }
        .style6
        {
            color: #6699FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <table style="width: 100%;">
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td  colspan="2" bgcolor="#FFCC99" class="style5" 
                style="background-color: #3366FF">
                
                <asp:Label ID="Label9" runat="server" Text="Editar Alumno" Font-Bold="True" 
                    Font-Size="Large" style="color: #FFFFFF"></asp:Label>
            </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td >
                <asp:Label ID="Label10" runat="server" Text="Registro" CssClass="style4" 
                    Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td class="style3" >
                <uc1:Control_ID ID="Control_ID1" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td >
               <asp:Label ID="Label1" runat="server" Text="Nombre" CssClass="style4" 
                    Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td class="style3" >
                <uc2:Control_String ID="Control_String1" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td >
               
                <asp:Label ID="Label2" runat="server" Text="Ap. Paterno" CssClass="style4" 
                    Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td class="style3" >
                <uc2:Control_String ID="Control_String2" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" Text="Ap. Materno" CssClass="style4" 
                    Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td class="style3">
                <uc2:Control_String ID="Control_String3" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label4" runat="server" Text="Fecha nacimiento" CssClass="style6" 
                    Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td class="style3">
                <uc3:Control_Fecha ID="Control_Fecha1" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label5" runat="server" Text="Direccion" CssClass="style6" 
                    Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td class="style3">
                <uc4:Control_Alfanumerico ID="Control_Alfanumerico1" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label6" runat="server" Text="Telefono" CssClass="style6" 
                    Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td class="style3">
                <uc5:Control_Int ID="Control_Int1" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label7" runat="server" Text="CI" CssClass="style6" 
                    Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td class="style3">
                <uc5:Control_Int ID="Control_Int2" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label8" runat="server" Text="Carrera" CssClass="style6" 
                    Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td class="style3">
                <asp:DropDownList ID="cbrubro" runat="server" Height="25px" Width="287px">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td >
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar Edicion" 
                    onclick="btnGuardar_Click" />
                <asp:Label ID="Label11" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
<p>
    &nbsp;</p>
</asp:Content>
