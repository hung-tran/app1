<%@ Control Language="C#" AutoEventWireup="true" Inherits="pfup.navigation_menu" Codebehind="navigation_menu.ascx.cs" %>
        <asp:Panel ID="pnlUserAdministration" runat="server" Visible="False" meta:resourcekey="pnlUserAdministrationResource1">
				  <div id="leftNav">
					  <div id="leftNavIcon"><div id="userAdmin32"></div></div>
					  <div id="leftNavTitle">
						  <p class="leftNavTitle">
						      <asp:Label ID="lblUserAdministration" runat="server" Text="User Administration" meta:resourcekey="lblUserAdministrationResource1"></asp:Label>
						  </p>
						    <p class="leftNavItem">
                  <asp:LinkButton ID="lbFindUser" runat="server" OnClick="lbFindUser_Click" Text="Find User" meta:resourcekey="lbFindUserResource1"></asp:LinkButton><br />
						    </p>
                <asp:Panel ID="pnlAddUser" runat="server" Visible="False" meta:resourcekey="pnlAddUserResource1">
				          <p class="leftNavItem">
                    <asp:LinkButton ID="lbAddUser" runat="server" OnClick="lbAddUser_Click" Text="Add User" meta:resourcekey="lbAddUserResource1"></asp:LinkButton><br />
						      </p>
                </asp:Panel>
            </div>
          </div>
        </asp:Panel>
        <asp:Panel ID="pnlMyAccount" runat="server" Visible="False" meta:resourcekey="pnlMyAccountResource1">
			    <div id="leftNav">
					  <div id="leftNavIcon"><div id="users32"></div></div>
					  <div id="leftNavTitle">
						  <p class="leftNavTitle">
						      <asp:Label ID="lblMyAccount" runat="server" Text="My Account" meta:resourcekey="lblMyAccountResource1"></asp:Label>
						  </p>
                <asp:Panel ID="pnlOneTimeBypass" runat="server" Visible="False" meta:resourcekey="pnlOneTimeBypassResource1">
						      <p class="leftNavItem">
                    <asp:LinkButton ID="lbOneTimeBypass" runat="server" OnClick="lbOneTimeBypass_Click" Text="One-Time Bypass" meta:resourcekey="lbOneTimeBypassResource1"></asp:LinkButton><br />
						      </p>
                </asp:Panel>
                <asp:Panel ID="pnlChangeMode" runat="server" Visible="False" meta:resourcekey="pnlChangeModeResource1">
				          <p class="leftNavItem">
                    <asp:LinkButton ID="lbChangeMode" runat="server" OnClick="lbChangeMode_Click" Text="Change Method" meta:resourcekey="lbChangeModeResource1"></asp:LinkButton><br />
						      </p>
                </asp:Panel>
                <asp:Panel ID="pnlChangePhone" runat="server" Visible="False" meta:resourcekey="pnlChangePhoneResource1">
						      <p class="leftNavItem">
                    <asp:LinkButton ID="lbChangePhone" runat="server" OnClick="lbChangePhone_Click" Text="Change Phone" meta:resourcekey="lbChangePhoneResource1"></asp:LinkButton><br />
						      </p>
                </asp:Panel>
                <asp:Panel ID="pnlChangePin" runat="server" Visible="False" meta:resourcekey="pnlChangePinResource1">
				          <p class="leftNavItem">
                    <asp:LinkButton ID="lbChangePin" runat="server" OnClick="lbChangePin_Click" Text="Change PIN" meta:resourcekey="lbChangePinResource1"></asp:LinkButton><br />
						      </p>
                </asp:Panel>
                <asp:Panel ID="pnlChangeLanguage" runat="server" Visible="False" meta:resourcekey="pnlChangeLanguageResource1">
				          <p class="leftNavItem">
                    <asp:LinkButton ID="lbChangeLanguage" runat="server" OnClick="lbChangeLanguage_Click" Text="Change Language" meta:resourcekey="lbChangeLanguageResource1"></asp:LinkButton><br />
						      </p>
                </asp:Panel>
                <asp:Panel ID="pnlActivatePhoneApp" runat="server" Visible="False" meta:resourcekey="pnlActivatePhoneAppResource1">
				          <p class="leftNavItem">
                    <asp:LinkButton ID="lbActivatePhoneApp" runat="server" OnClick="lbActivatePhoneApp_Click" Text="Activate Mobile App" meta:resourcekey="lbActivatePhoneAppResource1"></asp:LinkButton><br />
						      </p>
                </asp:Panel>
                <asp:Panel ID="pnlOathToken" runat="server" Visible="False" meta:resourcekey="pnlOathTokenResource1">
				          <p class="leftNavItem">
                    <asp:LinkButton ID="lbOathToken" runat="server" OnClick="lbOathToken_Click" Text="OATH Token" meta:resourcekey="lbOathTokenResource1"></asp:LinkButton><br />
						      </p>
                </asp:Panel>
                <asp:Panel ID="pnlChangeSecurityQuestions" runat="server" Visible="False" meta:resourcekey="pnlChangeSecurityQuestionsResource1">
						      <p class="leftNavItem">
                    <asp:LinkButton ID="lbChangeSecurityQuestions" runat="server" OnClick="lbChangeSecurityQuestions_Click" Text="Change Security Questions" meta:resourcekey="lbChangeSecurityQuestionsResource1"></asp:LinkButton><br />
						      </p>
						    </asp:Panel>
					  </div>
				  </div>
				</asp:Panel>
		    <div id="ftr">
		      <asp:Label ID="lblVersion" runat="server" Text="Version" meta:resourcekey="lblVersionResource1"></asp:Label> <asp:Label ID="lblVersionValue" runat="server" meta:resourcekey="lblVersionValueResource1"></asp:Label><br />
			    <asp:Label ID="lblCopyright" runat="server" Text="© 2013 Microsoft. All rights reserved." meta:resourcekey="lblCopyrightResource1"></asp:Label>
		    </div>