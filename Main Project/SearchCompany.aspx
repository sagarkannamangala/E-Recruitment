<%@ Page Language="C#" MasterPageFile="~/MasterPageCompany.master" AutoEventWireup="true" CodeFile="SearchCompany.aspx.cs" Inherits="SearchCompany" %>

<asp:Content ID="headContent" ContentPlaceHolderID="headPlaceHolder" runat="server">
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/justified.css" rel="stylesheet" />
    <link href="StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="formContent" ContentPlaceHolderID="formPlaceHolder" runat="server">

    <div class="panel" style="padding: 15px; width: 1140px; font-weight: bold; height:600px;">
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" SelectCommand="SELECT * FROM [skill]"></asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="skilltxt" DataValueField="skilltxt" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="candidateid" DataSourceID="SqlDataSource2">
            <AlternatingItemTemplate>
                <li style="background-color: #ffffff;">
                    
                    
                    firstname:
                    <asp:Label ID="firstnameLabel" runat="server" Text='<%# Eval("firstname") %>' />
                    <br />
                    lastname:
                    <asp:Label ID="lastnameLabel" runat="server" Text='<%# Eval("lastname") %>' />
                    <br />
                    education:
                    <asp:Label ID="educationLabel" runat="server" Text='<%# Eval("education") %>' />
                    <br />
                    university:
                    <asp:Label ID="universityLabel" runat="server" Text='<%# Eval("university") %>' />
                    <br />
                    workex:
                    <asp:Label ID="workexLabel" runat="server" Text='<%# Eval("workex") %>' />
                    <br />
                    prevorg1:
                    <asp:Label ID="prevorg1Label" runat="server" Text='<%# Eval("prevorg1") %>' />
                    <br />
                    prevorg2:
                    <asp:Label ID="prevorg2Label" runat="server" Text='<%# Eval("prevorg2") %>' />
                    <br />
                    skill1:
                    <asp:Label ID="skill1Label" runat="server" Text='<%# Eval("skill1") %>' />
                    <br />
                    skill2:
                    <asp:Label ID="skill2Label" runat="server" Text='<%# Eval("skill2") %>' />
                    <br />
                    skill3:
                    <asp:Label ID="skill3Label" runat="server" Text='<%# Eval("skill3") %>' />
                    <br />
                    skill4:
                    <asp:Label ID="skill4Label" runat="server" Text='<%# Eval("skill4") %>' />
                    <br />
                    project1:
                    <asp:Label ID="project1Label" runat="server" Text='<%# Eval("project1") %>' />
                    <br />
                    project2:
                    <asp:Label ID="project2Label" runat="server" Text='<%# Eval("project2") %>' />
                    <br />
                </li>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <li style="background-color: #ffffff;color: #FFFFFF;">
                    firstname:
                    <asp:TextBox ID="firstnameTextBox" runat="server" Text='<%# Bind("firstname") %>' />
                    <br />
                    lastname:
                    <asp:TextBox ID="lastnameTextBox" runat="server" Text='<%# Bind("lastname") %>' />
                    <br />
                    education:
                    <asp:TextBox ID="educationTextBox" runat="server" Text='<%# Bind("education") %>' />
                    <br />
                    university:
                    <asp:TextBox ID="universityTextBox" runat="server" Text='<%# Bind("university") %>' />
                    <br />
                    workex:
                    <asp:TextBox ID="workexTextBox" runat="server" Text='<%# Bind("workex") %>' />
                    <br />
                    prevorg1:
                    <asp:TextBox ID="prevorg1TextBox" runat="server" Text='<%# Bind("prevorg1") %>' />
                    <br />
                    prevorg2:
                    <asp:TextBox ID="prevorg2TextBox" runat="server" Text='<%# Bind("prevorg2") %>' />
                    <br />
                    skill1:
                    <asp:TextBox ID="skill1TextBox" runat="server" Text='<%# Bind("skill1") %>' />
                    <br />
                    skill2:
                    <asp:TextBox ID="skill2TextBox" runat="server" Text='<%# Bind("skill2") %>' />
                    <br />
                    skill3:
                    <asp:TextBox ID="skill3TextBox" runat="server" Text='<%# Bind("skill3") %>' />
                    <br />
                    skill4:
                    <asp:TextBox ID="skill4TextBox" runat="server" Text='<%# Bind("skill4") %>' />
                    <br />
                    project1:
                    <asp:TextBox ID="project1TextBox" runat="server" Text='<%# Bind("project1") %>' />
                    <br />
                    project2:
                    <asp:TextBox ID="project2TextBox" runat="server" Text='<%# Bind("project2") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </li>
            </EditItemTemplate>
            <EmptyDataTemplate>
                No data was returned.
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <li style="">firstname:
                    <asp:TextBox ID="firstnameTextBox" runat="server" Text='<%# Bind("firstname") %>' />
                    <br />lastname:
                    <asp:TextBox ID="lastnameTextBox" runat="server" Text='<%# Bind("lastname") %>' />
                    <br />education:
                    <asp:TextBox ID="educationTextBox" runat="server" Text='<%# Bind("education") %>' />
                    <br />university:
                    <asp:TextBox ID="universityTextBox" runat="server" Text='<%# Bind("university") %>' />
                    <br />workex:
                    <asp:TextBox ID="workexTextBox" runat="server" Text='<%# Bind("workex") %>' />
                    <br />prevorg1:
                    <asp:TextBox ID="prevorg1TextBox" runat="server" Text='<%# Bind("prevorg1") %>' />
                    <br />prevorg2:
                    <asp:TextBox ID="prevorg2TextBox" runat="server" Text='<%# Bind("prevorg2") %>' />
                    <br />skill1:
                    <asp:TextBox ID="skill1TextBox" runat="server" Text='<%# Bind("skill1") %>' />
                    <br />skill2:
                    <asp:TextBox ID="skill2TextBox" runat="server" Text='<%# Bind("skill2") %>' />
                    <br />skill3:
                    <asp:TextBox ID="skill3TextBox" runat="server" Text='<%# Bind("skill3") %>' />
                    <br />skill4:
                    <asp:TextBox ID="skill4TextBox" runat="server" Text='<%# Bind("skill4") %>' />
                    <br />project1:
                    <asp:TextBox ID="project1TextBox" runat="server" Text='<%# Bind("project1") %>' />
                    <br />project2:
                    <asp:TextBox ID="project2TextBox" runat="server" Text='<%# Bind("project2") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </li>
            </InsertItemTemplate>
            <ItemSeparatorTemplate>
