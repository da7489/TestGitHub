<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BrowseListing.aspx.cs" Inherits="BrowseListing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            border-color:Gray;
            border:5;
        }
        .style2
        {            text-align: right;
        }
        .style4
       {
           text-align: right;
            width: 592px;
        }
       .style16
       {
           margin: 0;
           padding: 0;
           width: 33.33%;
           text-align: center;
           height: 40px;
       }
       .style18
       {
           margin: 0;
           padding: 0;
           width: 33.33%;
           text-align: left;
           height: 45px;
       }
       .style19
       {
           margin: 0;
           padding: 0;
           width: 33.33%;
           text-align: left;
           height: 38px;
       }
       .style20
       {
           margin: 0;
           padding: 0;
           width: 33.33%;
           text-align: center;
           height: 31px;
       }
       .style25
       {
           margin: 0;
           padding: 0;
           width: 13%;
           text-align: left;
           height: 31px;
       }
       .style27
       {
           margin: 0;
           padding: 0;
           width: 13%;
           text-align: left;
           height: 45px;
       }
       .style29
       {
           margin: 0;
           padding: 0;
           width: 13%;
           text-align: left;
           height: 40px;
       }
       .style31
       {
           margin: 0;
           padding: 0;
           width: 13%;
           text-align: left;
           height: 38px;
       }
       .style32
       {
           margin: 0;
           padding: 0;
           width: 18%;
           text-align: center;
           height: 31px;
       }
       .style33
       {
           margin: 0;
           padding: 0;
           width: 18%;
           text-align: center;
           height: 40px;
       }
       .style34
       {
           margin: 0;
           padding: 0;
           width: 18%;
           text-align: center;
           height: 38px;
       }
       .style35
       {
           margin: 0;
           padding: 0;
           width: 18%;
           text-align: center;
           height: 45px;
       }
        .style36
        {
            width: 592px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="1px dashed" rules="none" cellspacing="0"  class="style1">
        <tr>
            <td align="center" colspan="4">
                <h3>
                    Listings</h3>
            </td>
        </tr>
        <tr>
            <td class="style32" >
                <asp:Label ID="lblPrice0" runat="server" Text="Property Type"></asp:Label>
                <br />
            </td>
            <td class="style25" colspan="2">
                <asp:DropDownList ID="ddlPropertyType" runat="server" Height="21px" 
                    Width="112px" AutoPostBack="True" 
                    onselectedindexchanged="ddlPropertyType_SelectedIndexChanged">
                    <asp:ListItem Value="0">Any</asp:ListItem>
                    <asp:ListItem>Single Detached</asp:ListItem>
                    <asp:ListItem>Semi Detached</asp:ListItem>
                    <asp:ListItem>Townhouse</asp:ListItem>
                    <asp:ListItem>Bunglow</asp:ListItem>
                    <asp:ListItem>Apartment</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style20">
            </td>
        </tr>
        <tr>
            <td class="style33">
                <asp:Label ID="lblPrice1" runat="server" Text="City"></asp:Label>
                <br />
            </td>
            <td class="style29" colspan="2">
                <asp:DropDownList ID="ddlCity" runat="server" Height="21px" Width="112px" 
                    AutoPostBack="True" onselectedindexchanged="ddlCity_SelectedIndexChanged">
                    <asp:ListItem Value="0">Any</asp:ListItem>
                    <asp:ListItem>Kitchener</asp:ListItem>
                    <asp:ListItem>Waterloo</asp:ListItem>
                    <asp:ListItem>Cambridge</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style16">
            </td>
        </tr>
        <tr>
            <td class="style34">
                <asp:Label ID="lblPrice" runat="server" Text="Price Range: "></asp:Label>
                <br />
            </td>
            <td class="style31" colspan="2" style="border-collapse: collapse">
                <asp:DropDownList ID="ddlPrice1" runat="server" Height="21px" Width="112px" 
                    AutoPostBack="True" 
                    onselectedindexchanged="ddlPrice1_SelectedIndexChanged1">
                    <asp:ListItem Value="0">Any</asp:ListItem>
                    <asp:ListItem Value="50000">$50,000</asp:ListItem>
                    <asp:ListItem Value="100000">$100,000</asp:ListItem>
                    <asp:ListItem Value="250000">$250,000</asp:ListItem>
                    <asp:ListItem Value="400000">$400,000</asp:ListItem>
                    <asp:ListItem Value="550000">$550,000</asp:ListItem>
                    <asp:ListItem Value="750000">&gt; $750,000</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style19">
                <asp:DropDownList ID="ddlPrice2" runat="server" Height="21px" Width="112px" 
                    style="margin-left: 0px" AutoPostBack="True" 
                    onselectedindexchanged="ddlPrice2_SelectedIndexChanged">
                    <asp:ListItem Value="0">Any</asp:ListItem>
                    <asp:ListItem Value="99999">$99,999</asp:ListItem>
                    <asp:ListItem Value="249999">$249,999</asp:ListItem>
                    <asp:ListItem Value="399999">$399,999</asp:ListItem>
                    <asp:ListItem Value="549999">$549,999</asp:ListItem>
                    <asp:ListItem Value="749999">$749,999</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style35">
                <asp:Label ID="lblBedBath" runat="server" Text="Bed/Bath: "></asp:Label>
                <br />
            </td>
            <td class="style27" colspan="2">
                <asp:DropDownList ID="ddlBed1" runat="server" Height="21px" Width="112px" 
                    AutoPostBack="True" onselectedindexchanged="ddlBed1_SelectedIndexChanged">
                    <asp:ListItem Value="0">Any</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem Value="6">&gt; 5</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style18">
                <asp:DropDownList ID="ddlBath" runat="server" Height="21px" Width="112px" 
                    AutoPostBack="True" onselectedindexchanged="ddlBath_SelectedIndexChanged">
                    <asp:ListItem Value="0">Any</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem Value="6">&gt; 5</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="text-align:left; padding-left: 50px;" colspan="4">
                <%--<a href="DetailListings.aspx">DetailListings</a></td>--%>
            </td>
        </tr>
        </table>
        <table>
        <tr>
            <td class="style4" colspan="4" align="left">
                <br />
                <asp:GridView ID="filterViewGV" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="houseListObjectDataSource" style="text-align: center"  
                    Width="596px" AllowSorting="True" BackColor="LightGoldenrodYellow" 
                    BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" 
                    GridLines="None" DataKeyNames="HouseID" 
                    ondatabound="filterViewGV_DataBound" >
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:TemplateField HeaderText="Address">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" 
                                    NavigateUrl='<%# Eval("HouseID", "~/DetailListings.aspx?HouseID={0}") %>' 
                                    Text='<%# Eval("BldNumber") %>'></asp:HyperLink>
                                <asp:HyperLink ID="HyperLink2" runat="server" 
                                    NavigateUrl='<%# Eval("HouseID", "~/DetailListings.aspx?HouseID={0}") %>' 
                                    Text='<%# Eval("StreetName") %>'></asp:HyperLink>
                                <asp:HyperLink ID="HyperLink3" runat="server" 
                                    NavigateUrl='<%# Eval("HouseID", "~/DetailListings.aspx?HouseID={0}") %>' 
                                    Text='<%# Eval("StreetDirection") %>'></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Price" HeaderText="Price" DataFormatString="${0:F2}" 
                            HtmlEncode="False" />
                        <asp:BoundField DataField="HouseStyle" HeaderText="House Style" />
                        <asp:BoundField DataField="Area" HeaderText="Area (sq. ft.)" />
                        <asp:BoundField DataField="YearBuilt" HeaderText="Year Built" />
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
                <asp:ObjectDataSource ID="houseListObjectDataSource" runat="server" 
                    SelectMethod="GetHouseList" TypeName="BrowseHouse" 
                    onselected="houseListObjectDataSource_Selected">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlPropertyType" Name="PropertyType" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="ddlCity" Name="sCity" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="ddlPrice1" Name="Price1" 
                            PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="ddlPrice2" Name="Price2" 
                            PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="ddlBed1" Name="Bed" 
                            PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="ddlBath" Name="Bath" 
                            PropertyName="SelectedValue" Type="Int32" />
                        <asp:Parameter DefaultValue="750000" Name="MaxPrice" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td style="text-align: center"  colspan="2" class="style36">
                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="#FF5050"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

