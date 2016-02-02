<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="activate_phone_app.aspx.cs" Inherits="pfup.activate_phone_app" MasterPageFile="~/header_menu.master" %>

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
		    <p class="sectionHeader"><asp:Label ID="lblTitle" runat="server" Text="My Account:" meta:resourcekey="lblTitleResource1"></asp:Label> <span class="sectionHeaderAccent"><asp:Label ID="lblSubtitle" runat="server" Text="Activate Mobile App" meta:resourcekey="lblSubtitleResource1"></asp:Label></span></p>
		    <p>
		      <asp:Label ID="lblInstructions" runat="server" Text="First install the Multi-Factor Authentication mobile app on your phone, then click the Generate button to receive an activation code.  The activation code will be entered in the mobile app to complete the activation process.  The activation code expires in 10 minutes.  You may generate a new code at any time." meta:resourcekey="lblInstructionsResource1"></asp:Label>
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
      <asp:Panel ID="pnlDeviceList" runat="server" Visible="False" meta:resourcekey="pnlDeviceListResource1">
        <h5><asp:Label ID="lblActivatedDevices" runat="server" Text="Activated Devices" meta:resourcekey="lblActivatedDevicesResource1"></asp:Label></h5>
        <asp:GridView ID="gvDevices" runat="server" CssClass="table1" AutoGenerateColumns="False" OnRowDataBound="gvDevices_RowDataBound" GridLines="None" meta:resourcekey="gvDevicesResource1">
          <Columns>
            <asp:BoundField DataField="device_name" HeaderText="Device Name" meta:resourcekey="BoundFieldResource1" />
            <asp:BoundField DataField="version" HeaderText="Version" meta:resourcekey="BoundFieldResource2" />
            <asp:TemplateField HeaderText="Action" meta:resourcekey="TemplateFieldResource1">
              <ItemTemplate>
                <asp:LinkButton ID="lbDeactivate" runat="server" OnCommand="lbDeactivate_Click" Text="Deactivate" meta:resourcekey="lbDeactivateResource1"></asp:LinkButton>
              </ItemTemplate>
            </asp:TemplateField>
          </Columns>
          <AlternatingRowStyle CssClass="alt" />
        </asp:GridView>
      </asp:Panel>

        <asp:Panel ID="pnlActivationCode" runat="server" Visible="False" meta:resourcekey="pnlActivationCodeResource1">
            <div style="width: 650px;">
              <asp:Panel ID="pnlActivationMessage" runat="server" Visible="False" meta:resourcekey="pnlActivationMessageResource1">
                <asp:Label ID="lblActivationMessage" runat="server" meta:resourcekey="lblActivationMessageResource1"></asp:Label>
              </asp:Panel>
            </div>
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
        
      <asp:Panel ID="pnlGenerateActivationCode" runat="server" meta:resourcekey="pnlGenerateResource1">
	      <div style="padding: 20px 0px 0px 0px;">
              <asp:Button ID="btnGenerateActivationCode" runat="server" OnClick="btnGenerateActivationCode_Click" Text="Generate Activation Code" meta:resourcekey="btnGenerateActivationCodeResource1" />
	      </div>
      </asp:Panel>
    </asp:Panel>
    <br />
    <asp:LinkButton ID="lbBack" runat="server" OnClick="lbBack_Click" Text="Back" meta:resourcekey="lbBackResource1"></asp:LinkButton><br />
</asp:Content>