<br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <li style="background-color: #ffffff;color: #000000;">
                    firstname:
                    <asp:Label ID="firstnameLabel" runat="server" Text='<%# Eval("firstname") %>' />
                    <br />
                    lastname:
                    <asp:Label ID="lastnameLabel" runat="server" Text='<%# Eval("lastname") %>' />
                    <br />
                    education:
                    <asp:Label ID="educationLabel" runat="server" Text='<%# Eval("education") %>' />
                    <br />
                    university:
                    <asp:Label ID="universityLabel" runat="server" Text='<%# Eval("university") %>' />
                    <br />
                    workex:
                    <asp:Label ID="workexLabel" runat="server" Text='<%# Eval("workex") %>' />
                    <br />
                    prevorg1:
                    <asp:Label ID="prevorg1Label" runat="server" Text='<%# Eval("prevorg1") %>' />
                    <br />
                    prevorg2:
                    <asp:Label ID="prevorg2Label" runat="server" Text='<%# Eval("prevorg2") %>' />
                    <br />
                    skill1:
                    <asp:Label ID="skill1Label" runat="server" Text='<%# Eval("skill1") %>' />
                    <br />
                    skill2:
                    <asp:Label ID="skill2Label" runat="server" Text='<%# Eval("skill2") %>' />
                    <br />
                    skill3:
                    <asp:Label ID="skill3Label" runat="server" Text='<%# Eval("skill3") %>' />
                    <br />
                    skill4:
                    <asp:Label ID="skill4Label" runat="server" Text='<%# Eval("skill4") %>' />
                    <br />
                    project1:
                    <asp:Label ID="project1Label" runat="server" Text='<%# Eval("project1") %>' />
                    <br />
                    project2:
                    <asp:Label ID="project2Label" runat="server" Text='<%# Eval("project2") %>' />
                    <br />
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="text-align: center;background-color: #ffffff;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">
                    firstname:
                    <asp:Label ID="firstnameLabel" runat="server" Text='<%# Eval("firstname") %>' />
                    <br />
                    lastname:
                    <asp:Label ID="lastnameLabel" runat="server" Text='<%# Eval("lastname") %>' />
                    <br />
                    education:
                    <asp:Label ID="educationLabel" runat="server" Text='<%# Eval("education") %>' />
                    <br />
                    university:
                    <asp:Label ID="universityLabel" runat="server" Text='<%# Eval("university") %>' />
                    <br />
                    workex:
                    <asp:Label ID="workexLabel" runat="server" Text='<%# Eval("workex") %>' />
                    <br />
                    prevorg1:
                    <asp:Label ID="prevorg1Label" runat="server" Text='<%# Eval("prevorg1") %>' />
                    <br />
                    prevorg2:
                    <asp:Label ID="prevorg2Label" runat="server" Text='<%# Eval("prevorg2") %>' />
                    <br />
                    skill1:
                    <asp:Label ID="skill1Label" runat="server" Text='<%# Eval("skill1") %>' />
                    <br />
                    skill2:
                    <asp:Label ID="skill2Label" runat="server" Text='<%# Eval("skill2") %>' />
                    <br />
                    skill3:
                    <asp:Label ID="skill3Label" runat="server" Text='<%# Eval("skill3") %>' />
                    <br />
                    skill4:
                    <asp:Label ID="skill4Label" runat="server" Text='<%# Eval("skill4") %>' />
                    <br />
                    project1:
                    <asp:Label ID="project1Label" runat="server" Text='<%# Eval("project1") %>' />
                    <br />
                    project2:
                    <asp:Label ID="project2Label" runat="server" Text='<%# Eval("project2") %>' />
                    <br />
                </li>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" SelectCommand="SELECT * FROM [candidate] WHERE ([skill1] = @skill1)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="skill1" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
     </div>
    <br />
    <br />
    <br />
</asp:Content>