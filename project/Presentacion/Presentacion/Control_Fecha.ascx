<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Control_Fecha.ascx.cs" Inherits="Presentacion.Control_Fecha" %>
<asp:TextBox ID="txtFn" runat="server" OnTextChanged="txtFn_TextChanged" 
    Width="184px"></asp:TextBox>
<asp:ImageButton ID="ImageButton1" runat="server" 
    ImageUrl="~/Images/calendar.JPG" OnClick="ImageButton1_Click" 
    onclientclick="this.Calendar1.Visible = true;" />
<asp:CompareValidator ID="CompareValidator1" runat="server" 
    ControlToValidate="txtFn" ErrorMessage="(Día/Mes/Año)" ForeColor="Red" 
    Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
<asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
    BorderColor="#3366CC" BorderWidth="1px" 
    DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
    ForeColor="#003399" Height="200px" 
    OnSelectionChanged="Calendar1_SelectionChanged" Width="220px" 
    Visible="False" CellPadding="1">
    <DayHeaderStyle BackColor="#99CCCC" Height="1px" ForeColor="#336666" />
    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
    <OtherMonthDayStyle ForeColor="#999999" />
    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
    <TitleStyle BackColor="#003399" 
        Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" 
        BorderColor="#3366CC" BorderWidth="1px" Height="25px" />
    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
    <WeekendDayStyle BackColor="#CCCCFF" />
</asp:Calendar>

