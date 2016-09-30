<%@ Page Title="Candidate Home" Language="C#" MasterPageFile="~/MasterPageCandidate.master"
    AutoEventWireup="true" CodeFile="CandidateHome.aspx.cs" Inherits="CandidateHome" %>

<%@ MasterType VirtualPath="~/MasterPageCandidate.master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="headPlaceHolder" runat="Server">
</asp:Content>
<asp:Content ID="formContent" ContentPlaceHolderID="contentPlaceHolder" runat="Server">
    <div class="panel" style="padding: 15px; font-weight: bold; ">
        <br />
        <asp:GridView ID="gvJobs" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="6" DataKeyNames="jobid" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="gvJobs_SelectedIndexChanged" Width="1065px" HorizontalAlign="Center" Height="478px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="jobid" HeaderText="jobid" InsertVisible="False" ReadOnly="True" SortExpression="jobid" Visible="False" />
                <%--<asp:BoundField DataField="companyname" HeaderText="Company Name" SortExpression="companyname" />--%>
               <%-- <asp:BoundField DataField="dateuploaded" HeaderText="Date Uploaded" SortExpression="dateuploaded" />--%>
                <asp:BoundField DataField="skill1" HeaderText="Skills" SortExpression="skill1" />
                <asp:BoundField DataField="skill2" HeaderText="Additional Skill" SortExpression="skill2" />
                <asp:BoundField DataField="jobtxt" HeaderText="Job" SortExpression="jobtxt" />
                <asp:BoundField DataField="jobdescr" HeaderText="Job Description" SortExpression="jobdescr" />
                <asp:CommandField SelectText="Apply" ShowSelectButton="True" ButtonType="Button" ControlStyle-CssClass="btn btn-success">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eRecruitmentConnectionString %>" SelectCommand="SELECT * FROM [jobs]" OldValuesParameterFormatString="original_{0}"></asp:SqlDataSource>

        <div>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:eRecruitmentConnectionString %>" DeleteCommand="DELETE FROM [application] WHERE [applicid] = @original_applicid AND (([companyname] = @original_companyname) OR ([companyname] IS NULL AND @original_companyname IS NULL)) AND (([jobtxt] = @original_jobtxt) OR ([jobtxt] IS NULL AND @original_jobtxt IS NULL)) AND (([candidateid] = @original_candidateid) OR ([candidateid] IS NULL AND @original_candidateid IS NULL))" InsertCommand="INSERT INTO [application] ([companyname], [jobtxt], [candidateid]) VALUES (@companyname, @jobtxt, @candidateid)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [application]" UpdateCommand="UPDATE [application] SET [companyname] = @companyname, [jobtxt] = @jobtxt, [candidateid] = @candidateid WHERE [applicid] = @original_applicid AND (([companyname] = @original_companyname) OR ([companyname] IS NULL AND @original_companyname IS NULL)) AND (([jobtxt] = @original_jobtxt) OR ([jobtxt] IS NULL AND @original_jobtxt IS NULL)) AND (([candidateid] = @original_candidateid) OR ([candidateid] IS NULL AND @original_candidateid IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_applicid" Type="Int32" />
                    <asp:Parameter Name="original_companyname" Type="String" />
                    <asp:Parameter Name="original_jobtxt" Type="String" />
                    <asp:Parameter Name="original_candidateid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="companyname" Type="String" />
                    <asp:Parameter Name="jobtxt" Type="String" />
                    <asp:Parameter Name="candidateid" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="companyname" Type="String" />
                    <asp:Parameter Name="jobtxt" Type="String" />
                    <asp:Parameter Name="candidateid" Type="Int32" />
                    <asp:Parameter Name="original_applicid" Type="Int32" />
                    <asp:Parameter Name="original_companyname" Type="String" />
                    <asp:Parameter Name="original_jobtxt" Type="String" />
                    <asp:Parameter Name="original_candidateid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <b style="text-align:center; font-size:x-large"class="alert-success"><asp:Label ID="Label1" runat="server" CssClass="center-block"></asp:Label></b>
        </div>
        
    </div>
    <div style="margin-top: -170px;"></div>
</asp:Content>









