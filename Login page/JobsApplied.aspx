<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCandidate.master" AutoEventWireup="true" CodeFile="JobsApplied.aspx.cs" Inherits="JobsApplied" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentPlaceHolder" Runat="Server">
    
    <div class="panel panel-info" style="color:#000000;width: 870px; padding:20px">
        <legend>Jobs you have applied for:</legend>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Horizontal" ForeColor="Black" Width="520px">
        
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        
    <ItemTemplate>
        <b class="badge">Company Name:</b>
        <asp:Label ID="companynameLabel" runat="server" Text='<%# Eval("companyname") %>' />
        <br /><br />
        <b class="btn badge">Job Applied:</b>
        <asp:Label ID="jobtxtLabel" runat="server" Text='<%# Eval("jobtxt") %>' />
        <br />
        
<br />
    </ItemTemplate>
        <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" SelectCommand="SELECT [companyname], [jobtxt], [candidateid] FROM [application] WHERE ([candidateid] = @candidateid)">
    <SelectParameters>
        <asp:Parameter DefaultValue="1" Name="candidateid" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
        <br />
      </div>  
    <div class="panel panel-info" style="float: right; margin-top: -360px; width: 220px; padding: 10px;">
        <div class="panel-heading"><h5>Company Reviews</h5></div>
                    <asp:DataList ID="DataList2" runat="server" CellSpacing="2" DataSourceID="SqlDataSource2" RepeatLayout="Flow">
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
    

</asp:Content>

