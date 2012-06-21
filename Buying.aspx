<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Buying.aspx.cs" Inherits="Buying" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            text-align: center;
        }
        .nabor
        {
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: left">
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/icon_house.gif" 
            Height="35px" Width="33px" ImageAlign="Middle" CssClass="padding"/>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" 
            Font-Names="Monotype Corsiva" Font-Size="X-Large" ForeColor="#663300" 
            Text="Buyer Tips  " CssClass="padding"></asp:Label>
    </p>
    <hr style="width: 559px" />

    <table align="center" border="0" cellpadding="4" cellspacing="0" width="450">
        <tr>
            <td>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <table border="0" cellpadding="0" cellspacing="0" width="450">
                    <tr>
                        <td class="style3" width="25">
                            <img border="0" height="1" src="images/spacer.gif" 
                                width="25" /></td>
                        <td class="nabor" width="390">
                            <b>IMPORTANT FACTS TO CONSIDER BEFORE YOU PLAN TO BUY YOUR OWN HOME </b>
                        </td>
                        <td class="style3" width="35">
                            <img border="0" height="1" src="images/spacer.gif" 
                                width="35" /></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>    
            <td class="style3">
                <img border="0" height="2" src="images/spacer.gif" alt="Buying your Home" 
                    width="1" /></td>
        </tr>
        <tr>
            <td bgcolor="#FFFBD6" style="text-align: justify">
                <table border="0" cellpadding="4" cellspacing="0" width="450">
                    <tr>
                        <td>
                            <table border="0" cellpadding="0" cellspacing="0" width="450">
                                <tr>
                                    <td class="nabor" width="390">
                                        <b>Renting Vs. Buying </b>
                                    </td>
                                    <td width="35">
                                        <img border="0" height="1" src="images/spacer.gif" 
                                            width="35" /></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="nabor">
                            <img border="0" height="2" src="images/spacer.gif" 
                                width="1" /></td>
                    </tr>
                    <tr>
                        <td bgcolor="#FFFBD6">
                            <div align="center" class="nabor">
                                Home ownership is the single most common Canadian dreams. There are two big 
                                reasons why home buying is a national passion.
                                <br />
                                The first is that, at least historically, a house has been a good long-term 
                                investment for many Canadians. There&#39;s also something undeniably powerful about 
                                owning real estate. Unlike other investments such as stocks and bonds, a home is 
                                tangible — you can actually reach out and touch it.
                                <br />
                                The second attraction is having a place you can truly call your own. It&#39;s yours 
                                to fix up as you see fit, nobody can raise your rent, and you put an end to 
                                lugging your stuff from apartment to apartment. In other words—The Pride Of 
                                Ownership.<br />
                                To decide if buying a home is for you, you need to look at some hard numbers and 
                                some softer, lifestyle factors. First, the numbers.</div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="nabor">
                <br />
                <img border="0" height="5" src="images/spacer.gif" 
                    width="1" /></td>
        </tr>
    </table>
    <br style="text-align: left" />

</asp:Content>
