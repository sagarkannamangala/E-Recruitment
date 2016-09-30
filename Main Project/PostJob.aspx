<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCompany.master" AutoEventWireup="true" CodeFile="PostJob.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formPlaceHolder" Runat="Server">
    <div class="panel" style="padding: 15px; width: 1150px; font-weight: bold; height:390px;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="800px">
            <Columns>
                <asp:BoundField DataField="companyname" HeaderText="companyname" SortExpression="companyname" />
                <asp:BoundField DataField="dateuploaded" HeaderText="dateuploaded" SortExpression="dateuploaded" />
                <asp:BoundField DataField="skilltxt1" HeaderText="skilltxt1" SortExpression="skilltxt1" />
                <asp:BoundField DataField="skilltxt2" HeaderText="skilltxt2" SortExpression="skilltxt2" />
                <asp:BoundField DataField="jobtxt" HeaderText="jobtxt" SortExpression="jobtxt" />
                <asp:BoundField DataField="jobdescr" HeaderText="jobdescr" SortExpression="jobdescr" />
                <asp:CommandField />
                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" SelectCommand="SELECT [companyname], [dateuploaded], [skilltxt1], [skilltxt2], [jobtxt], [jobdescr] FROM [jobs]"></asp:SqlDataSource>

        </div>
</asp:Content>

