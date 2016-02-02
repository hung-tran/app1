<%@ Control Language="C#" AutoEventWireup="true" Inherits="pfup.top_menu" Codebehind="top_menu.ascx.cs" %>
  <asp:LinkButton ID="lbReturnLink" runat="server" OnClick="lbReturnLink_Click" Text="Return Link" meta:resourcekey="lbReturnLinkResource1"></asp:LinkButton>
  <asp:Label ID="lblReturnLink" runat="server" Text="|" meta:resourcekey="lblReturnLinkResource1"></asp:Label>
  <asp:LinkButton ID="lbMain" runat="server" OnClick="lbMain_Click" Text="Main" meta:resourcekey="lbMainResource1"></asp:LinkButton>
  |
  <asp:LinkButton ID="lbLogOut" runat="server" OnClick="lbLogOut_Click" Text="Log Out" meta:resourcekey="lbLogOutResource1"></asp:LinkButton>
