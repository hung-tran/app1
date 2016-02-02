<%@ Page Language="C#" AutoEventWireup="true" Inherits="pfup.oath_code" MasterPageFile="~/header_menu.master" ValidateRequest="false" Codebehind="oath_code.aspx.cs" %>

<%@ Register Src="navigation_menu.ascx" TagName="navigation_menu" TagPrefix="uc2" %>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="navigationMenu">
    <uc2:navigation_menu ID="navigation_menu1" runat="server" />
</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="helpLink">
    <a href="" style="color:#f8971c; text-decoration:none" runat="server" id="lnkHelp">
      <span id="iconHelp"><img src="images/spacer.gif" alt="Help" width="9" height="9" style="border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none;"/></span> <asp:Label ID="lblHelp" runat="server" Text="Help" meta:resourcekey="lblHelpResource1"></asp:Label>
    </a>
</asp:Content>

<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="pageContent">
    <div id="divInstructions" runat="server" class="divInstructions">
	    <div class="divInstructionsLeft">
		    <p class="sectionHeader"><asp:Label ID="lblTitle" runat="server" Text="Authentication Code" meta:resourcekey="lblTitleResource1"></asp:Label></p>
		    <p>
		        <asp:Label ID="lblInstructions" runat="server" Text="Enter the current code displayed in the Multi-Factor Authentication mobile app or token to complete your verification." meta:resourcekey="lblInstructionsResource1"></asp:Label>
		    </p>
	    </div>
	    <div class="divInstructionsRight"><div id="customize180"></div></div>
    </div>
    <br/>

    <div style="width:650px">
      <asp:Panel ID="pnlMessage" runat="server" Visible="False" meta:resourcekey="pnlMessageResource1">
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red" meta:resourcekey="lblMessageResource1"></asp:Label>
      </asp:Panel>
    </div>

    <asp:Panel ID="pnlDisable" runat="server" meta:resourcekey="pnlDisableResource1">
		<h5><asp:Label ID="lblCode" runat="server" Text="Code" meta:resourcekey="lblCodeResource1"></asp:Label></h5>
		<asp:TextBox ID="txtCode" runat="server" Width="125px" meta:resourcekey="txtCodeResource1" />

		<div style='padding: 10px 0px 0px 0px;'>
      <asp:Button ID="btnAuthenticate" runat="server" OnClick="btnAuthenticate_Click" Text="Log In" meta:resourcekey="btnAuthenticateResource1" />
      <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel" meta:resourcekey="btnCancelResource1" />
		</div>
		</asp:Panel>
</asp:Content>



