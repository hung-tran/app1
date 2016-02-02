<%@ Page Language="C#" AutoEventWireup="true" Inherits="pfup.find_user" MasterPageFile="~/header_menu.master" Codebehind="find_user.aspx.cs" %>

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
		    <p class="sectionHeader"><asp:Label ID="lblTitle" runat="server" Text="User Administration:" meta:resourcekey="lblTitleResource1"></asp:Label> <span class="sectionHeaderAccent"><asp:Label ID="lblSubtitle" runat="server" Text="Find User" meta:resourcekey="lblSubtitleResource1"></asp:Label></span></p>
		    <p>
			    <asp:Label ID="lblInstructions" runat="server" Text="Enter the first few characters of the username and click the Find button." meta:resourcekey="lblInstructionsResource1"></asp:Label>
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
      <asp:Panel ID="pnlFindUser" runat="server" meta:resourcekey="pnlFindUserResource1">
        <h5><asp:Label ID="lblUsername" runat="server" Text="Username" meta:resourcekey="lblUsernameResource1"></asp:Label></h5>
        <asp:TextBox ID="txtUsername" runat="server" Width="210px" meta:resourcekey="txtUsernameResource1" />
        <asp:Panel ID="pnlUserInformation" runat="server" meta:resourcekey="pnlUserInformationResource1">
          <h5><asp:Label ID="lblFirstName" runat="server" Text="First Name" meta:resourcekey="lblFirstNameResource1"></asp:Label></h5>
          <asp:TextBox ID="txtFirstName" runat="server" Width="210px" meta:resourcekey="txtFirstNameResource1" />
          <h5><asp:Label ID="lblLastName" runat="server" Text="Last Name" meta:resourcekey="lblLastNameResource1"></asp:Label></h5>
          <asp:TextBox ID="txtLastName" runat="server" Width="210px" meta:resourcekey="txtLastNameResource1" />
          <h5><asp:Label ID="lblEmailAddress" runat="server" Text="Email Address" meta:resourcekey="lblEmailAddressResource1"></asp:Label></h5>
          <asp:TextBox ID="txtEmailAddress" runat="server" Width="210px" meta:resourcekey="txtEmailAddressResource1" />
          <h5><asp:Label ID="lblUserGroup" runat="server" Text="User Group" meta:resourcekey="lblUserGroupResource1"></asp:Label></h5>
          <asp:TextBox ID="txtUserGroup" runat="server" Width="210px" meta:resourcekey="txtUserGroupResource1" />
	      </asp:Panel>
        <h5><asp:Label ID="lblPhone" runat="server" Text="Phone" meta:resourcekey="lblPhoneResource1"></asp:Label></h5>
        <asp:TextBox ID="txtPhone" runat="server" Width="210px" meta:resourcekey="txtPhoneResource1" />
        <asp:Panel ID="pnlTag" runat="server" Visible="False" meta:resourcekey="pnlTagResource1">
          <h5><asp:Label ID="lblTag" runat="server" Text="Tag" meta:resourcekey="lblTagResource1"></asp:Label></h5>
    	    <asp:DropDownList ID="cboTag" runat="server" meta:resourcekey="cboTagResource1" />
        </asp:Panel>
	      <div style="padding: 10px 0px 0px 0px;">
            <asp:Button ID="btnFind" runat="server" OnClick="btnFind_Click" Text="Find" meta:resourcekey="btnFindResource1" />
	      </div>
	    </asp:Panel>
      <asp:Panel ID="pnlUserList" runat="server" Visible="False" meta:resourcekey="pnlUserListResource1">
        <h5><asp:Label ID="lblMatchingUsers" runat="server" Text="Matching Users" meta:resourcekey="lblMatchingUsersResource1"></asp:Label></h5>
        <asp:GridView ID="gvUserLinks" runat="server" CssClass="table1" AutoGenerateColumns="False" OnRowDataBound="gvUserLinks_RowDataBound" GridLines="None" meta:resourcekey="gvUserLinksResource1">
          <Columns>
            <asp:TemplateField HeaderText="Username" meta:resourcekey="TemplateFieldResource1">
              <ItemTemplate>
                <asp:LinkButton ID="lbUser" runat="server" OnCommand="lbUser_Click" meta:resourcekey="lbUserResource1"></asp:LinkButton>
              </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="name" HeaderText="Name" meta:resourcekey="BoundFieldResource1" />
            <asp:BoundField DataField="email_address" HeaderText="Email Address" meta:resourcekey="BoundFieldResource2" />
            <asp:BoundField DataField="user_group" HeaderText="User Group" meta:resourcekey="BoundFieldResource3" />
            <asp:BoundField DataField="phone" HeaderText="Phone" meta:resourcekey="BoundFieldResource4" />
          </Columns>
          <AlternatingRowStyle CssClass="alt" />
        </asp:GridView>
      </asp:Panel>
    </asp:Panel>
    <br />
    <asp:LinkButton ID="lbBack" runat="server" OnClick="lbBack_Click" Text="Back" meta:resourcekey="lbBackResource1"></asp:LinkButton><br />
</asp:Content>


