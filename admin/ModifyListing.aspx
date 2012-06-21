<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ModifyListing.aspx.cs" Inherits="admin_ModifiyListing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 67px;
        }
        .style3
        {
            width: 67px;
            height: 157px;
        }
        .style4
        {
            height: 157px;
        }
        .style8
        {
            width: 62px;
        }
        .style9
        {
            width: 62px;
            height: 25px;
        }
        .style10
        {
            height: 25px;
        }
        .style11
        {
            width: 67px;
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="2" style="text-align: center">
                <h3>
                    <strong>Modifiy Listing</strong></h3>
            </td>
        </tr>
        <tr valign="top">
            <td align="center" class="style11">
                <asp:GridView ID="listingGridView" runat="server" AutoGenerateColumns="False" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" DataKeyNames="HouseID" 
                    DataSourceID="listingObjectDataSource" ForeColor="Black" 
                    GridLines="None" ondatabound="listingGridView_DataBound" 
                    onselectedindexchanged="listingGridView_SelectedIndexChanged" >
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="HouseID" HeaderText="HouseID" />
                        <asp:BoundField DataField="BldNumber" HeaderText="Street Number" />
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
            <td align="center" class="style4">
                <asp:DetailsView ID="listingDetailsView" runat="server" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" DataKeyNames="HouseID" 
                    DataSourceID="modifiyListingObjectDataSource" ForeColor="Black" GridLines="None" 
                    Height="50px" Width="125px" 
                    AutoGenerateRows="False" style="margin-left: 0px" 
                    onitemupdated="listingDetailsView_ItemUpdated">
                    <AlternatingRowStyle BackColor="PaleGoldenrod"/>
                    <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <Fields>
                        <asp:BoundField DataField="BldNumber" HeaderText="Street Number" />
                        <asp:BoundField DataField="StreetName" HeaderText="Street Name" />
                        <asp:BoundField DataField="StreetDirection" HeaderText="Street Direction" />
                        <asp:BoundField HeaderText="Unit /Apartment Number" DataField="UnitNumber" />
                        <asp:BoundField DataField="City" HeaderText="City" />
                        <asp:BoundField DataField="PostalCode" HeaderText="Postalcode" />
                        <asp:BoundField DataField="Province" HeaderText="Province" />
                        <asp:BoundField DataField="Tax" HeaderText="Tax" />
                        <asp:BoundField DataField="Price" HeaderText="Price" />
                        <asp:BoundField DataField="Bedroom" HeaderText="Bed Rooms" />
                        <asp:BoundField DataField="Bathroom" HeaderText="Bath Rooms" />
                        <asp:TemplateField HeaderText="House Type">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" 
                                    DataSourceID="houseTypeObjectDataSource" DataTextField="HouseType" 
                                    DataValueField="HouseType" Height="16px" 
                                    SelectedValue='<%# bind("houseType") %>'>
                                </asp:DropDownList>
                                <br />
                                <asp:ObjectDataSource ID="houseTypeObjectDataSource" runat="server" 
                                    SelectMethod="GetHouseType" TypeName="BrowseHouse"></asp:ObjectDataSource>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" 
                                    DataSourceID="houseTypeObjectDataSource" DataTextField="HouseType" 
                                    DataValueField="HouseType" Enabled="False" Height="16px">
                                </asp:DropDownList>
                                <br />
                                <asp:ObjectDataSource ID="houseTypeObjectDataSource" runat="server" 
                                    SelectMethod="GetSingleHouseType" TypeName="BrowseHouse">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="listingGridView" Name="houseId" 
                                            PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="House Style">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList6" runat="server" 
                                    DataSourceID="ObjectDataSource2" DataTextField="HouseStyle" 
                                    DataValueField="HouseStyle" SelectedValue='<%# bind("houseStyle") %>'>
                                </asp:DropDownList>
                                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                                    SelectMethod="GetHouseStyle" TypeName="BrowseHouse">
                                </asp:ObjectDataSource>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList7" runat="server" 
                                    DataSourceID="ObjectDataSource1" DataTextField="HouseStyle" 
                                    DataValueField="HouseStyle" Enabled="False">
                                </asp:DropDownList>
                                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                                    SelectMethod="GetSingleHouseStyle" TypeName="BrowseHouse">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="listingGridView" Name="houseId" 
                                            PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Description" HeaderText="Description" />
                        <asp:BoundField DataField="Parking" HeaderText="Parking Spaces" />
                        <asp:BoundField DataField="Garage" HeaderText="Garage Size" />
                        <asp:TemplateField HeaderText="Basement">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList4" runat="server" 
                                    DataSourceID="basementObjectDataSource" DataTextField="Basement" 
                                    DataValueField="Basement" SelectedValue='<%# bind("basement") %>'>
                                </asp:DropDownList>
                                <br />
                                <asp:ObjectDataSource ID="basementObjectDataSource" runat="server" 
                                    SelectMethod="GetBasements" TypeName="BrowseHouse"></asp:ObjectDataSource>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList3" runat="server" Enabled="False" 
                                    DataSourceID="ObjectDataSource3" DataTextField="Basement" 
                                    DataValueField="Basement">
                                </asp:DropDownList>
                                <br />
                                <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
                                    SelectMethod="GetBasement" TypeName="BrowseHouse">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="listingGridView" Name="houseId" 
                                            PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Amenities">
                            <EditItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="left" class="style8">
                                            <asp:Label ID="Label1" runat="server" style="text-align: left" 
                                                Text="Refrigerator:"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:CheckBox ID="CheckBox1" runat="server" 
                                                Checked='<%# bind("Refrigerator") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text="Stove:"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# bind("Stove") %>' />
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style9">
                                            <asp:Label ID="Label3" runat="server" Text="Dishwasher:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox3" runat="server" 
                                                Checked='<%# bind("DishWasher") %>' />
                                        </td>
                                        <td class="style10">
                                            <asp:Label ID="Label4" runat="server" Text="Washerdryer:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox4" runat="server" 
                                                Checked='<%# bind("WasherDryer") %>' />
                                        </td>
                                        <td class="style10">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style9">
                                            <asp:Label ID="Label5" runat="server" Text="Watersoftener:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox5" runat="server" 
                                                Checked='<%# bind("Watersoftener") %>' />
                                        </td>
                                        <td class="style10">
                                            <asp:Label ID="Label6" runat="server" Text="Waterheater:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox6" runat="server" 
                                                Checked='<%# bind("WaterHeater") %>' />
                                        </td>
                                        <td class="style10">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style9">
                                            <asp:Label ID="Label7" runat="server" Text="Centralvaccum:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox7" runat="server" 
                                                Checked='<%# bind("CentralVaccum") %>' />
                                        </td>
                                        <td class="style10">
                                            <asp:Label ID="Label8" runat="server" Text="Fireplace:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox8" runat="server" 
                                                Checked='<%# bind("FirePlace") %>' />
                                        </td>
                                        <td class="style10">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style9">
                                            <asp:Label ID="Label9" runat="server" Text="Heatsystem:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox9" runat="server" 
                                                Checked='<%# bind("HeatSystem") %>' />
                                        </td>
                                        <td class="style10">
                                            <asp:Label ID="Label10" runat="server" Text="Swimmingpool:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox10" runat="server" 
                                                Checked='<%# bind("SwimmingPool") %>' />
                                        </td>
                                        <td class="style10">
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="left" class="style8">
                                            <asp:Label ID="Label1" runat="server" style="text-align: left" 
                                                Text="Refrigerator:"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:CheckBox ID="CheckBox1" runat="server" 
                                                Checked='<%# bind("Refrigerator") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text="Stove:"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# bind("Stove") %>' />
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style9">
                                            <asp:Label ID="Label3" runat="server" Text="Dishwasher:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox3" runat="server" 
                                                Checked='<%# bind("DishWasher") %>' />
                                        </td>
                                        <td class="style10">
                                            <asp:Label ID="Label4" runat="server" Text="Washerdryer:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox4" runat="server" 
                                                Checked='<%# bind("WasherDryer") %>' />
                                        </td>
                                        <td class="style10">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style9">
                                            <asp:Label ID="Label5" runat="server" Text="Watersoftener:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox5" runat="server" 
                                                Checked='<%# bind("Watersoftener") %>' />
                                        </td>
                                        <td class="style10">
                                            <asp:Label ID="Label6" runat="server" Text="Waterheater:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox6" runat="server" 
                                                Checked='<%# bind("WaterHeater") %>' />
                                        </td>
                                        <td class="style10">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style9">
                                            <asp:Label ID="Label7" runat="server" Text="Centralvaccum:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox7" runat="server" 
                                                Checked='<%# bind("CentralVaccum") %>' />
                                        </td>
                                        <td class="style10">
                                            <asp:Label ID="Label8" runat="server" Text="Fireplace:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox8" runat="server" 
                                                Checked='<%# bind("FirePlace") %>' />
                                        </td>
                                        <td class="style10">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style9">
                                            <asp:Label ID="Label9" runat="server" Text="Heatsystem:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox9" runat="server" 
                                                Checked='<%# bind("HeatSystem") %>' />
                                        </td>
                                        <td class="style10">
                                            <asp:Label ID="Label10" runat="server" Text="Swimmingpool:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox10" runat="server" 
                                                Checked='<%# bind("SwimmingPool") %>' />
                                        </td>
                                        <td class="style10">
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="LotSize" HeaderText="Lotsize" />
                        <asp:BoundField DataField="Area" HeaderText="Area" />
                        <asp:BoundField DataField="RoofCover" HeaderText="Roofcover" />
                        <asp:BoundField DataField="Exterior" HeaderText="Exterior" />
                        <asp:BoundField DataField="Ownership" HeaderText="Ownership" />
                        <asp:BoundField DataField="Status" HeaderText="Status" />
                        <asp:TemplateField HeaderText="Seller ID">
                            <EditItemTemplate>
                                <asp:DropDownList ID="sellerDropDownList" runat="server" AutoPostBack="True" 
                                    DataSourceID="listSellersSqlDataSource" DataTextField="Name" 
                                    DataValueField="sellerID" SelectedValue='<%# bind("sellerID") %>'>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="listSellersSqlDataSource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ListingConnection %>" 
                                    SelectCommand="SELECT [Name], [sellerID] FROM [tbl_sellerInfo]">
                                </asp:SqlDataSource>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList5" runat="server" Enabled="False" 
                                    DataSourceID="listingObjectDataSource" DataTextField="sellerID" 
                                    DataValueField="sellerID" SelectedValue='<%# bind("sellerID") %>'>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="YearBuilt" HeaderText="Yearbuilt" />
                        <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    </Fields>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                </asp:DetailsView>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:ObjectDataSource ID="listingObjectDataSource" runat="server" 
                    SelectMethod="GetListings" TypeName="BrowseHouse" 
                    DataObjectTypeName="BrowseHouse" UpdateMethod="Update" 
                    onselected="modifiyListingObjectDataSource_Selected"></asp:ObjectDataSource>
            </td>
            <td>
                <asp:ObjectDataSource ID="modifiyListingObjectDataSource" runat="server" 
                    DataObjectTypeName="BrowseHouse" DeleteMethod="Delete" 
                    SelectMethod="GetCompleteList" TypeName="BrowseHouse" 
                    UpdateMethod="Update" onselected="modifiyListingObjectDataSource_Selected">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="listingGridView" Name="houseIDString" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

