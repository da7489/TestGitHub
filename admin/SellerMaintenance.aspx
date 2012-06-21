<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SellerMaintenance.aspx.cs" Inherits="admin_SellerMaintenance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 24px;
        }
        .style3
        {
        }
        .style4
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2" colspan="2" style="text-align: center">
                <h3 style="width: 302px; height: 32px">
                    <strong>Seller Maintenance</strong></h3>
                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;</p>
            </td>
        </tr>
        <tr>
            <td align="center" class="style3">
                <br />
                <asp:GridView ID="sellerGridView" runat="server" AutoGenerateColumns="False" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" DataKeyNames="sellerID" DataSourceID="sellerObjectDataSource" 
                    ForeColor="Black" GridLines="None" ondatabound="sellerGridView_DataBound" 
                    onselectedindexchanged="sellerGridView_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                        <asp:BoundField DataField="sellerID" HeaderText="Seller ID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:BoundField DataField="Address" HeaderText="Address" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
            </td>
            <td align="left">
                <br />
                <br />
                <asp:DetailsView ID="sellerDetailsView" runat="server" AutoGenerateRows="False" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" DataSourceID="sellerObjectDataSource" ForeColor="Black" 
                    GridLines="None" Height="50px" Width="125px" DataKeyNames="sellerID" 
                    oniteminserted="sellerDetailsView_ItemInserted" 
                    onitemupdated="sellerDetailsView_ItemUpdated">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <Fields>
                        <asp:BoundField DataField="sellerID" HeaderText="Seller ID" Visible="False" />
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:BoundField DataField="Address" HeaderText="Address" />
                        <asp:BoundField HeaderText="Phone" DataField="Phone" />
                        <asp:BoundField DataField="commissionRate" HeaderText="Commission Rate" />
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:BoundField DataField="AskPrice" HeaderText="Asking Price" />
                        <asp:BoundField DataField="Notes" HeaderText="Notes" />
                        <asp:CommandField ButtonType="Button" ShowInsertButton="True" 
                            ShowEditButton="True" />
                    </Fields>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                </asp:DetailsView>
            </td>
        </tr>
        <tr>
            <td align="center" class="style4" colspan="2">
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:ObjectDataSource ID="sellerObjectDataSource" runat="server" 
                    SelectMethod="GetSellers" TypeName="SellerDAL" 
                    DataObjectTypeName="SellerDAL" InsertMethod="Insert" 
                    onselected="sellerObjectDataSource_Selected" UpdateMethod="Update"></asp:ObjectDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

