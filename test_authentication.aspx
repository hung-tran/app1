<%@ Page Language="C#" AutoEventWireup="true" Inherits="pfup.test_authentication" MasterPageFile="~/header_menu.master" Codebehind="test_authentication.aspx.cs" %>

<%@ Register Src="top_menu.ascx" TagName="top_menu" TagPrefix="uc1" %>

<%@ Register Src="navigation_menu.ascx" TagName="navigation_menu" TagPrefix="uc2" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="topMenu">
    <uc1:top_menu ID="Top_menu1" runat="server" />
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
		    <p class="sectionHeader"><asp:Label ID="lblTitle" runat="server" Text="My Account:" meta:resourcekey="lblTitleResource1"></asp:Label> <span class="sectionHeaderAccent"><asp:Label ID="lblSubtitle" runat="server" Text="Test Authentication" meta:resourcekey="lblSubtitleResource1"></asp:Label></span></p>
		    <p>
		      <asp:Label ID="lblInstructions" runat="server" Text="Test this user's phone call authentication." meta:resourcekey="lblInstructionsResource1"></asp:Label>
		    </p>
	    </div>
	    <div class="divInstructionsRight"><div id="userAdmin180"></div></div>
    </div>
    <br/>

    <div style="width:650px">
      <asp:Panel ID="pnlMessage" runat="server" Visible="False" meta:resourcekey="pnlMessageResource1">
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red" meta:resourcekey="lblMessageResource1"></asp:Label>
      </asp:Panel>
    </div>

    <asp:Panel ID="pnlDisable" runat="server" meta:resourcekey="pnlDisableResource1">
    <asp:Panel ID="pnlTest" runat="server" Visible="False" meta:resourcekey="pnlTestResource1">
	    <div style="padding: 10px 0px 0px 0px;">
            <asp:Button ID="btnTest" runat="server" OnClick="btnTest_Click" Text="Test" meta:resourcekey="btnTestResource1" />
	    </div>
    </asp:Panel>

    <asp:Panel ID="pnlOneTimePasscode" runat="server" Visible="False" meta:resourcekey="pnlOneTimePasscodeResource1">
      <h5><asp:Label ID="lblOneTimePasscode" runat="server" meta:resourcekey="lblOneTimePasscodeResource1" ></asp:Label></h5>
      <asp:TextBox ID="txtOneTimePasscode" runat="server" Width="210px" TextMode="Password" meta:resourcekey="txtOneTimePasscodeResource1" />
      <br/>
	    <div  style="padding: 10px 0px 0px 0px;">
            <asp:Button ID="btnAuthenticateOneTimePasscode" runat="server" OnClick="btnAuthenticateOneTimePasscode_Click" Text="Authenticate" meta:resourcekey="btnAuthenticateOneTimePasscodeResource1" />
	    </div>
    </asp:Panel>

    <asp:Panel ID="pnlOathCode" runat="server" Visible="False" meta:resourcekey="pnlOathCodeResource1">
      <h5><asp:Label ID="lblCode" runat="server" Text="Code" meta:resourcekey="lblCodeResource1"></asp:Label></h5>
      <asp:TextBox ID="txtCode" runat="server" Width="210px" TextMode="Password" meta:resourcekey="txtCodeResource1" />
      <br/>
	    <div  style="padding: 10px 0px 0px 0px;">
            <asp:Button ID="btnAuthenticateOathCode" runat="server" OnClick="btnAuthenticateOathCode_Click" Text="Authenticate" meta:resourcekey="btnAuthenticateOathCodeResource1" />
	    </div>
    </asp:Panel>
    </asp:Panel>
    <br />
    <asp:LinkButton ID="lbBack" runat="server" OnClick="lbBack_Click" Text="Back" meta:resourcekey="lbBackResource1"></asp:LinkButton><br />
</asp:Content>


