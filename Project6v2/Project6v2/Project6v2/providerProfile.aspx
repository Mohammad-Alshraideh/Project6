<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="providerProfile.aspx.cs" Inherits="Project6v2.WebForm4" %>

<%@ Register Src="~/WebUserControl1.ascx" TagPrefix="uc1" TagName="WebUserControl1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <uc1:WebUserControl1 runat="server" ID="WebUserControl1" />
      <div class="divv">
                <asp:Label ID="adddlab1" runat="server" Text="Own Donations" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="40px" ForeColor="#06283D"></asp:Label>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" DeleteCommand="DELETE FROM [Services] WHERE [ServiceID] = @ServiceID" InsertCommand="INSERT INTO [Services] ([ProviderID], [ServiceName], [Description], [Image], [Status], [ServiceTime], [CategoryName], [Quantity], [LeftQuantity]) VALUES (@ProviderID, @ServiceName, @Description, @Image, @Status, @ServiceTime, @CategoryName, @Quantity, @LeftQuantity)" SelectCommand="SELECT * FROM [Services] WHERE ([ProviderID] = @ProviderID)" UpdateCommand="UPDATE [Services] SET  [ServiceName] = @ServiceName, [Description] = @Description, [Image] = @Image, [CategoryName] = @CategoryName, [Quantity] = @Quantity, [LeftQuantity] = @LeftQuantity WHERE [ServiceID] = @ServiceID">
                    <DeleteParameters>
                        <asp:Parameter Name="ServiceID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ProviderID" Type="String" />
                        <asp:Parameter Name="ServiceName" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Image" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="ServiceTime" Type="DateTime" />
                        <asp:Parameter Name="CategoryName" Type="String" />
                        <asp:Parameter Name="Quantity" Type="Int32" />
                        <asp:Parameter Name="LeftQuantity" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="ProviderID" SessionField="DIO" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ProviderID" Type="String" />
                        <asp:Parameter Name="ServiceName" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Image" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="ServiceTime" Type="DateTime" />
                        <asp:Parameter Name="CategoryName" Type="String" />
                        <asp:Parameter Name="Quantity" Type="Int32" />
                        <asp:Parameter Name="LeftQuantity" Type="Int32" />
                        <asp:Parameter Name="ServiceID" Type="Int32" />
                    </UpdateParameters>
    </asp:SqlDataSource>
                <br /><br /><br />

    <asp:GridView ID="GridView1" CssClass="ordertable" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" DataKeyNames="ServiceID" DataSourceID="SqlDataSource1" OnRowUpdating="GridView1_RowUpdating" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" EmptyDataText="You Don't Have Donations In Current Time" GridLines="Vertical" >
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ServiceID" HeaderText="ServiceID" InsertVisible="False" ReadOnly="True" SortExpression="ServiceID" />
            <asp:BoundField DataField="ServiceName" HeaderText="Name" SortExpression="ServiceName" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:TemplateField HeaderText="Image" SortExpression="Image">
                <EditItemTemplate>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' Height="80px" Width="150px"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status" SortExpression="Status">
                <EditItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Category" SortExpression="CategoryName">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList5" runat="server">
                        <asp:ListItem Value="Bed">Bed</asp:ListItem>
                        <asp:ListItem Value="Chair">Chair</asp:ListItem>
                        <asp:ListItem Value="Machine">Machine</asp:ListItem>
                        <asp:ListItem Value="Other">Other</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("CategoryName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Quantity") %>' TextMode="Number" Width="90px" style="margin-top:30px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*****" ControlToValidate="TextBox1" Font-Size="13px" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="between 1-50" ControlToValidate="TextBox1" MinimumValue="1" MaximumValue="50" Font-Size="12px" ForeColor="Red"></asp:RangeValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="LeftQuantity" SortExpression="LeftQuantity">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LeftQuantity") %>' TextMode="Number" Width="90px" style="margin-top:30px"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*****" ControlToValidate="TextBox2" Font-Size="13px" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Left Quantity greater than Quantity" ForeColor="Red" ControlToValidate="TextBox2" ControlToCompare="TextBox1" Font-Size="12px" Operator="LessThan" Type="Integer"></asp:CompareValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("LeftQuantity") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Time" SortExpression="ServiceTime">
                <EditItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("ServiceTime") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("ServiceTime") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#06283D" Font-Bold="True" Font-Names="Times New Roman" Font-Size="17px" ForeColor="#DFF6FF" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>

    <br /><br /><br /> 

     <br /><br /><br />
                <div class="divv">
                <asp:Label ID="adddlab" runat="server" Text="Requests" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="40px" ForeColor="#06283D"></asp:Label>
                </div>
                <br /><br />

    <div style="margin-left:44%">
    <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Font-Names="Times New Roman" Font-Size="17px" Width="15%">
         <asp:ListItem Value="Accept">Accept</asp:ListItem>
                        <asp:ListItem Value="Reject">Reject</asp:ListItem>
                        <asp:ListItem Value="wait">Wait</asp:ListItem>
                        <asp:ListItem Value="Finish">Finish</asp:ListItem>
