<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DetailListings.aspx.cs" Inherits="DetailListings" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: left;
            padding-bottom: 15px;
            padding-left: 0;
            padding-right: 0;
            padding-top: 0;
        }
        .style3
        {
            height: 22px;
        }
        .style11
        {
            text-align: left;
            margin-top: 0px;
        }
        .style12
        {
            font-size: large;
        }
        .style13
        {
            text-align: left;
            width: 24%;
            float: left;
            padding-left: 0;
            padding-right: 0;
            padding-top: 0;
            padding-bottom: 15px;
        }
        </style>
</asp:Content>    
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr style="border: 1px solid black">
            <td style="text-align: center; padding-left: 5px;" class="style12" colspan="2">
                <hr />
                <strong>Detail Listing</strong><hr />
            </td>
        </tr>
        <tr style="border: 1px solid black">
            <td class="style13" height="auto">
    <div id="mySlideShow" align="left" class="style11">
        <div class="style11">
        <script runat="server" type="text/C#">
            /*
             * We are writing our own GetSlide to use it in Slideshow Extender
            */
            
            [System.Web.Services.WebMethod]            
            [System.Web.Script.Services.ScriptMethod]
            public static AjaxControlToolkit.Slide[] GetSlides()
            {
                
                string imgName = "H1";
                   return new AjaxControlToolkit.Slide[] { 
                    new AjaxControlToolkit.Slide
		                ("images/details/"+imgName+"/1.jpg", "Blue Hills", "Go Blue"),                    
                        new AjaxControlToolkit.Slide
                            ("images/details/H1/1.jpg", "main", "full house"),
                        new AjaxControlToolkit.Slide("images/details/H1/2.jpg", "front", "Front"),
                        new AjaxControlToolkit.Slide
		                    ("images/details/H1/3.jpg", "side", "side"),
                        new AjaxControlToolkit.Slide
		                    ("images/details/H1/4.jpg", "back", "Setting sun")
                };
            }
        </script>
            <br />
        <asp:DropDownList ID="addressDropDownList" runat="server" 
            style="float:left; vertical-align:top" 
            AutoPostBack="True" onload="addressDropDownList_Load" 
            onselectedindexchanged="addressDropDownList_SelectedIndexChanged" 
                Height="21px" Width="187px">
        </asp:DropDownList>
        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <br />
        
            <asp:Image ID="homePhotos" runat="server" Height="193px" 
            ImageUrl="~/images/details/H1/1.jpg" CssClass="flt" Width="250px">
            </asp:Image> 
            <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
            <iframe frameborder="0" scrolling="no" marginheight="0" marginwidth="0" 
            src="http://maps.google.ca/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=217+Holbeach+Crescent+Waterloo&amp;aq=&amp;sll=49.891235,-97.15369&amp;sspn=29.595833,86.572266&amp;ie=UTF8&amp;hq=&amp;hnear=217+Holbeach+Crescent,+Waterloo,+Ontario+N2J+4Y4&amp;t=m&amp;z=14&amp;ll=43.488694,-80.519021&amp;output=embed" 
            style="height: 192px; width: 249px"></iframe><br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            
                <br />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
            </td>
            <td style="text-align: left; padding-left: 5px;">
            
                <asp:DetailsView ID="homeDetailList" runat="server"
                    DataSourceID="detailsObjectDataSource" Height="49px"  
                    Width="309px" BackColor="LightGoldenrodYellow" 
                    BorderColor="Tan" BorderWidth="1px" CellPadding="2" 
                    ForeColor="Black" GridLines="None" AutoGenerateRows="False" 
                    style="margin-left: 0px; text-align: justify;">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite"/>
                    <Fields>
                        <asp:BoundField DataField="Price" HeaderText="Price" ReadOnly="True" 
                            DataFormatString="${0:F2}" HtmlEncode="False" />
                        <asp:BoundField DataField="Bedroom" HeaderText="Bedrooms" />
                        <asp:BoundField DataField="Bathroom" HeaderText="Bathrooms" />
                        <asp:BoundField DataField="HouseType" HeaderText="House Type" />
                        <asp:BoundField DataField="HouseStyle" HeaderText="House Style" />
                        <asp:BoundField DataField="LotSize" HeaderText="Lot Size (in acres)" />
                        <asp:BoundField DataField="City" HeaderText="City" />
                        <asp:BoundField DataField="PostalCode" HeaderText="Postal Code" />
                        <asp:BoundField DataField="RoofCover" HeaderText="Roof Cover" />
                        <asp:BoundField DataField="Exterior" HeaderText="Exterior" />
                        <asp:BoundField DataField="Ownership" HeaderText="Ownership" />
                        <asp:BoundField DataField="Area" HeaderText="Area (in sq. ft.)" />
                        <asp:BoundField DataField="YearBuilt" HeaderText="Year Built" />
                        <asp:BoundField DataField="Parking" HeaderText="Parking" />
                        <asp:BoundField DataField="Garage" HeaderText="Garage" />
                        <asp:BoundField DataField="Basement" HeaderText="Basement" />
                    </Fields>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                </asp:DetailsView>
            </td>
        </tr>
        <tr>
            <td align="left" class="style3" style="padding-left:5px" colspan="2">
                <strong><span class="style12">Features:</span></strong>
                <asp:Label ID="lblFeature" runat="server" style="text-align: justify" 
                    Font-Size="Medium"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="left" style="padding-left:5px" colspan="2">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label3" runat="server" style="text-align: left; padding-left:5px" CssClass='flt' 
                    Text="Amenities" Font-Size="Large" Font-Bold></asp:Label>
                </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:DetailsView ID="detailList2DetailsView" runat="server" 
                    AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                    BorderWidth="1px" CellPadding="2" DataSourceID="detailsObjectDataSource" 
                    ForeColor="Black" GridLines="None" Height="79px" HorizontalAlign="Left" 
                    Width="541px" style="text-align: left">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <Fields>
                        <asp:TemplateField>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label1" runat="server">Refrigerator:</asp:Label>
                                            <asp:CheckBox ID="cb1" runat="server" Checked='<%# bind("Refrigerator") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="Label2" runat="server">Stove:</asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:CheckBox ID="cb2" runat="server" Checked='<%# bind("Stove") %>' 
                                                style="text-align: center" />
                                        </td>
                                        <td>
                                            <asp:Label ID="Label12" runat="server">Dishwasher: </asp:Label>
                                            <asp:CheckBox ID="cb3" runat="server" Checked='<%# bind("DishWasher") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="Label4" runat="server">Watersoftner:</asp:Label>
                                            <asp:CheckBox ID="cb4" runat="server" Checked='<%# bind("WaterSoftener") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label5" runat="server">Waterheater:</asp:Label>
                                            <asp:CheckBox ID="cb5" runat="server" Checked='<%# bind("WaterHeater") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="Label6" runat="server">CentralAC:</asp:Label>
                                            <asp:CheckBox ID="cb6" runat="server" Checked='<%# bind("CentralAC") %>' />
                                        </td>
                                        <td>
                                            &nbsp;<asp:Label ID="Label7" runat="server" Text="Centralvaccum:"></asp:Label>
                                            <asp:CheckBox ID="cb7" runat="server" Checked='<%# bind("CentralVaccum") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="Label8" runat="server">Fireplace:</asp:Label>
                                            <asp:CheckBox ID="cb8" runat="server" Checked='<%# bind("FirePlace") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;<asp:Label ID="Label9" runat="server">Heatsystem:</asp:Label>
                                            <asp:CheckBox ID="cb9" runat="server" Checked='<%# bind("HeatSystem") %>' />
                                        </td>
                                        <td>
                                            &nbsp;<asp:Label ID="Label10" runat="server">Swimmingpool:</asp:Label>
                                            <asp:CheckBox ID="cb10" runat="server" Checked='<%# bind("SwimmingPool") %>' />
                                        </td>
                                        <td>
                                            &nbsp;
                                            <asp:Label ID="Label11" runat="server">Deck:</asp:Label>
                                            &nbsp;&nbsp;
                                            <asp:CheckBox ID="cb11" runat="server" Checked='<%# bind("HeatSystem") %>' />
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Fields>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                </asp:DetailsView>
                <br />
                <br />
                <br />
                </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center" colspan="2">
                <asp:Button ID="goBackButton" runat="server" onclick="goBackButton_Click" 
                    Text="Go Back" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center" colspan="2">
                <asp:ObjectDataSource ID="detailsObjectDataSource" runat="server" 
                    SelectMethod="GetCompleteList" TypeName="BrowseHouse">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="addressDropDownList" Name="houseIDString" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="addressObjectDataSource" runat="server" 
            SelectMethod="GetHouseList" TypeName="BrowseHouse">
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="PropertyType" Type="String" />
                <asp:CookieParameter CookieName="City" Name="sCity" Type="String" />
                <asp:Parameter DefaultValue="0" Name="Price1" Type="Int32" />
                <asp:Parameter DefaultValue="0" Name="Price2" Type="Int32" />
                <asp:Parameter DefaultValue="0" Name="Bed" Type="Int32" />
                <asp:Parameter DefaultValue="0" Name="Bath" Type="Int32" />
                <asp:Parameter DefaultValue="750000" Name="MaxPrice" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
                <asp:Label ID="lblTemp" runat="server" ForeColor="Red"></asp:Label>
                </td>
        </tr>
    </table>
</asp:Content>

