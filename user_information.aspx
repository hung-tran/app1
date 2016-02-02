<%@ Page Language="C#" AutoEventWireup="true" Inherits="pfup.user_information"  MasterPageFile="~/header_menu.master" Codebehind="user_information.aspx.cs" %>

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
		    <p class="sectionHeader"><asp:Label ID="lblTitle" runat="server" Text="My Account:" meta:resourcekey="lblTitleResource1"></asp:Label> <span class="sectionHeaderAccent"><asp:Label ID="lblSubtitle" runat="server" Text="User Information" meta:resourcekey="lblSubtitleResource1"></asp:Label></span></p>
		    <p>
		      <asp:Label ID="lblInstructions" runat="server" Text="Specify new account information." meta:resourcekey="lblInstructionsResource1"></asp:Label>
		    </p>
 	    </div>
	    <div class="divInstructionsRight">
        <asp:Panel ID="pnlUsers180" runat="server" meta:resourcekey="pnlUsers180Resource1"><div id="users180"></div></asp:Panel>
        <asp:Panel ID="pnlUserAdmin180" runat="server" Visible="False" meta:resourcekey="pnlUserAdmin180Resource1"><div id="userAdmin180"></div></asp:Panel>
	    </div>
    </div>
    <br/>

    <div style="width:650px">
      <asp:Panel ID="pnlMessage" runat="server" Visible="False" meta:resourcekey="pnlMessageResource1">
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red" meta:resourcekey="lblMessageResource1"></asp:Label>
      </asp:Panel>
    </div>

    <asp:Panel ID="pnlDisable" runat="server" meta:resourcekey="pnlDisableResource1">
	    <h5><asp:Label ID="lblFirstName" runat="server" Text="New First Name" meta:resourcekey="lblFirstNameResource1"></asp:Label></h5>
	    <asp:TextBox ID="txtFirstName" runat="server" Width="210px" meta:resourcekey="txtFirstNameResource1" />
	    <h5><asp:Label ID="lblLastName" runat="server" Text="New Last Name" meta:resourcekey="lblLastNameResource1"></asp:Label></h5>
	    <asp:TextBox ID="txtLastName" runat="server" Width="210px" meta:resourcekey="txtLastNameResource1" />
	    <h5><asp:Label ID="lblEmailAddress" runat="server" Text="New Email Address" meta:resourcekey="lblEmailAddressResource1"></asp:Label></h5>
	    <asp:TextBox ID="txtEmailAddress" runat="server" Width="210px" meta:resourcekey="txtEmailAddressResource1" />
	    <h5><asp:Label ID="lblUserGroup" runat="server" Text="New User Group" meta:resourcekey="lblUserGroupResource1"></asp:Label></h5>
	    <asp:TextBox ID="txtUserGroup" runat="server" Width="210px" meta:resourcekey="txtUserGroupResource1" />

	    <div  style="padding: 10px 0px 0px 0px;">
            <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" meta:resourcekey="btnSaveResource1" />
	    </div>
	  </asp:Panel>
    <br />
    <asp:LinkButton ID="lbBack" runat="server" OnClick="lbBack_Click" Text="Back" meta:resourcekey="lbBackResource1"></asp:LinkButton><br />
</asp:Content>