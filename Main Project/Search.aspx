<%@ Page Title="Candidate Home" Language="C#" MasterPageFile="~/MasterPageCandidate.master"
    AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<%@ MasterType VirtualPath="~/MasterPageCandidate.master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="headPlaceHolder" runat="Server">
</asp:Content>
<asp:Content ID="formContent" ContentPlaceHolderID="contentPlaceHolder" runat="Server">
    <div class="panel" style="padding: 15px; width: 1140px; font-weight: bold; height: 390px;">
        <br />
        <legend>Search for the Companies and Jobs!</legend>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="skilltxt" DataValueField="skilltxt" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" SelectCommand="SELECT * FROM [skill]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="jobid" DataSourceID="SqlDataSource2">
            <AlternatingItemTemplate>
                <li style="background-color: #ffffff;">
                    companyname:
                <asp:Label ID="companynameLabel" runat="server" Text='<%# Eval("companyname") %>' />
                    <br />
                    dateuploaded:
                <asp:Label ID="dateuploadedLabel" runat="server" Text='<%# Eval("dateuploaded") %>' />
                    <br />
                    skilltxt1:
                <asp:Label ID="skilltxt1Label" runat="server" Text='<%# Eval("skilltxt1") %>' />
                    <br />
                    skilltxt2:
                <asp:Label ID="skilltxt2Label" runat="server" Text='<%# Eval("skilltxt2") %>' />
                    <br />
                    jobtxt:
                <asp:Label ID="jobtxtLabel" runat="server" Text='<%# Eval("jobtxt") %>' />
                    <br />
                    jobdescr:
                <asp:Label ID="jobdescrLabel" runat="server" Text='<%# Eval("jobdescr") %>' />
                    <br />
                </li>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <li style="background-color: #ffffff; color: #000000;">
                
                    companyname:
                <asp:TextBox ID="companynameTextBox" runat="server" Text='<%# Bind("companyname") %>' />
                    <br />
                    dateuploaded:
                <asp:TextBox ID="dateuploadedTextBox" runat="server" Text='<%# Bind("dateuploaded") %>' />
                    <br />
                    skilltxt1:
                <asp:TextBox ID="skilltxt1TextBox" runat="server" Text='<%# Bind("skilltxt1") %>' />
                    <br />
                    skilltxt2:
                <asp:TextBox ID="skilltxt2TextBox" runat="server" Text='<%# Bind("skilltxt2") %>' />
                    <br />
                    jobtxt:
                <asp:TextBox ID="jobtxtTextBox" runat="server" Text='<%# Bind("jobtxt") %>' />
                    <br />
                    jobdescr:
                <asp:TextBox ID="jobdescrTextBox" runat="server" Text='<%# Bind("jobdescr") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </li>
            </EditItemTemplate>
            <EmptyDataTemplate>
                No data was returned.
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <li style="">companyname:
                <asp:TextBox ID="companynameTextBox" runat="server" Text='<%# Bind("companyname") %>' />
                    <br />
                    dateuploaded:
                <asp:TextBox ID="dateuploadedTextBox" runat="server" Text='<%# Bind("dateuploaded") %>' />
                    <br />
                    skilltxt1:
                <asp:TextBox ID="skilltxt1TextBox" runat="server" Text='<%# Bind("skilltxt1") %>' />
                    <br />
                    skilltxt2:
                <asp:TextBox ID="skilltxt2TextBox" runat="server" Text='<%# Bind("skilltxt2") %>' />
                    <br />
                    jobtxt:
                <asp:TextBox ID="jobtxtTextBox" runat="server" Text='<%# Bind("jobtxt") %>' />
                    <br />
                    jobdescr:
                <asp:TextBox ID="jobdescrTextBox" runat="server" Text='<%# Bind("jobdescr") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </li>
            </InsertItemTemplate>
            <ItemSeparatorTemplate>
                <br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <li style="background-color: #ffffff; color: #000000;">
                  
                    <b>Company Name:</b>
                <asp:Label ID="companynameLabel" runat="server" Text='<%# Eval("companyname") %>' />
                    <br />
                    Date uploaded:
                <asp:Label ID="dateuploadedLabel" runat="server" Text='<%# Eval("dateuploaded") %>' />
                    <br />
                    Skill1:
                <asp:Label ID="skilltxt1Label" runat="server" Text='<%# Eval("skilltxt1") %>' />
                    <br />
                    Skill2:
                <asp:Label ID="skilltxt2Label" runat="server" Text='<%# Eval("skilltxt2") %>' />
                    <br />
                    Job:
                <asp:Label ID="jobtxtLabel" runat="server" Text='<%# Eval("jobtxt") %>' />
                    <br />
                    Job Description:
                <asp:Label ID="jobdescrLabel" runat="server" Text='<%# Eval("jobdescr") %>' />
                    <br />
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="text-align: center; background-color: #ffffff; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <li style="background-color: #ffffff; font-weight: bold; color: #000000;">
                    Company Name:
                <asp:Label ID="companynameLabel" runat="server" Text='<%# Eval("companyname") %>' />
                    <br />
                    Date uploaded:
                <asp:Label ID="dateuploadedLabel" runat="server" Text='<%# Eval("dateuploaded") %>' />
                    <br />
                    Skill1:
                <asp:Label ID="skilltxt1Label" runat="server" Text='<%# Eval("skilltxt1") %>' />
                    <br />
                    Skill2:
                <asp:Label ID="skilltxt2Label" runat="server" Text='<%# Eval("skilltxt2") %>' />
                    <br />
                    Job:
                <asp:Label ID="jobtxtLabel" runat="server" Text='<%# Eval("jobtxt") %>' />
                    <br />
                    Job Description:
                <asp:Label ID="jobdescrLabel" runat="server" Text='<%# Eval("jobdescr") %>' />
                    <br />
                </li>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" SelectCommand="SELECT * FROM [jobs] WHERE ([skilltxt1] = @skilltxt1)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="skilltxt1" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br /><br /><br />
    </div>
    <div style="margin-top: -150px;"></div>
</asp:Content>
