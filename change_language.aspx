<%@ Page Language="C#" AutoEventWireup="true" Inherits="pfup.change_language" MasterPageFile="~/header_menu.master" Codebehind="change_language.aspx.cs" %>

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
		    <p class="sectionHeader"><asp:Label ID="lblTitle" runat="server" Text="My Account:" meta:resourcekey="lblTitleResource1"></asp:Label> <span class="sectionHeaderAccent"><asp:Label ID="lblSubtitle" runat="server" Text="Change Language" meta:resourcekey="lblSubtitleResource1"></asp:Label></span></p>
		    <p>
		      <asp:Label ID="lblInstructions" runat="server" Text="Specify your language preference." meta:resourcekey="lblInstructionsResource1"></asp:Label>
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
      <asp:Panel ID="pnlVoiceCallLanguage" runat="server" Visible="False" meta:resourcekey="pnlVoiceCallLanguageResource1">
	      <h5><asp:Label ID="lblVoiceCallLanguage" runat="server" Text="Phone Call Language" meta:resourcekey="lblVoiceCallLanguageResource1"></asp:Label></h5>
	      <asp:DropDownList ID="cboVoiceCallLanguage" runat="server" meta:resourcekey="cboVoiceCallLanguageResource1" />
      </asp:Panel>
      
      <asp:Panel ID="pnlSmsTextLanguage" runat="server" Visible="False" meta:resourcekey="pnlSmsTextLanguageResource1">
	      <h5><asp:Label ID="lblSmsTextLanguage" runat="server" Text="Text Message Language" meta:resourcekey="lblSmsTextLanguageResource1"></asp:Label></h5>
	      <asp:DropDownList ID="cboSmsTextLanguage" runat="server" meta:resourcekey="cboSmsTextLanguageResource1" />
      </asp:Panel>
      
      <asp:Panel ID="pnlPhoneAppLanguage" runat="server" Visible="False" meta:resourcekey="pnlPhoneAppLanguageResource1">
	      <h5><asp:Label ID="lblPhoneAppLanguage" runat="server" Text="Mobile App Language" meta:resourcekey="lblPhoneAppLanguageResource1"></asp:Label></h5>
	      <asp:DropDownList ID="cboPhoneAppLanguage" runat="server" meta:resourcekey="cboPhoneAppLanguageResource1" />
      </asp:Panel>
      
      <asp:Panel ID="pnlOathTokenLanguage" runat="server" Visible="False" meta:resourcekey="pnlOathTokenLanguageResource1">
	      <h5><asp:Label ID="lblOathTokenLanguage" runat="server" Text="OATH Token Language" meta:resourcekey="lblOathTokenLanguageResource1"></asp:Label></h5>
	      <asp:DropDownList ID="cboOathTokenLanguage" runat="server" meta:resourcekey="cboOathTokenLanguageResource1" />
      </asp:Panel>
      
	    <div  style="padding: 10px 0px 0px 0px;">
            <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" meta:resourcekey="btnSaveResource1" />
	    </div>
	  </asp:Panel>
    <br />
    <asp:LinkButton ID="lbBack" runat="server" OnClick="lbBack_Click" Text="Back" meta:resourcekey="lbBackResource1"></asp:LinkButton><br />
</asp:Content>