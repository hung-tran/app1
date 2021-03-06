<%@ Page Language="C#" AutoEventWireup="true" Inherits="pfup.change_security_questions" MasterPageFile="~/header_menu.master" Codebehind="change_security_questions.aspx.cs" %>

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
		    <p class="sectionHeader"><asp:Label ID="lblTitle" runat="server" Text="My Account:" meta:resourcekey="lblTitleResource1"></asp:Label> <span class="sectionHeaderAccent"><asp:Label ID="lblSubtitle" runat="server" Text="Change Security Questions" meta:resourcekey="lblSubtitleResource1"></asp:Label></span></p>
		    <p>
		        <asp:Label ID="lblInstructions" runat="server" Text="Specify answers to four security questions used to log in to the User Portal without Multi-Factor Authentication." meta:resourcekey="lblInstructionsResource1"></asp:Label>
		    </p>
	    </div>
	    <div class="divInstructionsRight"><div id="users180"></div></div>
    </div>
    <br/>

    <div style="width:650px">
      <asp:Panel ID="pnlMessage" runat="server" Visible="False" meta:resourcekey="pnlMessageResource1">
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red" meta:resourcekey="lblMessageResource1"></asp:Label>
      </asp:Panel>
    </div>

    <asp:Panel ID="pnlDisable" runat="server" meta:resourcekey="pnlDisableResource1">
        <h5><asp:Label ID="lblQuestion1" runat="server" Text="Question 1" meta:resourcekey="lblQuestion1Resource1"></asp:Label></h5>
        <asp:DropDownList ID="cboQuestion1" runat="server" meta:resourcekey="cboQuestion1Resource1" />
        <h5><asp:Label ID="lblAnswer1" runat="server" Text="Answer" meta:resourcekey="lblAnswer1Resource1"></asp:Label></h5>
        <asp:TextBox ID="txtAnswer1" runat="server" Width="210px" meta:resourcekey="txtAnswer1Resource1" MaxLength="50" />

        <h5><asp:Label ID="lblQuestion2" runat="server" Text="Question 2" meta:resourcekey="lblQuestion2Resource1"></asp:Label></h5>
        <asp:DropDownList ID="cboQuestion2" runat="server" meta:resourcekey="cboQuestion2Resource1" />
        <h5><asp:Label ID="lblAnswer2" runat="server" Text="Answer" meta:resourcekey="lblAnswer2Resource1"></asp:Label></h5>
        <asp:TextBox ID="txtAnswer2" runat="server" Width="210px" meta:resourcekey="txtAnswer2Resource1" MaxLength="50" />

        <h5><asp:Label ID="lblQuestion3" runat="server" Text="Question 3" meta:resourcekey="lblQuestion3Resource1"></asp:Label></h5>
        <asp:DropDownList ID="cboQuestion3" runat="server" meta:resourcekey="cboQuestion3Resource1" />
        <h5><asp:Label ID="lblAnswer3" runat="server" Text="Answer" meta:resourcekey="lblAnswer3Resource1"></asp:Label></h5>
        <asp:TextBox ID="txtAnswer3" runat="server" Width="210px" meta:resourcekey="txtAnswer3Resource1" MaxLength="50" />

        <h5><asp:Label ID="lblQuestion4" runat="server" Text="Question 4" meta:resourcekey="lblQuestion4Resource1"></asp:Label></h5>
        <asp:DropDownList ID="cboQuestion4" runat="server" meta:resourcekey="cboQuestion4Resource1" />
        <h5><asp:Label ID="lblAnswer4" runat="server" Text="Answer" meta:resourcekey="lblAnswer4Resource1"></asp:Label></h5>
        <asp:TextBox ID="txtAnswer4" runat="server" Width="210px" meta:resourcekey="txtAnswer4Resource1" MaxLength="50" />
        <br/>
	    <div  style="padding: 10px 0px 0px 0px;">
            <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" meta:resourcekey="btnSaveResource1" />
	    </div>
	  </asp:Panel>
    <br />
    <asp:LinkButton ID="lbBack" runat="server" OnClick="lbBack_Click" Text="Back" meta:resourcekey="lbBackResource1"></asp:LinkButton><br />
</asp:Content>


