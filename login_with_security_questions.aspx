<%@ Page Language="C#" AutoEventWireup="true" Inherits="pfup.login_with_security_questions" MasterPageFile="~/header_menu.master" Codebehind="login_with_security_questions.aspx.cs" %>

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
    <br/>

    <asp:Panel ID="pnlDisable" runat="server" Visible="True">
		<table>
				<tr>
					<td><asp:Label ID="lblQuestion1" runat="server" meta:resourcekey="lblQuestion1Resource1"></asp:Label></td>
					<td><asp:TextBox ID="txtAnswer1" runat="server" Width="210px" TextMode="Password" meta:resourcekey="txtAnswer1Resource1" /></td>
				</tr>
        <asp:Panel ID="pnlQuestion2" runat="server" Visible="False">
				  <tr>
					  <td><asp:Label ID="lblQuestion2" runat="server" meta:resourcekey="lblQuestion2Resource1"></asp:Label></td>
					  <td><asp:TextBox ID="txtAnswer2" runat="server" Width="210px" TextMode="Password" meta:resourcekey="txtAnswer2Resource1" /></td>
				  </tr>
				</asp:Panel>
        <asp:Panel ID="pnlQuestion3" runat="server" Visible="False">
				  <tr>
					  <td><asp:Label ID="lblQuestion3" runat="server" meta:resourcekey="lblQuestion3Resource1"></asp:Label></td>
					  <td><asp:TextBox ID="txtAnswer3" runat="server" Width="210px" TextMode="Password" meta:resourcekey="txtAnswer3Resource1" /></td>
				  </tr>
				</asp:Panel>
        <asp:Panel ID="pnlQuestion4" runat="server" Visible="False">
				  <tr>
					  <td><asp:Label ID="lblQuestion4" runat="server" meta:resourcekey="lblQuestion4Resource1"></asp:Label></td>
					  <td><asp:TextBox ID="txtAnswer4" runat="server" Width="210px" TextMode="Password" meta:resourcekey="txtAnswer4Resource1" /></td>
				  </tr>
				</asp:Panel>
		</table>
		<br/>
        <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Log In" meta:resourcekey="btnLoginResource1" />
        <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel" meta:resourcekey="btnCancelResource1" />
    </asp:Panel>
</asp:Content>


