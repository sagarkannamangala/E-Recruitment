<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCompany.master" AutoEventWireup="true" CodeFile="Company.aspx.cs" Inherits="Default" %>

<asp:Content ID="headContent" ContentPlaceHolderID="headPlaceHolder" runat="server">
    
</asp:Content>



<asp:Content ID="formContent" ContentPlaceHolderID="formPlaceHolder" runat="server">

    <div>
        <div style="margin-top: 30px; height: 208px;">
            <div class="panel" style="padding:10px; width:920px;">
                <legend>List of Applications</legend>
                <asp:GridView runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="890px" AllowPaging="True" ForeColor="Black" Height="200px" AllowSorting="True">
                    <Columns>
                        <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                        <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                        <asp:BoundField DataField="education" HeaderText="education" SortExpression="education" />
                        <asp:BoundField DataField="university" HeaderText="university" SortExpression="university" />
                        <asp:ButtonField ButtonType="Button" Text="Email" ControlStyle-CssClass="btn btn-info"/>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" Height="50px" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" SelectCommand="SELECT [firstname], [lastname], [education], [university] FROM [candidate]"></asp:SqlDataSource>
                
                
                <br />
            </div>
        </div>
        <div class="panel panel-info" style="float: right; margin-top: -214px; width: 210px; padding: 10px;">
            <div class="panel-heading">
                <h5>Company Reviews</h5>
            </div>
            <asp:DataList ID="DataList1" runat="server" CellSpacing="2" DataSourceID="SqlDataSource2" RepeatLayout="Flow">
                <AlternatingItemStyle BackColor="White" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" />
                <ItemTemplate>

                    

                   

                    

                    <asp:Label ID="companynameLabel" runat="server" Text='<%# Eval("companyname") %>' CssClass="badge" />
                    <br />
                    <b>Reviews:</b>
                    <asp:Label ID="reviewsLabel" runat="server" Text='<%# Eval("reviews") %>' />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" SelectCommand="SELECT [companyname], [reviews] FROM [reviews]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

