<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JobLists.aspx.cs" Inherits="JobLists" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title></title>
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/justified.css" rel="stylesheet" />
</head>
<body>
    <div>
    <div class="container">
      
        <h3 class ="h2">Craft Yourself</h3>
        <nav>
          <ul class="nav nav-justified">
            <li ><a href="Default.aspx">Home</a></li>
            <li class="active"><a href="#">Search</a></li>
            <li><a href="#">Apply</a></li>
            <li><a href="#">Success Stories</a></li>
            <li><a href="#">Contact</a></li>
          </ul>
        </nav>
     
       <div class="jumbotron">
        <img class="img-rounded" src="images/job1.jpg" alt="job" />
      </div>
        <div class="text-justify">
        <div class="table-responsive">
        <form id="form1" runat="server">
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eRecruitmentConnectionString %>" SelectCommand="SELECT [jobtext], [jobdescr], [company], [uploaddate] FROM [JOB]"></asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#336666" CssClass="table-bordered" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal" style="margin-right: 275px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="669px">
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="White" ForeColor="#333333" />
            <ItemTemplate>
                jobtext:
                <asp:Label ID="jobtextLabel" runat="server" Text='<%# Eval("jobtext") %>' />
                <br />
                jobdescr:
                <asp:Label ID="jobdescrLabel" runat="server" Text='<%# Eval("jobdescr") %>' />
                <br />
                company:
                <asp:Label ID="companyLabel" runat="server" Text='<%# Eval("company") %>' />
                <br />
                uploaddate:
                <asp:Label ID="uploaddateLabel" runat="server" Text='<%# Eval("uploaddate") %>' />
                <br />
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
    </form>
    </div>
    
        
      </div>
     </div>
    </div>
    
   
    
       
</body>
</html>
