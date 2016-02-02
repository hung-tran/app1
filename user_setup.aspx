<%@ Page Language="C#" AutoEventWireup="true" Inherits="pfup.user_setup" MasterPageFile="~/header_menu.master" Codebehind="user_setup.aspx.cs" %>

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
		    <p class="sectionHeader"><asp:Label ID="lblTitle" runat="server" Text="Multi-Factor Authentication User Setup" meta:resourcekey="lblTitleResource1"></asp:Label></p>
		    <p><asp:Label ID="lblInstructions" runat="server" meta:resourcekey="lblInstructionsResource1"></asp:Label></p>
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
      <asp:Panel ID="pnlMode" runat="server" Visible="False" meta:resourcekey="pnlModeResource1">
        <h5><asp:Label ID="lblMode" runat="server" Text="Method" meta:resourcekey="lblModeResource1"></asp:Label></h5>
  	    <asp:DropDownList ID="cboMode" runat="server" OnSelectedIndexChanged="cboMode_SelectedIndexChanged" AutoPostBack="True" meta:resourcekey="cboModeResource1" />
      </asp:Panel>
      <asp:Panel ID="pnlPrimary" runat="server" Visible="False" meta:resourcekey="pnlPrimaryResource1">
        <h5><asp:Label ID="lblPrimary" runat="server" Text="PRIMARY" meta:resourcekey="lblPrimaryResource1"></asp:Label></h5>
      </asp:Panel>
      <asp:Panel ID="pnlPhone" runat="server" Visible="False" meta:resourcekey="pnlPhoneResource1">
	      <h5><asp:Label ID="lblPhone" runat="server" Text="Phone" meta:resourcekey="lblPhoneResource1"></asp:Label></h5>
	      <asp:DropDownList ID="cboCountryCode" runat="server" meta:resourcekey="cboCountryCodeResource1" />
	      <asp:TextBox ID="txtPhone" runat="server" Width="210px" meta:resourcekey="txtPhoneResource1" />
	    </asp:Panel>

        <asp:Panel ID="pnlExtension" runat="server" Visible="False" meta:resourcekey="pnlExtensionResource1">
	        <h5><asp:Label ID="lblExtension" runat="server" Text="Extension" meta:resourcekey="lblExtensionResource1"></asp:Label></h5>
	        <asp:TextBox ID="txtExtension" runat="server" Width="210px" meta:resourcekey="txtExtensionResource1" />
	      </asp:Panel>
        <asp:Panel ID="pnlBackup" runat="server" Visible="False" meta:resourcekey="pnlBackupResource1">
	        <h5><asp:Label ID="lblBackup" runat="server" Text="BACKUP" meta:resourcekey="lblBackupResource1"></asp:Label></h5>
	        <h5><asp:Label ID="lblBackupPhone" runat="server" Text="Phone" meta:resourcekey="lblBackupPhoneResource1"></asp:Label></h5>
	        <asp:DropDownList ID="cboBackupCountryCode" runat="server" meta:resourcekey="cboBackupCountryCodeResource1" />
	        <asp:TextBox ID="txtBackupPhone" runat="server" Width="210px" meta:resourcekey="txtBackupPhoneResource1" />

            <asp:Panel ID="pnlBackupExtension" runat="server" Visible="False" meta:resourcekey="pnlBackupExtensionResource1">
	            <h5><asp:Label ID="lblBackupExtension" runat="server" Text="Extension" meta:resourcekey="lblBackupExtensionResource1"></asp:Label></h5>
	            <asp:TextBox ID="txtBackupExtension" runat="server" Width="210px" meta:resourcekey="txtBackupExtensionResource1" />
            </asp:Panel>
        </asp:Panel>

        <asp:Panel ID="pnlActivationCode" runat="server" Visible="False" style="width:630px" meta:resourcekey="pnlActivationCodeResource1">
            <asp:Label ID="lblActivationCodeInstructions" runat="server" Text="Enter the following activation code and URL when prompted by the mobile app.  The activation code expires in 10 minutes.  You may generate a new code at any time." meta:resourcekey="lblActivationCodeInstructionsResource1"></asp:Label>
            <table>
            <tr>
            <td>
            <h5><asp:Label ID="lblActivationCode" runat="server" Text="Activation Code" meta:resourcekey="lblActivationCodeResource1"></asp:Label></h5>
            <h2><asp:Label ID="lblActivationCodeValue" runat="server" meta:resourcekey="lblActivationCodeValueResource1"></asp:Label></h2>
            <h5><asp:Label ID="lblUrl" runat="server" Text="URL" meta:resourcekey="lblUrlResource1"></asp:Label></h5>
            <h2><asp:Label ID="lblUrlValue" runat="server" meta:resourcekey="lblUrlValueResource1"></asp:Label></h2>
            </td>
            <td>
              <asp:Panel ID="pnlQRCode" runat="server" Visible="False" meta:resourcekey="pnlQRCodeResource1">
                <asp:Image ID="imgQRCode" runat="server" meta:resourcekey="imgQRCodeResource1" />
              </asp:Panel>
            </td>
            </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="pnlActivationLink" runat="server" Visible="False" meta:resourcekey="pnlActivationLinkResource1">
            <h2><asp:HyperLink ID="hplActivate" runat="server" Text="Activate" meta:resourcekey="hplActivateResource1"></asp:HyperLink></h2>
        </asp:Panel>
        <asp:Panel ID="pnlGenerateNewActivationCode" runat="server" Visible="False" meta:resourcekey="pnlGenerateNewActivationCodeResource1">
            <div style="padding: 10px 0px 0px 0px;">
                  <asp:Button ID="btnGenerateNewActivationCode" runat="server" OnClick="btnGenerateActivationCode_Click" Text="Generate New Activation Code" meta:resourcekey="btnGenerateNewActivationCodeResource1" />
            </div>
        </asp:Panel>
        
        <asp:Panel ID="pnlPin" runat="server" Visible="False" meta:resourcekey="pnlPinResource1">
	        <h5><asp:Label ID="lblPin" runat="server" Text="PIN" meta:resourcekey="lblPinResource1"></asp:Label></h5>
	        <asp:TextBox ID="txtPin" runat="server" Width="210px" TextMode="Password" meta:resourcekey="txtPinResource1" />

	        <h5><asp:Label ID="lblConfirmPin" runat="server" Text="Confirm PIN" meta:resourcekey="lblConfirmPinResource1"></asp:Label></h5>
	        <asp:TextBox ID="txtConfirmPin" runat="server" Width="210px" TextMode="Password" meta:resourcekey="txtConfirmPinResource1" />
  	    </asp:Panel>
  	    
        <asp:Panel ID="pnlOathToken" runat="server" Visible="False" meta:resourcekey="pnlOathTokenResource1">
          <h5><asp:Label ID="lblSerialNumber" runat="server" Text="Serial Number" meta:resourcekey="lblSerialNumberResource1"></asp:Label></h5>
          <asp:TextBox ID="txtSerialNumber" runat="server" Width="210px" meta:resourcekey="txtSerialNumberResource1" />
          <h5><asp:Label ID="lblCode" runat="server" Text="Code" meta:resourcekey="lblCodeResource1"></asp:Label></h5>
          <asp:TextBox ID="txtCode" runat="server" Width="210px" meta:resourcekey="txtCodeResource1" />
        </asp:Panel>

        <br/>
      <asp:Panel ID="pnlCallMeNowToAuthenticate" runat="server" style="width:630px" meta:resourcekey="pnlCallMeNowToAuthenticateResource1">
        <asp:Panel ID="pnlPhoneAuthenticationInstructions" runat="server" Visible="False" style="width:630px" meta:resourcekey="pnlPhoneAuthenticationInstructionsResource1">
          <asp:Label ID="lblPhoneAuthenticationInstructions" runat="server" Text="After activation is complete, click the following button to test authentication and continue the setup process." meta:resourcekey="lblPhoneAuthenticationInstructionsResource1"></asp:Label>
        </asp:Panel>
	      <div  style="padding: 10px 0px 0px 0px;">
              <asp:Button ID="btnCallMeNowToAuthenticate" runat="server" OnClick="btnCallMeNowToAuthenticate_Click" Text="Call Me Now to Authenticate" meta:resourcekey="btnCallMeNowToAuthenticateResource1" />
              <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel" meta:resourcekey="btnCancelResource1" />
	      </div>
	    </asp:Panel>
      <asp:Panel ID="pnlGenerateActivationCode" runat="server" Visible="False" style="width:630px" meta:resourcekey="pnlGenerateActivationCodeResource1">
        <asp:Label ID="lblActivateInstructions" runat="server" Text="After installing the Multi-Factor Authentication app on your phone, click the button to generate an activation code." meta:resourcekey="lblActivateInstructionsResource1"></asp:Label>
	      <div style="padding: 10px 0px 0px 0px;">
              <asp:Button ID="btnGenerateActivationCode" runat="server" OnClick="btnGenerateActivationCode_Click" Text="Generate Activation Code" meta:resourcekey="btnGenerateActivationCodeResource1" />
              <asp:Button ID="btnCancel2" runat="server" OnClick="btnCancel_Click" Text="Cancel" meta:resourcekey="btnCancel2Resource1" />
	      </div>
      </asp:Panel>
    </asp:Panel>
</asp:Content>
