<%@ Page Language="C#" AutoEventWireup="true" Inherits="pfup.user" MasterPageFile="~/header_menu.master" Codebehind="user.aspx.cs" %>

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
		    <p class="sectionHeader"><asp:Label ID="lblTitle" runat="server" meta:resourcekey="lblTitleResource1"></asp:Label> <span class="sectionHeaderAccent"><asp:Label ID="lblSubtitle" runat="server" meta:resourcekey="lblSubtitleResource1"></asp:Label></span></p>
		    <p>
			    <asp:Label ID="lblInstructions" runat="server" Text="Verify the user's security questions and select the appropriate option." meta:resourcekey="lblInstructionsResource1"></asp:Label>
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
      <asp:Panel ID="pnlSecurityQuestions" runat="server" meta:resourcekey="pnlSecurityQuestionsResource1">
		    <table>
				    <tr>
					    <td><asp:Label ID="lblQuestion1" runat="server" meta:resourcekey="lblQuestion1Resource1"></asp:Label></td>
					    <td><asp:TextBox ID="txtAnswer1" runat="server" Width="210px" meta:resourcekey="txtAnswer1Resource1" /></td>
					    <td><asp:Image ID="imgCorrect1" runat="server" Visible="false" /></td>
				    </tr>
				    <tr>
					    <td><asp:Label ID="lblQuestion2" runat="server" meta:resourcekey="lblQuestion2Resource1"></asp:Label></td>
					    <td><asp:TextBox ID="txtAnswer2" runat="server" Width="210px" meta:resourcekey="txtAnswer2Resource1" /></td>
					    <td><asp:Image ID="imgCorrect2" runat="server" Visible="false" /></td>
				    </tr>
				    <tr>
					    <td><asp:Label ID="lblQuestion3" runat="server" meta:resourcekey="lblQuestion3Resource1"></asp:Label></td>
					    <td><asp:TextBox ID="txtAnswer3" runat="server" Width="210px" meta:resourcekey="txtAnswer3Resource1" /></td>
					    <td><asp:Image ID="imgCorrect3" runat="server" Visible="false" /></td>
				    </tr>
				    <tr>
					    <td><asp:Label ID="lblQuestion4" runat="server" meta:resourcekey="lblQuestion4Resource1"></asp:Label></td>
					    <td><asp:TextBox ID="txtAnswer4" runat="server" Width="210px" meta:resourcekey="txtAnswer4Resource1" /></td>
					    <td><asp:Image ID="imgCorrect4" runat="server" Visible="false" /></td>
				    </tr>
		    </table>
        <asp:Button ID="btnVerify" runat="server" OnClick="btnVerify_Click" Text="Verify" meta:resourcekey="btnVerifyResource1" />
	    </asp:Panel>
	    <br />
      <asp:Panel ID="pnlOneTimeBypass" runat="server" meta:resourcekey="pnlOneTimeBypassResource1">
        <asp:LinkButton ID="lbOneTimeBypass" runat="server" OnClick="lbOneTimeBypass_Click" Text="One-Time Bypass" meta:resourcekey="lbOneTimeBypassResource1"></asp:LinkButton><br />
      </asp:Panel>
      <asp:Panel ID="pnlChangeMode" runat="server" meta:resourcekey="pnlChangeModeResource1">
        <asp:LinkButton ID="lbChangeMode" runat="server" OnClick="lbChangeMode_Click" Text="Change Method" meta:resourcekey="lbChangeModeResource1"></asp:LinkButton><br />
      </asp:Panel>
      <asp:Panel ID="pnlChangeSubmode" runat="server" meta:resourcekey="pnlChangeSubmodeResource1">
        <asp:LinkButton ID="lbChangeSubmode" runat="server" OnClick="lbChangeSubmode_Click" Text="Change Mode" meta:resourcekey="lbChangeSubmodeResource1"></asp:LinkButton><br />
      </asp:Panel>
      <asp:Panel ID="pnlChangePhone" runat="server" meta:resourcekey="pnlChangePhoneResource1">
        <asp:LinkButton ID="lbChangePhone" runat="server" OnClick="lbChangePhone_Click" Text="Change Phone" meta:resourcekey="lbChangePhoneResource1"></asp:LinkButton><br />
      </asp:Panel>
      <asp:Panel ID="pnlChangePin" runat="server" meta:resourcekey="pnlChangePinResource1">
        <asp:LinkButton ID="lbChangePin" runat="server" OnClick="lbChangePin_Click" Text="Change PIN" meta:resourcekey="lbChangePinResource1"></asp:LinkButton><br />
      </asp:Panel>
      <asp:Panel ID="pnlChangeLanguage" runat="server" meta:resourcekey="pnlChangeLanguageResource1">
        <asp:LinkButton ID="lbChangeLanguage" runat="server" OnClick="lbChangeLanguage_Click" Text="Change Language" meta:resourcekey="lbChangeLanguageResource1"></asp:LinkButton><br />
      </asp:Panel>
      <asp:Panel ID="pnlResetVoiceprint" runat="server" meta:resourcekey="pnlResetVoiceprintResource1">
        <asp:LinkButton ID="lbResetVoiceprint" runat="server" OnClick="lbResetVoiceprint_Click" Text="Reset Voiceprint" meta:resourcekey="lbResetVoiceprintResource1"></asp:LinkButton><br />
      </asp:Panel>
      <asp:Panel ID="pnlUserInformation" runat="server" meta:resourcekey="pnlUserInformationResource1">
        <asp:LinkButton ID="lbUserInformation" runat="server" OnClick="lbUserInformation_Click" Text="User Information" meta:resourcekey="lbUserInformationResource1"></asp:LinkButton><br />
      </asp:Panel>
      <asp:Panel ID="pnlOathToken" runat="server" meta:resourcekey="pnlOathTokenResource1">
        <asp:LinkButton ID="lbOathToken" runat="server" OnClick="lbOathToken_Click" Text="OATH Token" meta:resourcekey="lbOathTokenResource1"></asp:LinkButton><br />
      </asp:Panel>
      <asp:Panel ID="pnlEnableDisable" runat="server" meta:resourcekey="pnlEnableDisableResource1">
        <asp:LinkButton ID="lbEnableDisable" runat="server" OnClick="lbEnableDisable_Click" meta:resourcekey="lbEnableDisableResource1"></asp:LinkButton><br />
      </asp:Panel>
      <asp:Panel ID="pnlBlockUnblockUser" runat="server" meta:resourcekey="pnlBlockUnblockUserResource1">
        <asp:LinkButton ID="lbBlockUnblockUser" runat="server" OnClick="lbBlockUnblockUser_Click" Text="Block/Unblock User" meta:resourcekey="lbBlockUnblockUserResource1"></asp:LinkButton><br />
      </asp:Panel>
      <asp:Panel ID="pnlRemoveUser" runat="server" meta:resourcekey="pnlRemoveUserResource1">
        <asp:LinkButton ID="lbRemoveUser" runat="server" OnClick="lbRemoveUser_Click" Text="Remove User" meta:resourcekey="lbRemoveUserResource1"></asp:LinkButton><br />
      </asp:Panel>
      <asp:Panel ID="pnlTestAuthentication" runat="server" meta:resourcekey="pnlTestAuthenticationResource1">
        <asp:LinkButton ID="lbTestAuthentication" runat="server" OnClick="lbTestAuthentication_Click" Text="Test Authentication" meta:resourcekey="lbTestAuthenticationResource1"></asp:LinkButton><br />
      </asp:Panel>
      <asp:Panel ID="pnlActivatePhoneApp" runat="server" meta:resourcekey="pnlActivatePhoneAppResource1">
        <asp:LinkButton ID="lbActivatePhoneApp" runat="server" OnClick="lbActivatePhoneApp_Click" Text="Activate Mobile App" meta:resourcekey="lbActivatePhoneAppResource1"></asp:LinkButton><br />
      </asp:Panel>
      <asp:Panel ID="pnlDeactivatePhoneApp" runat="server" meta:resourcekey="pnlDeactivatePhoneAppResource1">
        <asp:LinkButton ID="lbDeactivatePhoneApp" runat="server" OnClick="lbDeactivatePhoneApp_Click" Text="Deactivate Mobile App" meta:resourcekey="lbDeactivatePhoneAppResource1"></asp:LinkButton><br />
      </asp:Panel>
      <asp:Panel ID="pnlChangeStaticToken" runat="server" meta:resourcekey="pnlChangeStaticTokenResource1">
        <asp:LinkButton ID="lbChangeStaticToken" runat="server" OnClick="lbChangeStaticToken_Click" Text="Change Static Token" meta:resourcekey="lbChangeStaticTokenResource1"></asp:LinkButton><br />
      </asp:Panel>
    </asp:Panel>
    <br />
    <asp:LinkButton ID="lbBack" runat="server" OnClick="lbBack_Click" Text="Back" meta:resourcekey="lbBackResource1"></asp:LinkButton><br />
</asp:Content>


