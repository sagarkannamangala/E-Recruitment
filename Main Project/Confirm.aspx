<%@ Page Title="Build Resume" Language="C#" MasterPageFile="~/MasterPageCandidate.master"
    AutoEventWireup="true" CodeFile="Confirm.aspx.cs" Inherits="Confirm" %>

<%@ MasterType VirtualPath="~/MasterPageCandidate.master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="headPlaceHolder" runat="Server">
</asp:Content>
<asp:Content ID="formContent" ContentPlaceHolderID="contentPlaceHolder" runat="Server">
    <div class="panel" style="padding: 15px; font-weight: bold; ">
    <div>
        
        <asp:Label ID="Label1" runat="server" Text="First Name:"></asp:Label>
        <asp:Label ID="lblFirstName" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Last Name:"></asp:Label>
        <asp:Label ID="lblLastName" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Education:"></asp:Label>
        <asp:Label ID="lblEducation" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server" Text="University:"></asp:Label>
        <asp:Label ID="lblUniversity" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Work Experience(in months):"></asp:Label>
        <asp:Label ID="lblWorkEx" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Previous Company:"></asp:Label>
        <asp:Label ID="lblPrevComp1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Previous Company2:"></asp:Label>
        <asp:Label ID="lblPrevComp2" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label8" runat="server" Text="Required Skill:"></asp:Label>
        <asp:Label ID="lblSkill1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label9" runat="server" Text="Skill:"></asp:Label>
        <asp:Label ID="lblSkill2" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label10" runat="server" Text="Skill:"></asp:Label>
        <asp:Label ID="lblSkill3" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label11" runat="server" Text="Skill:"></asp:Label>
        <asp:Label ID="lblSkill4" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label12" runat="server" Text="Project 1:"></asp:Label>
        <asp:Label ID="lblProj1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label13" runat="server" Text="Project2:"></asp:Label>
        <asp:Label ID="lblProj2" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <br />
        
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />


    &nbsp;<asp:Button ID="btnModify" runat="server" OnClick="btnModify_Click" Text="Modify" />
        </div>

    </div>
</asp:Content>
