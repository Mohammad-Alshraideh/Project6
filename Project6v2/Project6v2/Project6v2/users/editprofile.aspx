<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="editprofile.aspx.cs" Inherits="Project6v2.users.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <style>
        th{
            display:none;
        }
        table {
   
    border-spacing: 0px;
}
        .moath{
            height:65vh;
        }
      /*  input[type="file" i] {
            display:none;
        }*/
       
       
    </style>
    <div class="container-xl px-4 mt-4">
    <!-- Account page navigation-->
    <nav class="nav nav-borders">
        <a class="nav-link active ms-0" href="https://localhost:44300/providerProfile#" target="__blank">Cancel</a>
        </nav>
    <hr class="mt-0 mb-4">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [AspNetUsers] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AspNetUsers] ([Id], [PhoneNumber], [userimages], [City], [UserName]) VALUES (@Id, @PhoneNumber, @userimages, @City, @UserName)" SelectCommand="SELECT [Id], [PhoneNumber], [userimages], [City], [UserName] FROM [AspNetUsers] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [AspNetUsers] SET [PhoneNumber] = @PhoneNumber, [userimages] = @userimages, [City] = @City, [UserName] = @UserName WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter Name="userimages" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Id" SessionField="id" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter Name="userimages" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
        <asp:GridView Width="100%"  BorderWidth="0px" BorderColor="White" ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="Id" AutoGenerateEditButton="True" OnRowUpdating="GridView1_RowUpdating" OnRowEditing="GridView1_RowEditing"  >
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" Visible="False" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" Visible="False" SortExpression="PhoneNumber" />
                <asp:TemplateField HeaderText="userimages" SortExpression="userimages" Visible="False">
                    <EditItemTemplate>
                        <asp:FileUpload ID="FileUpload2" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Bind("userimages") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="City" HeaderText="City" Visible="False" SortExpression="City" />
                <asp:BoundField DataField="UserName" Visible="False" HeaderText="UserName" SortExpression="UserName" />
                     <asp:TemplateField>
                    <ItemTemplate>
                        <div class="moath">
                          <div class="row">
        <div class="col-xl-4">
            <!-- Profile picture card-->
            <div class="card mb-4 mb-xl-0">
                <div class="card-header">Profile Picture</div>
                <div class="card-body text-center">
                    <!-- Profile picture image-->
                      <asp:Image ID="Image1" ImageUrl='<%# Bind("userimages") %>' style="width: 150px; height:150px;" CssClass="img-account-profile rounded-circle mb-2" runat="server" />
                    <!-- Profile picture help block-->

                    <div class="small font-italic text-muted mb-4">JPG or PNG no larger than 5 MB</div>
                    <!-- Profile picture upload button-->
                 <%--   <asp:Button ID="Button2" CssClass="btn btn-primary" OnClick="Button2_Click" runat="server" Text="upload" UseSubmitBehavior="False" />
                    <asp:Label ID="Label1" AssociatedControlID="FileUpload1" runat="server" CssClass="btn btn-primary" Text="  choose new image"></asp:Label>
                 --%> <asp:FileUpload ID="FileUpload1" CssClass="btn btn-primary" runat="server" />
                   <%-- <asp:TextBox ID="TextBox3" Text='<%# Bind("userimages") %>' runat="server"></asp:TextBox>--%>
                </div>
            </div>
        </div>
        <div class="col-xl-8">
            <!-- Account details card-->
            <div class="card mb-4">
                <div class="card-header">Account Details</div>
                <div class="card-body">
                    <form>
                        <!-- Form Group (username)-->
                        <div class="mb-3">
                            <label class="small mb-1" for="inputUsername">Username (how your name will appear to other users on the site)</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox1" Text='<%# Bind("UserName") %>' runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="TextBox1" ValidationGroup="g1" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                        </div>
                        <!-- Form Row-->
                        <div class="row gx-3 mb-3">
                            <!-- Form Group (first name)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputFirstName">First name</label>
                                <asp:TextBox CssClass="form-control" Text='<%# Bind("PhoneNumber") %>' TextMode="Number" ID="TextBox2" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ValidationGroup="g1" ControlToValidate="TextBox2" ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </div>
                            <!-- Form Group (last name)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputLastName">your city</label>
                                <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                     <asp:ListItem Value="irbid">irbid</asp:ListItem>
                                     <asp:ListItem Value="amman">amman</asp:ListItem>
                                     <asp:ListItem Value="jarash">jarash</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ValidationGroup="g1" ID="RequiredFieldValidator1" ControlToValidate="DropDownList1" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                           
                            </div>
                        </div>
                        <!-- Form Row        -->
                        <div class="row gx-3 mb-3">
                            <!-- Form Group (organization name)-->
                        </div>
                        <!-- Save changes button-->
                        <asp:Button ID="Button1" CommandName="MyCommand" OnClick="Button1_Click" ValidationGroup="g1" CssClass="btn btn-primary" runat="server" Text="Save changes" />
                    </form>
                </div>
            </div>
        </div>
    </div>
                            </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

        </asp:GridView>
        <%--<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>--%>
</div>
</asp:Content>
