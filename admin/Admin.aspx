<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style6
        {
            text-align: center;
            width: 450px;
        }
        .style7
        {
            height: 63px;
        }
        .style10
        {
            width: 47px;
            height: 49px;
        }
    </style>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="background-color:#FFFBD6">
        <tr>
            <td align="center" colspan="2" class="style7">
                <h3 class="style6" style="text-align:right; float:right">
                    <asp:HyperLink ID="changePassHyperLink" runat="server" 
                        NavigateUrl="~/admin/ChangePassword.aspx">Change Password</asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </h3>
                <h3 class="style6" style="text-align:left; margin-left:205px; background-color:#FFFBD6"">
                    Welcome back!</h3>
            </td>
        </tr>
        <tr>
            <td class="style10" align="left">
                <br />
                <asp:Button ID="newListing" runat="server" Text="Create New Listing" 
                    ToolTip="Enter new property listing" Width="138px" 
                    onclick="newListing_Click" style="text-align: left" />
                <br />
            </td>
            <td class="style10" align="left">
                <br />
                <asp:Button ID="newButton" runat="server" Text="Create New Seller" 
                    onclick="newButton_Click" />
            </td>
        </tr>
        <tr>
            <td class="style10" align="left" style="background-color:#FFFBD6">
                <asp:Button ID="editListing" runat="server" 
                    Text="View/Modify Existing Listings" 
                    onclick="editListing_Click" Width="190px" />
            </td>
            <td class="style10" align="left">
                <asp:Button ID="modifyButton" runat="server" 
                    Text="View/Modify Existing Seller" onclick="modifyButton_Click" />
            </td>
        </tr>
</table>
    </asp:Content>

