<%@ Control Language="C#" AutoEventWireup="true" CodeFile="HGLogon.ascx.cs" Inherits="HGLogon" %>
<asp:LoginView ID="LoginView1" runat="server">
    <AnonymousTemplate>
        <asp:LoginName ID="LoginName2" runat="server" />
        <br />
        <asp:LoginStatus ID="LoginStatus1" runat="server" />
    </AnonymousTemplate>
    <LoggedInTemplate>
        <asp:LoginName ID="LoginName1" runat="server"/>
        <br />
        <asp:LoginStatus ID="LoginStatus2" runat="server"/>
    </LoggedInTemplate>
    <RoleGroups>
        <asp:RoleGroup Roles="Administrator">
            <ContentTemplate>
                <b style="text-align: center">Site Admin<br />
                </b>
                <asp:LoginName ID="LoginName2" runat="server"/>
                <br />
                <asp:LoginStatus ID="LoginStatus3" runat="server"/>
            </ContentTemplate>
        </asp:RoleGroup>
        <asp:RoleGroup Roles="Staff">
            <ContentTemplate>
                <b style="text-align: center">Staff: </b>
                <asp:LoginName ID="LoginName3" runat="server" />
                <br />
                <asp:LoginStatus ID="LoginStatus4" runat="server" />
            </ContentTemplate>
        </asp:RoleGroup>
    </RoleGroups>
</asp:LoginView>
