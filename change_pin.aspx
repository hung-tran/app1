<%@ Page Language="C#" AutoEventWireup="true" Inherits="pfup.change_pin" MasterPageFile="~/header_menu.master" Codebehind="change_pin.aspx.cs" %>

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
		    <p class="sectionHeader"><asp:Label ID="lblTitle" runat="server" Text="My Account:" meta:resourcekey="lblTitleResource1"></asp:Label> <span class="sectionHeaderAccent"><asp:Label ID="lblSubtitle" runat="server" Text="Change PIN" meta:resourcekey="lblSubtitleResource1"></asp:Label></span></p>
		    <p>
		      <asp:Label ID="lblInstructions" runat="server" Text="Specify a new PIN number." meta:resourcekey="lblInstructionsResource1"></asp:Label>
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
	    <h5><asp:Label ID="lblPin" runat="server" Text="New PIN" meta:resourcekey="lblPinResource1"></asp:Label></h5>
	    <asp:TextBox ID="txtPin" runat="server" Width="210px" TextMode="Password" meta:resourcekey="txtPinResource1" />
        <asp:Button ID="btnGenerate" runat="server" OnClick="btnGenerate_Click" Text="Generate" Visible="False" meta:resourcekey="btnGenerateResource1" />&nbsp;
      
	    <h5><asp:Label ID="lblConfirmPin" runat="server" Text="Confirm PIN" meta:resourcekey="lblConfirmPinResource1"></asp:Label></h5>
	    <asp:TextBox ID="txtConfirmPin" runat="server" Width="210px" TextMode="Password" meta:resourcekey="txtConfirmPinResource1" />
	    
      <asp:Panel ID="pnlPinChangeRequired" runat="server" Visible="False" meta:resourcekey="pnlPinChangeRequiredResource1">
        <h5><asp:CheckBox ID="chkPinChangeRequired" runat="server" Text="PIN change required" meta:resourcekey="chkPinChangeRequiredResource1" /></h5>
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


