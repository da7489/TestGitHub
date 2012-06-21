<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="admin_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Login ID="Login1" runat="server" HorizontalAlign="Right" 
        VerticalAlign="Top" BackColor="#F7F7DE" 
    BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px"
    DestinationPageUrl="~/admin/Admin.aspx" Font-Names="Verdana" Font-Size="10pt" 
    Width="679px" DisplayRememberMe="False" UserName="Admin" Height="182px" 
    style="margin-left: 0px; text-align: justify;">
    <TitleTextStyle BackColor="#6B696B" Font-Bold="True" 
        ForeColor="#F4FA58" />
</asp:Login>
</asp:Content>

