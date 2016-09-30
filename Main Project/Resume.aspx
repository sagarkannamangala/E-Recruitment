<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPageCandidate.master" CodeFile="Resume.aspx.cs" Inherits="Resume" %>

<asp:Content ID="headContent" ContentPlaceHolderID="headPlaceHolder" runat="Server">
</asp:Content>
<asp:Content ID="formContent" ContentPlaceHolderID="contentPlaceHolder" runat="Server">
    <div class="panel" style="padding: 15px; font-weight: bold; ">
        <div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <asp:Label ID="lblFirstName" runat="server" Text="First Name" CssClass="control-label col-sm-3"></asp:Label>
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" Display="Dynamic" ErrorMessage="First Name is required">*</asp:RequiredFieldValidator>
            <br /><br />
            <asp:Label ID="lblLastName" runat="server" Text="Last Name" CssClass="control-label col-sm-3"></asp:Label>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLastName" Display="Dynamic" ErrorMessage="Last Name is required">*</asp:RequiredFieldValidator>
            <br /><br />
            <asp:Label ID="lblEducation" runat="server" Text="Education" CssClass="control-label col-sm-3"></asp:Label>
            <asp:TextBox ID="txtEducation" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEducation" Display="Dynamic" ErrorMessage="Education is a required field">*</asp:RequiredFieldValidator>
            <br /><br />
            <asp:Label ID="lblUniversity" runat="server" Text="University" CssClass="control-label col-sm-3"></asp:Label>
            <asp:TextBox ID="txtUniversity" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUniversity" Display="Dynamic" ErrorMessage="University cannot be blank">*</asp:RequiredFieldValidator>
            <br /><br />
            <asp:Label ID="lblWorkEx" runat="server" Text="Work Ex. (months)" CssClass="control-label col-sm-3"></asp:Label>
            <asp:TextBox ID="txtWorkEx" runat="server"></asp:TextBox>

            <br /><br />
            <asp:Label ID="lblPrev1" runat="server" Text="Previous Company1" CssClass="control-label col-sm-3"></asp:Label>
            <asp:TextBox ID="txtPrev1" runat="server"></asp:TextBox>
           <br /><br />
            <asp:Label ID="lblPrev2" runat="server" Text="Previous Company 2" CssClass="control-label col-sm-3"></asp:Label>
             <asp:TextBox ID="txtPrev2" runat="server"></asp:TextBox>

            <br /><br />
            <asp:Label ID="lblSkill1" runat="server" Text="Skill" CssClass="control-label col-sm-3"></asp:Label>
           <asp:TextBox ID="txtSkill1" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="lblSkill2" runat="server" Text="Skill" CssClass="control-label col-sm-3"></asp:Label>
           <asp:TextBox ID="txtSkill2" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="lblSkill3" runat="server" Text="Skill" CssClass="control-label col-sm-3"></asp:Label>
           <asp:TextBox ID="txtSkill3" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="lblSkill4" runat="server" Text="Skill" CssClass="control-label col-sm-3"></asp:Label>
            <asp:TextBox ID="txtSkill4" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="lblProj1" runat="server" Text="Project Details 1" CssClass="control-label col-sm-3"></asp:Label>
            <asp:TextBox ID="txtProj1" runat="server" TextMode="MultiLine" Width="287px" Height="66px"></asp:TextBox>
            <br /><br />
            <asp:Label ID="lblProj2" runat="server" Text="Project Details 2" CssClass="control-label col-sm-3"></asp:Label>
            <asp:TextBox ID="txtProj2" runat="server" TextMode="MultiLine" Width="287px" Height="66px" ></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Submit" CssClass="btn btn-success" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>"
            SelectCommand="SELECT * FROM [candidate]"
            InsertCommand="INSERT INTO [candidate] ([firstname], [lastname], [education], [university], [workex], [prevorg1], 
            [prevorg2], [skill1], [skill2], [skill3], [skill4], [project1], [project2]) VALUES 
            (@firstname, @lastname, @education, @university, @workex, @prevorg1, @prevorg2, @skill1, @skill2, 
            @skill3, @skill4, @project1, @project2)"
            ConflictDetection="CompareAllValues"
            DeleteCommand="DELETE FROM [candidate] WHERE [candidateid] = @original_candidateid AND (([firstname] = @original_firstname) OR ([firstname] IS NULL AND @original_firstname IS NULL)) AND (([lastname] = @original_lastname) OR ([lastname] IS NULL AND @original_lastname IS NULL)) AND (([education] = @original_education) OR ([education] IS NULL AND @original_education IS NULL)) AND (([university] = @original_university) OR ([university] IS NULL AND @original_university IS NULL)) AND (([workex] = @original_workex) OR ([workex] IS NULL AND @original_workex IS NULL)) AND (([prevorg1] = @original_prevorg1) OR ([prevorg1] IS NULL AND @original_prevorg1 IS NULL)) AND (([prevorg2] = @original_prevorg2) OR ([prevorg2] IS NULL AND @original_prevorg2 IS NULL)) AND (([skill1] = @original_skill1) OR ([skill1] IS NULL AND @original_skill1 IS NULL)) AND (([skill2] = @original_skill2) OR ([skill2] IS NULL AND @original_skill2 IS NULL)) AND (([skill3] = @original_skill3) OR ([skill3] IS NULL AND @original_skill3 IS NULL)) AND (([skill4] = @original_skill4) OR ([skill4] IS NULL AND @original_skill4 IS NULL)) AND (([project1] = @original_project1) OR ([project1] IS NULL AND @original_project1 IS NULL)) AND (([project2] = @original_project2) OR ([project2] IS NULL AND @original_project2 IS NULL))" OldValuesParameterFormatString="original_{0}"
            UpdateCommand="UPDATE [candidate] SET [firstname] = @firstname, [lastname] = @lastname, [education] = @education, [university] = @university, [workex] = @workex, [prevorg1] = @prevorg1, [prevorg2] = @prevorg2, [skill1] = @skill1, [skill2] = @skill2, [skill3] = @skill3, [skill4] = @skill4, [project1] = @project1, [project2] = @project2 WHERE [candidateid] = @original_candidateid AND (([firstname] = @original_firstname) OR ([firstname] IS NULL AND @original_firstname IS NULL)) AND (([lastname] = @original_lastname) OR ([lastname] IS NULL AND @original_lastname IS NULL)) AND (([education] = @original_education) OR ([education] IS NULL AND @original_education IS NULL)) AND (([university] = @original_university) OR ([university] IS NULL AND @original_university IS NULL)) AND (([workex] = @original_workex) OR ([workex] IS NULL AND @original_workex IS NULL)) AND (([prevorg1] = @original_prevorg1) OR ([prevorg1] IS NULL AND @original_prevorg1 IS NULL)) AND (([prevorg2] = @original_prevorg2) OR ([prevorg2] IS NULL AND @original_prevorg2 IS NULL)) AND (([skill1] = @original_skill1) OR ([skill1] IS NULL AND @original_skill1 IS NULL)) AND (([skill2] = @original_skill2) OR ([skill2] IS NULL AND @original_skill2 IS NULL)) AND (([skill3] = @original_skill3) OR ([skill3] IS NULL AND @original_skill3 IS NULL)) AND (([skill4] = @original_skill4) OR ([skill4] IS NULL AND @original_skill4 IS NULL)) AND (([project1] = @original_project1) OR ([project1] IS NULL AND @original_project1 IS NULL)) AND (([project2] = @original_project2) OR ([project2] IS NULL AND @original_project2 IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_candidateid" Type="Int32" />
                <asp:Parameter Name="original_firstname" Type="String" />
                <asp:Parameter Name="original_lastname" Type="String" />
                <asp:Parameter Name="original_education" Type="String" />
                <asp:Parameter Name="original_university" Type="String" />
                <asp:Parameter Name="original_workex" Type="Int32" />
                <asp:Parameter Name="original_prevorg1" Type="String" />
                <asp:Parameter Name="original_prevorg2" Type="String" />
                <asp:Parameter Name="original_skill1" Type="String" />
                <asp:Parameter Name="original_skill2" Type="String" />
                <asp:Parameter Name="original_skill3" Type="String" />
                <asp:Parameter Name="original_skill4" Type="String" />
                <asp:Parameter Name="original_project1" Type="String" />
                <asp:Parameter Name="original_project2" Type="String" />
            </DeleteParameters>
            <InsertParameters>

                <asp:Parameter Name="firstname" Type="String" />
                <asp:Parameter Name="lastname" Type="String" />
                <asp:Parameter Name="education" Type="String" />
                <asp:Parameter Name="university" Type="String" />
                <asp:Parameter Name="workex" Type="Int32" />
                <asp:Parameter Name="prevorg1" Type="String" />
                <asp:Parameter Name="prevorg2" Type="String" />
                <asp:Parameter Name="skill1" Type="String" />
                <asp:Parameter Name="skill2" Type="String" />
                <asp:Parameter Name="skill3" Type="String" />
                <asp:Parameter Name="skill4" Type="String" />
                <asp:Parameter Name="project1" Type="String" />
                <asp:Parameter Name="project2" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="firstname" Type="String" />
                <asp:Parameter Name="lastname" Type="String" />
                <asp:Parameter Name="education" Type="String" />
                <asp:Parameter Name="university" Type="String" />
                <asp:Parameter Name="workex" Type="Int32" />
                <asp:Parameter Name="prevorg1" Type="String" />
                <asp:Parameter Name="prevorg2" Type="String" />
                <asp:Parameter Name="skill1" Type="String" />
                <asp:Parameter Name="skill2" Type="String" />
                <asp:Parameter Name="skill3" Type="String" />
                <asp:Parameter Name="skill4" Type="String" />
                <asp:Parameter Name="project1" Type="String" />
                <asp:Parameter Name="project2" Type="String" />
                <asp:Parameter Name="original_candidateid" Type="Int32" />
                <asp:Parameter Name="original_firstname" Type="String" />
                <asp:Parameter Name="original_lastname" Type="String" />
                <asp:Parameter Name="original_education" Type="String" />
                <asp:Parameter Name="original_university" Type="String" />
                <asp:Parameter Name="original_workex" Type="Int32" />
                <asp:Parameter Name="original_prevorg1" Type="String" />
                <asp:Parameter Name="original_prevorg2" Type="String" />
                <asp:Parameter Name="original_skill1" Type="String" />
                <asp:Parameter Name="original_skill2" Type="String" />
                <asp:Parameter Name="original_skill3" Type="String" />
                <asp:Parameter Name="original_skill4" Type="String" />
                <asp:Parameter Name="original_project1" Type="String" />
                <asp:Parameter Name="original_project2" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
    </asp:Content>
