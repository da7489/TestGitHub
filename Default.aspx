<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="Stylesheet" type="text/css" href="style/jquery.hoverscroll.css" />
    <link type="text/css" rel="stylesheet" href="style/main.css" />
    <script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery.hoverscroll.js"></script>
    <script type="text/javascript" src="js/JavaWorks.js"></script>
    <style type="text/css">
        .style1
        {
            width: 291px;
        }
        .style2
        {
            width: 584px;
        }
        
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <hr class="imageBorder" style="background-color:Maroon; width: 639px;" />
    <div id="centerContainer">
        <div id="newHouse">
                <ul id="my-list">
                    <li style="width:220px; height:175px;"><img src="images/1.jpg" alt="" 
                            style="height: 165px; width: 254px" /></li>
                    <li style="width:220px; height:175px;"><img src="images/2.JPG" alt="" /></li>
                    <li style="width:220px; height:175px;"><img src="images/3.JPG" alt="" /></li>
                    <li style="width:220px; height:175px;"><img src="images/4.JPG" alt="" /></li>
                    <li style="width:220px; height:175px;"><img src="images/5.jpg" alt="" /></li>
                    <li style="width:220px; height:175px;"><img src="images/6.JPG" alt="" /></li>
                    <li style="width:220px; height:175px;"><img src="images/7.JPG" alt="" /></li>
                    <li style="width:220px; height:175px;"><img src="images/8.JPG" alt="" /></li>
                    <li style="width:220px; height:175px;"><img src="images/9.JPG" alt="" /></li>
                    <li style="width:220px; height:175px;"><img src="images/10.JPG" alt="" /></li>
                </ul>
            </div>
    </div>
        <br />
        <hr class="imageBorder" style="background-color:Maroon; width: 643px; display: block;" />
        <table class="style2">
        <tr> 
            <td style="text-align: center; border: 1px solid black; text-align: center" class="style1">
                <%--<a href="DetailListings.aspx">--%>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/1.jpg" PostBackUrl="~/DetailListings.aspx?HouseID='{0}'" 
                    Height="163px" style="margin-left: 15px; margin-top: 16px" Width="263px" />
            <br />
                
            <div style="padding-left: 15px; padding-right: 10px; padding-top: 15px; margin-left: 40px;">
            <b>
            <asp:Label ID="lblH1" runat="server" Text="FirstHouse"></asp:Label>
                <br />
                <br />
                <asp:DetailsView ID="house1DetailsView" runat="server" AutoGenerateRows="False"
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" DataSourceID="home1DataObjectDataSource" ForeColor="Black" 
                    GridLines="None" Height="50px" Width="251px" HorizontalAlign="Center">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <Fields>
                        <asp:BoundField DataField="Bedroom" HeaderText="Bedrooms" />
                        <asp:BoundField DataField="Bathroom" HeaderText="Bathrooms" />
                        <asp:BoundField DataField="Area" HeaderText="Area (sq. ft.)" />
                    </Fields>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                </asp:DetailsView>
                <br />
                </b>
            </div>
                <asp:ObjectDataSource ID="home1DataObjectDataSource" runat="server" 
                    SelectMethod="GetFirstHouseID" TypeName="BrowseHouse"></asp:ObjectDataSource>
                Virtual Tour:&nbsp;
            <asp:HyperLink ID="virtualPropertyLink" 
                    NavigateUrl="http://www.virtualproperties.ca/a4336/index1.php" runat="server" 
                    ImageUrl="~/images/virtour.gif" Target="_blank">Virtual Tour: 
            </asp:HyperLink><br />
            <div class="more" style="text-align: right; padding-right: 10px">
            <b>
            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/DetailListings.aspx?HouseID=H1" runat="server">
                                               More...</asp:HyperLink>
            </b>
            </div>
                <%--</asp:HyperLink>--%>
            </td>
            
            <td style="padding-left: 20px; border: 1px solid black; text-align: center;" 
                class="style1">
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/2.jpg" 
                    PostBackUrl="~/DetailListings.aspx?HouseID='H{0}'" style="z-index: -1" />
            
            <div style="padding-left: 0px; padding-right: 0px; padding-top: 15px; height: 147px;">
                <b>
                <asp:Label ID="lblH2" runat="server" Text="SecondHouse"></asp:Label>
                <br />
                <br />
                <asp:DetailsView ID="house2DetailsView" runat="server" AutoGenerateRows="False"
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" DataSourceID="home2ObjectDataSource" ForeColor="Black" 
                    GridLines="None" Height="50px" Width="251px" HorizontalAlign="Center">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <Fields>
                        <asp:BoundField DataField="Bedroom" HeaderText="Bedrooms" />
                        <asp:BoundField DataField="Bathroom" HeaderText="Bathrooms" />
                        <asp:BoundField DataField="Area" HeaderText="Area (sq. ft.)" />
                    </Fields>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                </asp:DetailsView>
                <br />
                </b>
            </div>

                <asp:ObjectDataSource ID="home2ObjectDataSource" runat="server" 
                    SelectMethod="GetHouseIDString" TypeName="BrowseHouse">
                </asp:ObjectDataSource>
                Virtual Tour:&nbsp;
            <asp:HyperLink ID="HyperLink2" 
                    NavigateUrl="http://www.virtualproperties.ca/a4336/index1.php" runat="server" 
                    ImageUrl="~/images/virtour.gif">Virtual Tour: 
            </asp:HyperLink><br />
            <div class="more" style="text-align: right; padding-right: 10px">
            <b>
            <asp:HyperLink ID="HyperLink3" NavigateUrl="~/DetailListings.aspx?HouseID=H8" runat="server">
                                               More...</asp:HyperLink>
            </b>
		</div>
		</td>
		</tr>
        <tr>
        <td>
            <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
        </td>
        </tr>
	</table>
</asp:Content>

