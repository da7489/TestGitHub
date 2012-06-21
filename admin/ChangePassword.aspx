<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="admin_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center">
    <asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="#F7F7DE" 
        BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" 
        Font-Names="Verdana" Font-Size="10pt" Height="177px" style="margin-top: 0px" 
        Width="445px">
        <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#F4FA58" />
    </asp:ChangePassword>
</p>
</asp:Content>

