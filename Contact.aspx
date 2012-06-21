<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            float: left;
        }
        .style2
        {
            text-align: center;
        }
        .style9
        {
            /*border: 1px solid grey;*/
            text-align: center;
            width: 25%;
        }
        .style11
        {
            width: 426px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td style="text-align: center;" colspan="2">
                <h3 style="width: 576px">
                    <strong>Have questions or need more informtion about any property? <br />
                    Please fill out this form and we&#39;ll get back to you shortly</strong>&nbsp;</h3>
            </td>
        </tr>
        <tr>
            <td class="style9">
                First name:</td>
            <td style="text-align: left" class="style11">
                <asp:TextBox ID="firstNameTextBox" runat="server" style="margin-left: 0px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="firstNameTextBox" Display="None" 
                    ErrorMessage="First Name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style9">
                Last name:</td>
            <td style="text-align: left" class="style11">
                <asp:TextBox ID="lastNameTextBox" runat="server" style="margin-left: 0px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="lastNameTextBox" Display="None" 
                    ErrorMessage="Last Name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style9">
                Email:</td>
            <td style="text-align: left" class="style11">
                <asp:TextBox ID="emailTextBox" runat="server" style="margin-left: 0px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="emailTextBox" Display="None" 
                    ErrorMessage="Email is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style9">
                Phone:</td>
            <td style="text-align: left" class="style11">
                <asp:TextBox ID="phoneTextBox" runat="server" style="margin-left: 0px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="phoneTextBox" Display="None" 
                    ErrorMessage="Phone is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style9">
                Subject:</td>
            <td style="text-align: left" class="style11">
                <asp:TextBox ID="subjectTextBox" runat="server" style="margin-left: 0px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style9" valign="top">
                Message:</td>
            <td style="text-align: left" class="style11">
                <asp:TextBox ID="messageTextBox" runat="server" Height="65px" 
                    style="margin-left: 0px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="messageTextBox" Display="None" 
                    ErrorMessage="Message is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
                <asp:ValidationSummary ID="contactValidationSummary" runat="server" 
                    ForeColor="Red" />
                <br />
            </td>
        </tr>
        <tr>
            <td style="text-align: center" colspan="2" valign="top">
                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Button ID="submitButton" runat="server" onclick="submitButton_Click" 
                    style="text-align: right" Text="Submit" />
            </td>
            <td style="text-align: left" class="style11">
                <asp:Button ID="clearButton" runat="server" Text="Clear" 
                    onclick="clearButton_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