</asp:DropDownList>
<asp:Button ID="Button2" runat="server" Text="Show" Width="7%" Height="30px" BackColor="#06283D" ForeColor="#DFF6FF"/></div>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" SelectCommand="SELECT * FROM [Orders] WHERE ([OrderStatus] = @OrderStatus)" DeleteCommand="DELETE FROM [Orders] WHERE [OrderID] = @OrderID" InsertCommand="INSERT INTO [Orders] ([ServiceID], [CustomerID], [OrderTime], [OrderStatus], [SerQuantity]) VALUES (@ServiceID, @CustomerID, @OrderTime, @OrderStatus, @SerQuantity)" UpdateCommand="UPDATE [Orders] SET  [OrderStatus] = @OrderStatus WHERE [OrderID] = @OrderID">
    <DeleteParameters>
        <asp:Parameter Name="OrderID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ServiceID" Type="Int32" />
        <asp:Parameter Name="CustomerID" Type="String" />
        <asp:Parameter Name="OrderTime" Type="DateTime" />
        <asp:Parameter Name="OrderStatus" Type="String" />
        <asp:Parameter Name="SerQuantity" Type="Int32" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="OrderStatus" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="ServiceID" Type="Int32" />
        <asp:Parameter Name="CustomerID" Type="String" />
        <asp:Parameter Name="OrderTime" Type="DateTime" />
        <asp:Parameter Name="OrderStatus" Type="String" />
        <asp:Parameter Name="SerQuantity" Type="Int32" />
        <asp:Parameter Name="OrderID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    <br />
   
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource2" EmptyDataText="No Data In This Feild" ForeColor="Black" HorizontalAlign="Center" CssClass="ordertable" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnRowUpdating="GridView2_RowUpdating" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
        <AlternatingRowStyle HorizontalAlign="Center" BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
            <asp:TemplateField HeaderText="ServiceID" SortExpression="ServiceID">
                <EditItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("ServiceID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("ServiceID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CustomerID" SortExpression="CustomerID">
                <EditItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("CustomerID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("CustomerID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="OrderTime" SortExpression="OrderTime">
                <EditItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("OrderTime") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("OrderTime") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Order Status" SortExpression="OrderStatus">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("OrderStatus") %>'>
                        <asp:ListItem Value="Accept">Accept</asp:ListItem>
                        <asp:ListItem Value="wait">Wait</asp:ListItem>
                        <asp:ListItem Value="Reject">Reject</asp:ListItem>
                        <asp:ListItem Value="Finish">Finish</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("OrderStatus") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="SerQuantity" SortExpression="SerQuantity">
                <EditItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("SerQuantity") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("SerQuantity") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="#06283D" Font-Bold="True" ForeColor="#DFF6FF" HorizontalAlign="Center" VerticalAlign="Middle" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#DFF6FF" Font-Bold="True" ForeColor="#06283D" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
    
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" SelectCommand="SELECT Orders.OrderID, Orders.ServiceID, Orders.CustomerID, Orders.OrderTime, Orders.OrderStatus, Orders.SerQuantity, Services.ProviderID, Services.ServiceName, Services.Description, Services.Image, Services.Status, Services.ServiceTime, Services.CategoryName, Services.Quantity, Services.LeftQuantity, AspNetUsers.Id, AspNetUsers.Email, AspNetUsers.EmailConfirmed, AspNetUsers.PasswordHash, AspNetUsers.SecurityStamp, AspNetUsers.PhoneNumber, AspNetUsers.PhoneNumberConfirmed, AspNetUsers.TwoFactorEnabled, AspNetUsers.LockoutEndDateUtc, AspNetUsers.LockoutEnabled, AspNetUsers.AccessFailedCount, AspNetUsers.UserName, AspNetUsers.City, AspNetUsers.UserStatus, AspNetUsers.RoleUser FROM Orders INNER JOIN Services ON Services.ServiceID = Orders.ServiceID AND Services.ProviderID = @ProviderID INNER JOIN AspNetUsers ON AspNetUsers.Id = Orders.CustomerID AND Orders.OrderID = @OrderID">
        <SelectParameters>
            <asp:SessionParameter Name="ProviderID" SessionField="DIO" />
            <asp:ControlParameter ControlID="GridView2" Name="OrderID" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
   
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource3" Height="50px" Width="40%" BackColor="White" BorderColor="#DFF6FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" style="margin-left:30%">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <Fields>
            <asp:BoundField DataField="OrderID" HeaderText="#" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
            <asp:TemplateField HeaderText="Image" SortExpression="Image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Image") %>' Height="80px" Width="150px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ServiceName" HeaderText="Donation" SortExpression="ServiceName" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="CategoryName" HeaderText="Category" SortExpression="CategoryName" />
            <asp:BoundField DataField="SerQuantity" HeaderText="Quantity" SortExpression="SerQuantity" />
            <asp:BoundField DataField="OrderTime" HeaderText="Time" SortExpression="OrderTime" />
            <asp:BoundField DataField="LeftQuantity" HeaderText="LeftQuantity" SortExpression="LeftQuantity" />
            <asp:BoundField DataField="UserName" HeaderText="Beneficiary" SortExpression="UserName" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" SortExpression="PhoneNumber" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="OrderStatus" HeaderText="Status" SortExpression="OrderStatus" />
        </Fields>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#DFF6FF" ForeColor="#4A3C8C" />
    </asp:DetailsView>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
