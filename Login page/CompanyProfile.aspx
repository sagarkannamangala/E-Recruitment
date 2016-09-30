<%@ Page Language="C#" MasterPageFile="~/MasterPageCompany.master" AutoEventWireup="true" CodeFile="CompanyProfile.aspx.cs" Inherits="CompanyProfile" %>




<asp:Content ID="headContent" ContentPlaceHolderID="headPlaceHolder" runat="server">
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/justified.css" rel="stylesheet" />
    <link href="StyleSheet.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="formContent" ContentPlaceHolderID="formPlaceHolder" runat="server">

    <div class="panel" style="padding: 15px; width: 870px; font-weight: bold; height:390px;">
        
        <form class="form-horizontal">
            <legend>Create a profile for your Company!</legend>
            <fieldset>
                <asp:Label ID="Label1" runat="server" Text="Company Name" CssClass="control-label col-sm-3"></asp:Label>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
       <asp:TextBox ID="CompanyName" runat="server" CssClass="col-sm-3"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFCompanyNmae" runat="server" ControlToValidate="CompanyName" CssClass="warning" ErrorMessage="Enter a Company Name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Email ID" CssClass="control-label col-sm-3"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;
       <asp:TextBox ID="EmailID" runat="server" CssClass="col-sm-3"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailID" ErrorMessage="Enter an email ID" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="EmailID" ErrorMessage="Enter a valid Email ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="has-error" ForeColor="#FF3300"></asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Phone Number" CssClass="control-label col-sm-3"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:TextBox ID="Phone" runat="server" CssClass="col-sm-3"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Phone" ErrorMessage="Enter a phone number" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Phone" ErrorMessage="Enter a valid phone number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ForeColor="#FF3300"></asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Preferred Method" CssClass="control-label col-sm-3"></asp:Label>
                &nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Email</asp:ListItem>
                    <asp:ListItem>Phone</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-success" />
                <asp:Button ID="Button2" runat="server" Text="Clear"  CssClass="btn btn-default"/>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:erecConnectionString2 %>" SelectCommand="SELECT [pref_method] FROM [hrinfo]"></asp:SqlDataSource>
                <br />
                &nbsp;
            </fieldset>
        </form>
    </div>
    <div class="panel panel-info" style="float: right; margin-top: -410px; width: 220px; padding: 10px;">
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

