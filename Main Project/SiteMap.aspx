<%@ Page Language="C#" MasterPageFile="~/MasterPageCompany.master" AutoEventWireup="true" CodeFile="SiteMap.aspx.cs" Inherits="SiteMap" %>

<asp:Content ID="headContent" ContentPlaceHolderID="headPlaceHolder" runat="server">
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/justified.css" rel="stylesheet" />
    <link href="StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="formContent" ContentPlaceHolderID="formPlaceHolder" runat="server">
    <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource2" Height="334px" ShowLines="True" Width="304px" ForeColor="#333399" Font-Size="XX-Large"></asp:TreeView>
    <asp:SiteMapDataSource ID="SiteMapDataSource2" runat="server" />
    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
</asp:Content>

