<%@ Page Language="C#" AutoEventWireup="true" Inherits="pfup.main"  MasterPageFile="~/header_menu.master" Codebehind="main.aspx.cs" %>

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
	    <span id="iconHelp"><img src="images/spacer.gif" alt="Help" width="9" height="9" style="border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none;" /></span> <asp:Label ID="lblHelp" runat="server" Text="Help" meta:resourcekey="lblHelpResource1"></asp:Label> 
    </a>
</asp:Content>

<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="pageContent">
    <div id="divInstructions" runat="server" class="divInstructions">
	    <div style="width:650px">
		    <p class="sectionHeader"><asp:Label ID="lblTitle" runat="server" Text="Welcome" meta:resourcekey="lblTitleResource1"></asp:Label></p>
            <asp:Panel ID="pnlMessage" runat="server" Visible="False" meta:resourcekey="pnlMessageResource1">
                <asp:Label ID="lblMessage" runat="server" meta:resourcekey="lblMessageResource1"></asp:Label>
            </asp:Panel>
		    <p style="margin-top:15px; margin-bottom:20px">
		        <asp:Label ID="lblInstructions" runat="server" Text="Manage your Multi-Factor Authentication account by selecting an option below.  Select the Help icon (top right) for assistance." meta:resourcekey="lblInstructionsResource1"></asp:Label>
		    </p>
 	    </div>
    </div>
    <br/>
    <asp:Panel ID="pnlContent" runat="server" meta:resourcekey="pnlContentResource1">
        <table width="650" border="0" cellpadding="5" style="text-align:center; vertical-align:middle">
            <tr>
                <asp:Panel ID="pnlOneTimeBypassImage" runat="server" Visible="False" meta:resourcekey="pnlOneTimeBypassImageResource1">
                    <td align="center"><div id="oneTimeBypass"><a href="one_time_bypass.aspx"><img src="images/spacer.gif" alt="One-Time Bypass" width="75" height="75" style="border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none;" /></a></div></td>
                </asp:Panel>
                <asp:Panel ID="pnlPhoneImage" runat="server" Visible="False" meta:resourcekey="pnlPhoneImageResource1">
                    <td align="center"><div id="changePhone"><a href="change_phone.aspx"><img src="images/spacer.gif" alt="Change Phone" width="65" height="75" style="border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none;" /></a></div></td>
                </asp:Panel>
                <asp:Panel ID="pnlPinImage" runat="server" Visible="False" meta:resourcekey="pnlPinImageResource1">
                    <td align="center"><div id="changePin"><a href="change_pin.aspx"><img src="images/spacer.gif" alt="Change PIN" width="75" height="75" style="border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none;" /></a></div></td>
                </asp:Panel>
            </tr>
            <tr>
                <asp:Panel ID="pnlOneTimeBypass" runat="server" Visible="False" meta:resourcekey="pnlOneTimeBypassResource1">
                    <td><strong><asp:LinkButton ID="lbOneTimeBypass" runat="server" OnClick="lbOneTimeBypass_Click" Text="One-Time Bypass" meta:resourcekey="lbOneTimeBypassResource1"></asp:LinkButton></strong></td>
                </asp:Panel>
                <asp:Panel ID="pnlPhone" runat="server" Visible="False" meta:resourcekey="pnlPhoneResource1">
                    <td><strong><asp:LinkButton ID="lbChangePhone" runat="server" OnClick="lbChangePhone_Click" Text="Change Phone" meta:resourcekey="lbChangePhoneResource1"></asp:LinkButton></strong></td>
                </asp:Panel>
                <asp:Panel ID="pnlPin" runat="server" Visible="False" meta:resourcekey="pnlPinResource1">
                    <td><strong><asp:LinkButton ID="lbChangePin" runat="server" OnClick="lbChangePin_Click" Text="Change PIN" meta:resourcekey="lbChangePinResource1"></asp:LinkButton></strong></td>
                </asp:Panel>
            </tr>
        </table>
        <p>&nbsp;</p>
        <div class="box" style="width: 630px">
	        <p class="sectionHeader"><asp:Label ID="lblFaqs" runat="server" Text="FAQs" meta:resourcekey="lblFaqsResource1"></asp:Label></p>
	        <p><strong><asp:Label ID="lblHowPhoneFactorWorks" runat="server" Text="How does Multi-Factor Authentication™ work?" meta:resourcekey="lblHowPhoneFactorWorksResource1"></asp:Label></strong><br/>
            <asp:Label ID="lblHowPhoneFactorWorksDescription" runat="server" meta:resourcekey="lblHowPhoneFactorWorksDescriptionResource1"></asp:Label></p>
            <blockquote>
                <p><span style="color:#00BCF2"><strong><asp:Label ID="lblStep1" runat="server" Text="Step 1:" meta:resourcekey="lblStep1Resource1"></asp:Label></strong></span> 
                <br />
                <asp:Label ID="lblStep1Description" runat="server" Text="Enter your usual username and password." meta:resourcekey="lblStep1DescriptionResource1"></asp:Label><br />
                <span style="color:#00BCF2"><strong><asp:Label ID="lblStep2" runat="server" Text="Step 2:" meta:resourcekey="lblStep2Resource1"></asp:Label></strong></span>
                <br />
                <asp:Label ID="lblStep2Description" runat="server" meta:resourcekey="lblStep2DescriptionResource1"></asp:Label><br />
                <strong><asp:Label ID="lblThatsIt" runat="server" Text="That's It!" meta:resourcekey="lblThatsItResource1"></asp:Label></strong></p>
            </blockquote>
	        <p><asp:Label ID="lblSimpleProcess" runat="server" meta:resourcekey="lblSimpleProcessResource1"></asp:Label></p>
	        <p>&nbsp;</p>
	        <p><strong><asp:Label ID="lblLostPhone" runat="server" Text="What happens if I lose my phone?" meta:resourcekey="lblLostPhoneResource1"></asp:Label></strong><br/>
            <asp:Label ID="lblLostPhoneDescription" runat="server" Text="Select the Change Phone Number option to enter a new phone number. An alternate number can also be set up by calling the support help desk, once your identity is strongly established." meta:resourcekey="lblLostPhoneDescriptionResource1"></asp:Label>
          </p>
	        <p>&nbsp;</p>
	        <p><strong><asp:Label ID="lblCellCoverage" runat="server" Text="What happens if I lose cell phone coverage in a certain area?" meta:resourcekey="lblCellCoverageResource1"></asp:Label></strong><br/>
            <asp:Label ID="lblAlternatePhone" runat="server" meta:resourcekey="lblAlternatePhoneResource1"></asp:Label> <asp:Label ID="lblOneTimeBypass" runat="server" meta:resourcekey="lblOneTimeBypassResource1"></asp:Label></p>
            <p>&nbsp;</p>
            <p><strong><asp:Label ID="lblNotLoggingInQuestion" runat="server" meta:resourcekey="lblNotLoggingInQuestionResource1"></asp:Label></strong><br/>
            <asp:Label ID="lblNotLoggingInAnswer" runat="server" meta:resourcekey="lblNotLoggingInAnswerResource1"></asp:Label> <asp:Label ID="lblFraudAlert" runat="server" meta:resourcekey="lblFraudAlertResource1"></asp:Label></p>
        </div>
    </asp:Panel>
</asp:Content>