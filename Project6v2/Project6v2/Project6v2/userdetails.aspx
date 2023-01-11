<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userdetails.aspx.cs" Inherits="Project6v2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <br />
    <asp:Button ID="bb" runat="server" Text="Back" Height="40px" Width="90px" OnClick="bb_Click" />
    <div class="boxpro" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #06283D; text-align: center">
                <br /><br />

        <div style="width:100%; text-align:center">
            <asp:Label ID="tittt" runat="server" Text="User Information" style="text-align:center; font-family:'Times New Roman';
            font-size:25px;
            font-style:italic;
            font-weight:bold;"></asp:Label>

            </div><br /><br /><br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="426px" Width="94%" BorderColor="#DEDFDE" BackColor="White" BorderStyle="None" BorderWidth="1px">
        <AlternatingRowStyle BackColor="White" BorderColor="#06283D" Font-Names="Times New Roman" Font-Size="25px" Font-Underline="True" ForeColor="#06283D" />
        <EditRowStyle BackColor="#06283D" Font-Bold="True" ForeColor="White" />
        <FieldHeaderStyle Font-Names="Times New Roman" />
        <Fields>
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:TemplateField HeaderText="UserStatus" SortExpression="UserStatus">
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("UserStatus") %>' />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("UserStatus") %>' />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("UserStatus") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#06283D" Font-Bold="False" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#06283D" Font-Names="Times New Roman" Font-Size="25px" ForeColor="#DFF6FF" />
    </asp:DetailsView> </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" SelectCommand="SELECT * FROM [AspNetUsers] WHERE ([Id] = @Id)" DeleteCommand="DELETE FROM [AspNetUsers] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [City], [UserStatus]) VALUES (@Id, @Email, @EmailConfirmed, @PasswordHash, @SecurityStamp, @PhoneNumber, @PhoneNumberConfirmed, @TwoFactorEnabled, @LockoutEndDateUtc, @LockoutEnabled, @AccessFailedCount, @UserName, @City, @UserStatus)" UpdateCommand="UPDATE [AspNetUsers] SET [Email] = @Email, [EmailConfirmed] = @EmailConfirmed, [PasswordHash] = @PasswordHash, [SecurityStamp] = @SecurityStamp, [PhoneNumber] = @PhoneNumber, [PhoneNumberConfirmed] = @PhoneNumberConfirmed, [TwoFactorEnabled] = @TwoFactorEnabled, [LockoutEndDateUtc] = @LockoutEndDateUtc, [LockoutEnabled] = @LockoutEnabled, [AccessFailedCount] = @AccessFailedCount, [UserName] = @UserName, [City] = @City, [UserStatus] = @UserStatus WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="EmailConfirmed" Type="Boolean" />
            <asp:Parameter Name="PasswordHash" Type="String" />
            <asp:Parameter Name="SecurityStamp" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="PhoneNumberConfirmed" Type="Boolean" />
            <asp:Parameter Name="TwoFactorEnabled" Type="Boolean" />
            <asp:Parameter Name="LockoutEndDateUtc" Type="DateTime" />
            <asp:Parameter Name="LockoutEnabled" Type="Boolean" />
            <asp:Parameter Name="AccessFailedCount" Type="Int32" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="UserStatus" Type="Boolean" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="EmailConfirmed" Type="Boolean" />
            <asp:Parameter Name="PasswordHash" Type="String" />
            <asp:Parameter Name="SecurityStamp" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="PhoneNumberConfirmed" Type="Boolean" />
            <asp:Parameter Name="TwoFactorEnabled" Type="Boolean" />
            <asp:Parameter Name="LockoutEndDateUtc" Type="DateTime" />
            <asp:Parameter Name="LockoutEnabled" Type="Boolean" />
            <asp:Parameter Name="AccessFailedCount" Type="Int32" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="UserStatus" Type="Boolean" />
            <asp:Parameter Name="Id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
