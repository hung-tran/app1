<%@ Page Language="C#" AutoEventWireup="true" Inherits="pfup.change_phone"  MasterPageFile="~/header_menu.master" Codebehind="change_phone.aspx.cs" %>

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
		    <p class="sectionHeader"><asp:Label ID="lblTitle" runat="server" Text="My Account:" meta:resourcekey="lblTitleResource1"></asp:Label> <span class="sectionHeaderAccent"><asp:Label ID="lblChangePhone" runat="server" Text="Change Phone" meta:resourcekey="lblChangePhoneResource1"></asp:Label></span></p>
		    <p>
		      <asp:Label ID="lblInstructions" runat="server" Text="Specify a new phone number to call for Multi-Factor Authentication." meta:resourcekey="lblInstructionsResource1"></asp:Label>
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

    <asp:Panel ID="pnlDisable" runat="server" Visible="True">
      <asp:Panel ID="pnlPrimary" runat="server" Visible="False" meta:resourcekey="pnlPrimaryResource1">
        <h5><asp:Label ID="lblPrimary" runat="server" Text="PRIMARY" meta:resourcekey="lblPrimaryResource1"></asp:Label></h5>
      </asp:Panel>
	    <h5><asp:Label ID="lblPhoneNumber" runat="server" Text="New Phone Number" meta:resourcekey="lblPhoneNumberResource1"></asp:Label></h5>
	    <asp:DropDownList ID="cboCountryCode" runat="server" meta:resourcekey="cboCountryCodeResource1" />
	    <asp:TextBox ID="txtPhone" runat="server" Width="210px" meta:resourcekey="txtPhoneResource1" />

        <asp:Panel ID="pnlExtension" runat="server" Visible="False" meta:resourcekey="pnlExtensionResource1">
	        <h5><asp:Label ID="lblExtension" runat="server" Text="New Extension" meta:resourcekey="lblExtensionResource1"></asp:Label></h5>
	        <asp:TextBox ID="txtExtension" runat="server" Width="210px" meta:resourcekey="txtExtensionResource1" />
        </asp:Panel>
        
        <asp:Panel ID="pnlBackup" runat="server" Visible="False" meta:resourcekey="pnlBackupResource1">
	        <h5><asp:Label ID="lblBackup" runat="server" Text="BACKUP" meta:resourcekey="lblBackupResource1"></asp:Label></h5>
	        <h5><asp:Label ID="lblBackupPhoneNumber" runat="server" Text="New Phone Number" meta:resourcekey="lblBackupPhoneNumberResource1"></asp:Label></h5>
	        <asp:DropDownList ID="cboBackupCountryCode" runat="server" meta:resourcekey="cboBackupCountryCodeResource1" />
	        <asp:TextBox ID="txtBackupPhone" runat="server" Width="210px" meta:resourcekey="txtBackupPhoneResource1" />

            <asp:Panel ID="pnlBackupExtension" runat="server" Visible="False" meta:resourcekey="pnlBackupExtensionResource1">
	            <h5><asp:Label ID="lblBackupExtension" runat="server" Text="New Extension" meta:resourcekey="lblBackupExtensionResource1"></asp:Label></h5>
	            <asp:TextBox ID="txtBackupExtension" runat="server" Width="210px" meta:resourcekey="txtBackupExtensionResource1" />
            </asp:Panel>
        </asp:Panel>
        
        <asp:Panel ID="pnlSendEmail" runat="server" Visible="False" meta:resourcekey="pnlSendEmailResource1">
	        <h5><asp:CheckBox ID="chkSendEmail" runat="server" Text="Send email" meta:resourcekey="chkSendEmailResource1" /></h5>
        </asp:Panel>

	    <div  style="padding: 10px 0px 0px 0px;">
            <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" meta:resourcekey="btnSaveResource1" />
	    </div>
	  </asp:Panel>
    <br />
    <asp:LinkButton ID="lbBack" runat="server" OnClick="lbBack_Click" Text="Back" meta:resourcekey="lbBackResource1"></asp:LinkButton><br />
</asp:Content>