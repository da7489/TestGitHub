<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewListing.aspx.cs" Inherits="admin_newListing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
    {
    }
        .style3
    {
        height: 24px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td align="center" class="style3">
                <h3>
                    Enter New Listing
                </h3>
            </td>
        </tr>
        <tr>
            <td align="center" valign="top">
                
                <asp:DetailsView ID="dvHouseList" runat="server" AutoGenerateRows="False" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" DataSourceID="House2ObjectDataSource" 
                    ForeColor="Black" GridLines="None" Height="50px" Width="125px" 
                    oniteminserted="dvHouseList_ItemInserted">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <Fields>
                        <asp:BoundField DataField="HouseID" HeaderText="House ID" Visible="False" />
                        <asp:TemplateField HeaderText="Street Number">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("BldNumber") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("BldNumber") %>'></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                    ControlToValidate="TextBox1" Display="None" 
                                    ErrorMessage="Invalid format for street number" ForeColor="Red" 
                                    ValidationExpression="^[\w1-9]+[\w0-9]*(((-|/){1})?[\w0-9]+)?$"></asp:RegularExpressionValidator>
                                <br />
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="TextBox1" Display="None" 
                                    ErrorMessage="Street number is required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("BldNumber") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Street Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("StreetName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("StreetName") %>'></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="TextBox2" Display="None" 
                                    ErrorMessage="Street name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="TextBox2" Display="None" 
                                    ErrorMessage="Invalid input for street name" ForeColor="Red" 
                                    ValidationExpression="^[a-zA-Z]+( [a-zA-Z]+)?$">*</asp:RegularExpressionValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("StreetName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="StreetDirection" HeaderText="Street Direction" />
                        <asp:BoundField DataField="UnitNumber" HeaderText="Unit/Apartment Number" />
                        <asp:TemplateField HeaderText="City">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList7" runat="server" 
                                    SelectedValue='<%# bind("City") %>'>
                                    <asp:ListItem>Kitchener</asp:ListItem>
                                    <asp:ListItem>Waterloo</asp:ListItem>
                                    <asp:ListItem>Cambridge</asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="DropDownList7" Display="None" 
                                    ErrorMessage="City name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <br />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label25" runat="server" Text='<%# bind("City") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Postal Code">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("PostalCode") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("PostalCode") %>'></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="TextBox5" Display="None" 
                                    ErrorMessage="Postal Code is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="TextBox5" Display="None" 
                                    ErrorMessage="Incorrect format for postal code" ForeColor="Red" 
                                    ValidationExpression="^([A-Za-z]\d[A-Za-z])\ {0,1}(\d[A-Za-z]\d)$">*</asp:RegularExpressionValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("PostalCode") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Province">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Province") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList9" runat="server" AutoPostBack="True" 
                                    Enabled="False" SelectedValue='<%# bind("Province") %>'>
                                    <asp:ListItem>Ontario</asp:ListItem>
                                </asp:DropDownList>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("Province") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Property Tax">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("Tax") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Tax") %>'></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="TextBox7" Display="None" ErrorMessage="Tax is required" 
                                    ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                                    ControlToValidate="TextBox7" Display="None" 
                                    ErrorMessage="Incorrect format for tax" Operator="DataTypeCheck" 
                                    Type="Currency">*</asp:CompareValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("Tax") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Price">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                                <br />
                                <asp:CompareValidator ID="CompareValidator3" runat="server" 
                                    ControlToValidate="TextBox8" Display="None" 
                                    ErrorMessage="Incorrect format for price" ForeColor="Red" 
                                    Operator="DataTypeCheck" Type="Currency">*</asp:CompareValidator>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                    ControlToValidate="TextBox8" Display="None" 
                                    ErrorMessage="Price is required field" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label10" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Bed Rooms">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("Bedroom") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Bedroom") %>'></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                    ControlToValidate="TextBox9" Display="None" 
                                    ErrorMessage="Number of bedroom is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <br />
                                <asp:CompareValidator ID="CompareValidator4" runat="server" 
                                    ControlToValidate="TextBox9" Display="None" 
                                    ErrorMessage="Invalid Input for bedrooms" ForeColor="Red" 
                                    Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label21" runat="server" Text='<%# Bind("Bedroom") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Bath Rooms">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Bathroom") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Bathroom") %>'></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                    ControlToValidate="TextBox3" Display="None" 
                                    ErrorMessage="Number of bathroom is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator5" runat="server" 
                                    ControlToValidate="TextBox3" Display="None" 
                                    ErrorMessage="Incorrect input for bathroom" ForeColor="#FF3300" 
                                    Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Bathroom") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="House Type">
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server" DataTextField="HouseType" 
                                    DataValueField="HouseType" AutoPostBack="True" 
                                    SelectedValue='<%# bind("houseType") %>'>
                                    <asp:ListItem>Single Detached</asp:ListItem>
                                    <asp:ListItem>Semi-Detached</asp:ListItem>
                                    <asp:ListItem>Townhouse</asp:ListItem>
                                    <asp:ListItem>Bunglow</asp:ListItem>
                                    <asp:ListItem>Apartment</asp:ListItem>
                                </asp:DropDownList>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label26" runat="server" Text='<%# bind("houseType") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="House Style">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList3" runat="server" DataTextField="HouseStyle" 
                                    DataValueField="HouseStyle" AutoPostBack="True" 
                                    SelectedValue='<%# bind("houseStyle") %>'>
                                    <asp:ListItem>Single Storey</asp:ListItem>
                                    <asp:ListItem>Two Storey</asp:ListItem>
                                    <asp:ListItem>Multi Storey</asp:ListItem>
                                    <asp:ListItem>Back Split</asp:ListItem>
                                    <asp:ListItem>High Rise</asp:ListItem>
                                </asp:DropDownList>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label27" runat="server" Text='<%# bind("houseStyle") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Description" HeaderText="Description" />
                        <asp:BoundField DataField="Parking" HeaderText="Parking" />
                        <asp:BoundField DataField="Garage" HeaderText="Garage" />
                        <asp:TemplateField HeaderText="Basement">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList4" runat="server" DataTextField="Basement" 
                                    DataValueField="Basement" SelectedValue='<%# bind("Basement") %>'>
                                    <asp:ListItem>Furnished</asp:ListItem>
                                    <asp:ListItem>Unfurnished</asp:ListItem>
                                    <asp:ListItem>Furnished w/ Walkout</asp:ListItem>
                                    <asp:ListItem>Unfurnished w/ Walkout</asp:ListItem>
                                    <asp:ListItem>N/A</asp:ListItem>
                                </asp:DropDownList>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label28" runat="server" Text='<%# bind("Basement") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Amenities">
                            <InsertItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="left" class="style8">
                                            <asp:Label ID="Label1" runat="server" style="text-align: left" 
                                                Text="Refrigerator:"></asp:Label>
                                        </td>
                                        <td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:CheckBox ID="CheckBox1" runat="server" 
                                                Checked='<%# bind("Refrigerator") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text="Stove:"></asp:Label>
                                        </td>
                                        <td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                                            <asp:Label ID="Label4" runat="server" Text="Washer/Dryer:"></asp:Label>
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
                                            <asp:Label ID="Label5" runat="server" Text="Water Softener:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox5" runat="server" 
                                                Checked='<%# bind("Watersoftener") %>' />
                                        </td>
                                        <td class="style10">
                                            <asp:Label ID="Label6" runat="server" Text="Water Heater:"></asp:Label>
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
                                            <asp:Label ID="Label7" runat="server" Text="Central Vaccum:"></asp:Label>
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
                                            <asp:Label ID="Label9" runat="server" Text="Heating System:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox9" runat="server" 
                                                Checked='<%# bind("HeatSystem") %>' />
                                        </td>
                                        <td class="style10">
                                            <asp:Label ID="Label10" runat="server" Text="Swimming Pool:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox10" runat="server" 
                                                Checked='<%# bind("SwimmingPool") %>' />
                                        </td>
                                        <td class="style10">
                                        </td>
                                    </tr>
                                </table>
                            </InsertItemTemplate>
                        <ItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="left" class="style8">
                                            <asp:Label ID="Label11" runat="server" style="text-align: left" 
                                                Text="Refrigerator:"></asp:Label>
                                        </td>
                                        <td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:CheckBox ID="CheckBox11" runat="server" 
                                                Checked='<%# bind("Refrigerator") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="Label12" runat="server" Text="Stove:"></asp:Label>
                                        </td>
                                        <td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:CheckBox ID="CheckBox12" runat="server" Checked='<%# bind("Stove") %>' />
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style9">
                                            <asp:Label ID="Label13" runat="server" Text="Dishwasher:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox13" runat="server" 
                                                Checked='<%# bind("DishWasher") %>' />
                                        </td>
                                        <td class="style10">
                                            <asp:Label ID="Label14" runat="server" Text="Washer/Dryer:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox14" runat="server" 
                                                Checked='<%# bind("WasherDryer") %>' />
                                        </td>
                                        <td class="style10">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style9">
                                            <asp:Label ID="Label15" runat="server" Text="Water Softener:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox15" runat="server" 
                                                Checked='<%# bind("Watersoftener") %>' />
                                        </td>
                                        <td class="style10">
                                            <asp:Label ID="Label16" runat="server" Text="Water Heater:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox16" runat="server" 
                                                Checked='<%# bind("WaterHeater") %>' />
                                        </td>
                                        <td class="style10">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style9">
                                            <asp:Label ID="Label17" runat="server" Text="Central Vaccum:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox17" runat="server" 
                                                Checked='<%# bind("CentralVaccum") %>' />
                                        </td>
                                        <td class="style10">
                                            <asp:Label ID="Label18" runat="server" Text="Fireplace:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox18" runat="server" 
                                                Checked='<%# bind("FirePlace") %>' />
                                        </td>
                                        <td class="style10">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style9">
                                            <asp:Label ID="Label19" runat="server" Text="Heating System:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox19" runat="server" 
                                                Checked='<%# bind("HeatSystem") %>' />
                                        </td>
                                        <td class="style10">
                                            <asp:Label ID="Label20" runat="server" Text="Swimming Pool:"></asp:Label>
                                        </td>
                                        <td class="style10">
                                            <asp:CheckBox ID="CheckBox20" runat="server" 
                                                Checked='<%# bind("SwimmingPool") %>' />
                                        </td>
                                        <td class="style10">
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="LotSize" HeaderText="Lot Size" />
                        <asp:TemplateField HeaderText="Area">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("Area") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("Area") %>'></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                    ControlToValidate="TextBox10" Display="None" ErrorMessage="Area is required">*</asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label22" runat="server" Text='<%# Bind("Area") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="RoofCover" HeaderText="Roof Cover" />
                        <asp:BoundField DataField="Exterior" HeaderText="Exterior" />
                        <asp:BoundField DataField="Ownership" HeaderText="Ownership" />
                        <asp:TemplateField HeaderText="Status">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox14" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList8" runat="server" 
                                    SelectedValue='<%# bind("Status") %>'>
                                    <asp:ListItem>NEW</asp:ListItem>
                                    <asp:ListItem>OLD</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label23" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Seller ID">
 
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList5" runat="server">
                                </asp:DropDownList>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList5" runat="server">
                                </asp:DropDownList>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            
                            </EditItemTemplate>
 
                            <InsertItemTemplate>
                                <asp:DropDownList ID="sellerinsertDropDownList" runat="server" 
                                    DataSourceID="House2ObjectDataSource" DataTextField="sellerID" 
                                    DataValueField="sellerID" SelectedValue='<%# bind("sellerID") %>'>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="insertSellerSqlDataSource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ListingConnection %>" 
                                    SelectCommand="SELECT Name + '' + '(' + Phone + ')' AS Expr1 FROM tbl_sellerInfo">
                                </asp:SqlDataSource>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="sellerDropDownList" runat="server" 
                                    DataSourceID="House2ObjectDataSource" DataTextField="sellerID" 
                                    DataValueField="sellerID" Enabled="False" 
                                    SelectedValue='<%# bind("sellerID") %>'>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="sellerddlSqlDataSource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ListingConnection %>" 
                                    SelectCommand="SELECT Name + '' + '(' + Phone + ')' AS Expr1 FROM tbl_sellerInfo WHERE (sellerID IN (SELECT TOP (1) SellerID FROM tbl_HouseInfo ORDER BY HouseID DESC))">
                                </asp:SqlDataSource>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="DatePosted" HeaderText="DatePosted" />
                        <asp:TemplateField HeaderText="Year Built">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox15" runat="server" Text='<%# Bind("YearBuilt") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("YearBuilt") %>'></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                    ControlToValidate="TextBox12" Display="None" 
                                    ErrorMessage="Date posted is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label24" runat="server" Text='<%# Bind("YearBuilt") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowInsertButton="True" ButtonType="Button" />
                    </Fields>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                </asp:DetailsView>
                
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    DisplayMode="List" ForeColor="Red" />
                
            </td>
        </tr>
        <tr>
            <td align="center" valign="top">
                
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style2">
                
            <div>
                <script src="../js/jquery-1.3.2.js" type="text/javascript">
                </script>
                <script src="../js/jquery.MultiFile.js" type="text/javascript">
                </script>
                <asp:Label ID="Label29" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="#CC3300" Text="Select images to upload: "></asp:Label>
                <asp:FileUpload ID="fileUpload1" runat="server" class="multi" />
                
                <br />
                &nbsp;<asp:Button ID="btnUpload" runat="server" Height="26px" Text="Insert" onclick="btnUpload_Click" />
                <br />
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
            </div>
            </td>
        </tr>
        <tr>
            <td align="center">
                
                <asp:ObjectDataSource ID="House2ObjectDataSource" runat="server" 
                                    SelectMethod="GetListings" TypeName="BrowseHouse" 
                    DataObjectTypeName="BrowseHouse" InsertMethod="Insert" 
                    onselected="House2ObjectDataSource_Selected">
                </asp:ObjectDataSource>
                
                <asp:Label ID="lblClick" runat="server"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td align="center">
                
                &nbsp;</td>
        </tr>
    </table>

    </asp:Content>

