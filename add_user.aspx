<%@ Page Language="C#" AutoEventWireup="true" Inherits="pfup.add_user" MasterPageFile="~/header_menu.master" Codebehind="add_user.aspx.cs" %>

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
		    <p class="sectionHeader"><asp:Label ID="lblTitle" runat="server" Text="User Administration:" meta:resourcekey="lblTitleResource1"></asp:Label> <span class="sectionHeaderAccent"><asp:Label ID="lblSubtitle" runat="server" Text="Add User" meta:resourcekey="lblSubtitleResource1"></asp:Label></span></p>
		    <p>
			    <asp:Label ID="lblInstructions" runat="server" Text="Specify the user's account information and click the Add button." meta:resourcekey="lblInstructionsResource1"></asp:Label>
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
	    <h5><asp:Label ID="lblUsername" runat="server" Text="Username" meta:resourcekey="lblUsernameResource1"></asp:Label></h5>
	    <asp:TextBox ID="txtUsername" runat="server" Width="210px" meta:resourcekey="txtUsernameResource1" />
	    
      <asp:Panel ID="pnlUserInformation" runat="server" Visible="False" meta:resourcekey="pnlUserInformationResource1">
	      <h5><asp:Label ID="lblFirstName" runat="server" Text="First Name" meta:resourcekey="lblFirstNameResource1"></asp:Label></h5>
	      <asp:TextBox ID="txtFirstName" runat="server" Width="210px" meta:resourcekey="txtFirstNameResource1" />
	      <h5><asp:Label ID="lblLastName" runat="server" Text="Last Name" meta:resourcekey="lblLastNameResource1"></asp:Label></h5>
	      <asp:TextBox ID="txtLastName" runat="server" Width="210px" meta:resourcekey="txtLastNameResource1" />
	      <h5><asp:Label ID="lblEmailAddress" runat="server" Text="Email Address" meta:resourcekey="lblEmailAddressResource1"></asp:Label></h5>
	      <asp:TextBox ID="txtEmailAddress" runat="server" Width="210px" meta:resourcekey="txtEmailAddressResource1" />
	      <h5><asp:Label ID="lblUserGroup" runat="server" Text="User Group" meta:resourcekey="lblUserGroupResource1"></asp:Label></h5>
	      <asp:TextBox ID="txtUserGroup" runat="server" Width="210px" meta:resourcekey="txtUserGroupResource1" />
      </asp:Panel>

      <asp:Panel ID="pnlPrimary" runat="server" Visible="False" meta:resourcekey="pnlPrimaryResource1">
        <h5><asp:Label ID="lblPrimary" runat="server" Text="PRIMARY" meta:resourcekey="lblPrimaryResource1"></asp:Label></h5>
      </asp:Panel>
      <asp:Panel ID="pnlPhone" runat="server" Visible="False" meta:resourcekey="pnlPhoneResource1">
	      <h5><asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number" meta:resourcekey="lblPhoneNumberResource1"></asp:Label></h5>
	      <asp:DropDownList ID="cboCountryCode" runat="server" meta:resourcekey="cboCountryCodeResource1" />
	      <asp:TextBox ID="txtPhone" runat="server" Width="210px" meta:resourcekey="txtPhoneResource1" />
        <asp:Panel ID="pnlExtension" runat="server" Visible="False" meta:resourcekey="pnlExtensionResource1">
          <h5><asp:Label ID="lblExtension" runat="server" Text="Extension" meta:resourcekey="lblExtensionResource1"></asp:Label></h5>
          <asp:TextBox ID="txtExtension" runat="server" Width="210px" meta:resourcekey="txtExtensionResource1" />
        </asp:Panel>
      </asp:Panel>

      <asp:Panel ID="pnlBackup" runat="server" Visible="False" meta:resourcekey="pnlBackupResource1">
        <h5><asp:Label ID="lblBackup" runat="server" Text="BACKUP" meta:resourcekey="lblBackupResource1"></asp:Label></h5>
        <h5><asp:Label ID="lblBackupPhoneNumber" runat="server" Text="Phone Number" meta:resourcekey="lblBackupPhoneNumberResource1"></asp:Label></h5>
        <asp:DropDownList ID="cboBackupCountryCode" runat="server" meta:resourcekey="cboBackupCountryCodeResource1" />
        <asp:TextBox ID="txtBackupPhone" runat="server" Width="210px" meta:resourcekey="txtBackupPhoneResource1" />

          <asp:Panel ID="pnlBackupExtension" runat="server" Visible="False" meta:resourcekey="pnlBackupExtensionResource1">
            <h5><asp:Label ID="lblBackupExtension" runat="server" Text="Extension" meta:resourcekey="lblBackupExtensionResource1"></asp:Label></h5>
            <asp:TextBox ID="txtBackupExtension" runat="server" Width="210px" meta:resourcekey="txtBackupExtensionResource1" />
          </asp:Panel>
      </asp:Panel>

      <asp:Panel ID="pnlPin" runat="server" Visible="False" meta:resourcekey="pnlPinResource1">
	      <h5><asp:Label ID="lblPin" runat="server" Text="PIN" meta:resourcekey="lblPinResource1"></asp:Label></h5>
	      <asp:TextBox ID="txtPin" runat="server" Width="210px" TextMode="Password" meta:resourcekey="txtPinResource1" />
          <asp:Button ID="btnGenerate" runat="server" OnClick="btnGenerate_Click" Text="Generate" meta:resourcekey="btnGenerateResource1" />&nbsp;
        
	      <h5><asp:Label ID="lblConfirmPin" runat="server" Text="Confirm PIN" meta:resourcekey="lblConfirmPinResource1"></asp:Label></h5>
	      <asp:TextBox ID="txtConfirmPin" runat="server" Width="210px" TextMode="Password" meta:resourcekey="txtConfirmPinResource1" />
      </asp:Panel>
      <h5><asp:CheckBox ID="chkEnabled" runat="server" Text="Enabled" meta:resourcekey="chkEnabledResource1" /></h5>
      <asp:Panel ID="pnlPinChangeRequired" runat="server" Visible="False" meta:resourcekey="pnlPinChangeRequiredResource1">
        <h5><asp:CheckBox ID="chkPinChangeRequired" runat="server" Text="PIN change required" meta:resourcekey="chkPinChangeRequiredResource1" /></h5>
      </asp:Panel>
      <asp:Panel ID="pnlSendEmail" runat="server" Visible="False" meta:resourcekey="pnlSendEmailResource1">
        <h5><asp:CheckBox ID="chkSendEmail" runat="server" Text="Send email" meta:resourcekey="chkSendEmailResource1" /></h5>
      </asp:Panel>

	    <div  style="padding: 10px 0px 0px 0px;">
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" meta:resourcekey="btnAddResource1" />
	    </div>
    </asp:Panel>
    <br />
    <asp:LinkButton ID="lbBack" runat="server" OnClick="lbBack_Click" Text="Back" meta:resourcekey="lbBackResource1"></asp:LinkButton><br />
</asp:Content>


