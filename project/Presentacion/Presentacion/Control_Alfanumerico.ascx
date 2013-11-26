<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Control_Alfanumerico.ascx.cs" Inherits="Presentacion.Control_Alfanumerico" %>
<asp:TextBox ID="txtAlfa" runat="server" MaxLength="60" 
    OnTextChanged="txtAlfa_TextChanged" Width="290px"></asp:TextBox>

<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
    ControlToValidate="txtAlfa" ErrorMessage="(*)" ForeColor="Red"></asp:RequiredFieldValidator>

<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
    ControlToValidate="txtAlfa" ErrorMessage="(Formato no valido)" 
    ValidationExpression="[a-zA-ZñÑáéíóúÁÉÍÓÚ0-9 ,.#/-]*" ForeColor="Red"></asp:RegularExpressionValidator>



