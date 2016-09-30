<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCandidate.master" AutoEventWireup="true" CodeFile="ContactUsCandidate.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentPlaceHolder" Runat="Server">
    <div class="panel" style="padding: 15px; width: 870px; font-weight: bold;">
        <legend>Contact us through this form!</legend>
        <p>
            &nbsp;</p>
        <asp:Label ID="lblname" runat="server" Text="Name" CssClass="control-label col-sm-3"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtname" runat="server" CssClass="col-sm-3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvname" runat="server" ErrorMessage="Please enter name" ControlToValidate="txtname"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblemail" runat="server" Text="Email" CssClass="control-label col-sm-3"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtemail" runat="server" CssClass="col-sm-3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvemail" runat="server" ErrorMessage="please enter email" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="revemail" runat="server" ErrorMessage="please enter valid email ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="lblsubject" runat="server" Text="Subject" CssClass="control-label col-sm-3"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtsubject" runat="server" CssClass="col-sm-3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvsubject" runat="server" ErrorMessage="please enter subject" ControlToValidate="txtsubject"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblmessage" runat="server" Text="Message" CssClass="control-label col-sm-3"></asp:Label>
        <textarea id="txtareamessage" cols="28" name="S1" rows="2" ></textarea><br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnsubmit" runat="server" Text="Submit" class="btn btn-primary" OnClick="btnsubmit_Click"/>
        &nbsp;&nbsp;<asp:Button ID="clearcontact" runat="server" Text="Clear" class="btn btn-warning" OnClick="clearcontact_Click"/>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="contactuslabel" runat="server" CssClass="alert alert-success"></asp:Label>
        </div>
    
    <div class="panel panel-info" style="float: right; margin-top: -370px; width: 220px; padding: 10px;">
        <div class="panel-heading"><h5>Company Reviews</h5></div>
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
</asp:Content>

