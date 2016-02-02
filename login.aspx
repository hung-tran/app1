<%@ Page Language="C#" AutoEventWireup="true" Inherits="pfup.login" MasterPageFile="~/header_menu.master" ValidateRequest="false" Codebehind="login.aspx.cs" %>

<%@ Register Src="navigation_menu.ascx" TagName="navigation_menu" TagPrefix="uc2" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="topMenu">
    <asp:Label ID="lblLanguage" runat="server" Text="Language:" meta:resourcekey="lblLanguageResource1"></asp:Label> <asp:DropDownList ID="cboLanguage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cboLanguage_SelectedIndexChanged" meta:resourcekey="cboLanguageResource1" />
</asp:Content>

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
		    <p class="sectionHeader"><asp:Label ID="lblTitle" runat="server" Text="Multi-Factor Authentication User Log In" meta:resourcekey="lblTitleResource1"></asp:Label></p>
	    </div>
	    <div class="divInstructionsRight"><div id="customize180"></div></div>
    </div>
    <br/>

	    <div style="width:650px">
        <asp:Panel ID="pnlMessage" runat="server" Visible="False" meta:resourcekey="pnlMessageResource1">
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" meta:resourcekey="lblMessageResource1"></asp:Label>
        </asp:Panel>
      </div>
      
    <asp:Panel ID="pnlDisable" runat="server" Visible="True">
		<h5><asp:Label ID="lblUsername" runat="server" Text="Username" meta:resourcekey="lblUsernameResource1"></asp:Label></h5>
		<asp:TextBox ID="txtUsername" runat="server" Width="125px" meta:resourcekey="txtUsernameResource1" />

		<h5><asp:Label ID="lblPassword" runat="server" Text="Password" meta:resourcekey="lblPasswordResource1"></asp:Label></h5>
		<asp:TextBox ID="txtPassword" runat="server" Width="125px" TextMode="Password" meta:resourcekey="txtPasswordResource1" />

		<div style='padding: 10px 0px 0px 0px;'>
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Log In" meta:resourcekey="btnLoginResource1" />
		</div>

		<div style='padding: 10px 0px 0px 0px;'>
      <asp:Panel ID="pnlWithoutPhone" runat="server" meta:resourcekey="pnlWithoutPhoneResource1" Visible="False">
		    <asp:checkbox ID="chkWithoutPhone" runat="server" Text="Log in without my phone" meta:resourcekey="chkWithoutPhoneResource1" />
			</asp:Panel>
		</div>
		</asp:Panel>
</asp:Content>


