<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="singleservice.aspx.cs" Inherits="Project6v2.users.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <link
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"rel="stylesheet"/>
    <link href="css/mdb.min.css"rel="stylesheet"/>
      <style>
              .moath{
                  height:100vh;
                  width:100vw;
              }
              .img-fluid{
                  object-fit: cover;

              }
          </style>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" DeleteCommand="DELETE FROM [AspNetUsers] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AspNetUsers] ([Email], [PhoneNumber], [userimages], [UserStatus], [City], [UserName], [Id]) VALUES (@Email, @PhoneNumber, @userimages, @UserStatus, @City, @UserName, @Id)" SelectCommand="SELECT Services.ServiceID, Services.ProviderID, AspNetUsers.Email, AspNetUsers.PhoneNumber, AspNetUsers.UserName, AspNetUsers.City, Services.ServiceName, Services.Description, Services.Image, Services.ServiceTime, Services.CategoryName, Services.LeftQuantity FROM Services INNER JOIN AspNetUsers ON AspNetUsers.Id = Services.ProviderID AND Services.ServiceID = @ServiceID" UpdateCommand="UPDATE [AspNetUsers] SET [Email] = @Email, [PhoneNumber] = @PhoneNumber, [userimages] = @userimages, [UserStatus] = @UserStatus, [City] = @City, [UserName] = @UserName WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="PhoneNumber" Type="String" />
                        <asp:Parameter Name="userimages" Type="String" />
                        <asp:Parameter Name="UserStatus" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Id" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="" Name="serviceid" QueryStringField="surviceid" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="PhoneNumber" Type="String" />
                        <asp:Parameter Name="userimages" Type="String" />
                        <asp:Parameter Name="UserStatus" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Id" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
  
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" DeleteCommand="DELETE FROM [Orders] WHERE [OrderID] = @OrderID" InsertCommand="INSERT INTO [Orders] ([ServiceID], [CustomerID], [OrderTime], [OrderStatus], [SerQuantity]) VALUES (@ServiceID, @CustomerID, @OrderTime, @OrderStatus, @SerQuantity)" SelectCommand="SELECT * FROM [Orders]" UpdateCommand="UPDATE [Orders] SET [ServiceID] = @ServiceID, [CustomerID] = @CustomerID, [OrderTime] = @OrderTime, [OrderStatus] = @OrderStatus, [SerQuantity] = @SerQuantity WHERE [OrderID] = @OrderID">
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
            <UpdateParameters>
                <asp:Parameter Name="ServiceID" Type="Int32" />
                <asp:Parameter Name="CustomerID" Type="String" />
                <asp:Parameter Name="OrderTime" Type="DateTime" />
                <asp:Parameter Name="OrderStatus" Type="String" />
                <asp:Parameter Name="SerQuantity" Type="Int32" />
                <asp:Parameter Name="OrderID" Type="Int32" />
            </UpdateParameters>
                </asp:SqlDataSource>
    
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ServiceID" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                    <Columns>
                        <asp:TemplateField>
                           <ItemTemplate>
                               
        <div>
            <section class="moath" style="background-color: #eee;">
                                           
  <div class="container py-5">
      <div class="row">
      <div class="col">
        <nav aria-label="breadcrumb" class="bg-light rounded-3 p-3 mb-4">
          <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item"><a href="#">services</a></li>
            <li class="breadcrumb-item active" aria-current="page">Single service</li>
          </ol>
        </nav>
      </div>
    </div>
      
    

    <div class="row">
         
                                <div class="col-lg-4">
                          <div class="card mb-4">
                              <div class="card-body text-center">
                               <asp:Image ID="Image1" ImageUrl='<%# Eval("Image") %>' style="width: 150px; height:150px;" CssClass="rounded-circle img-fluid" runat="server" />
            
            <h5 class="my-3">Name: <%# Eval("ServiceName") %></h5>
            <p class="text-muted mb-1">Category Name: <%# Eval("CategoryName") %></p>
            <p class="text-muted mb-4">Quantity <%# Eval("LeftQuantity") %></p>
           <div class=" mb-2">
              select the quantity <asp:TextBox Width="60px" Height="30px" ID="TextBox1" Text='<%# Eval("LeftQuantity") %>' runat="server"></asp:TextBox>
               <asp:RangeValidator ValidationGroup="1" ID="RangeValidator1" ControlToValidate="TextBox1" MinimumValue="1" MaximumValue='<%# Eval("LeftQuantity") %>' ErrorMessage="wrong quantity" runat="server" ></asp:RangeValidator>
              <br /> <br /> 
               <asp:Button ValidationGroup="1" ID="Button1" OnClick="Button_Click" CssClass="btn btn-outline-primary ms-1" runat="server" Text="book now" />
              
            </div>
          </div>
        </div>
      
      </div>
                                 <div class="col-lg-8">
        <div class="card mb-4">
          <div class="card-body">
               <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Provider Details</p>
              </div>
             
            </div>
              <br />
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Full Name</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0"><%# Eval("UserName") %></p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Email</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0"><%# Eval("Email") %></p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Phone</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0"><%# Eval("PhoneNumber") %></p>
              </div>
            </div>
            <hr>
          
           
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">City</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0"><%# Eval("City") %></p>
              </div>
            </div>
          </div>
        </div>
       <%-- <div class="row">
          <div class="col-md-6">
            <div class="card mb-4 mb-md-0">
              <div class="card-body">
                <p class="mb-4"><span class="text-primary font-italic me-1">assigment</span> Project Status
                </p>
                <p class="mb-1" style="font-size: .77rem;">Web Design</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 80%" aria-valuenow="80"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">Website Markup</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 72%" aria-valuenow="72"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">One Page</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 89%" aria-valuenow="89"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">Mobile Template</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 55%" aria-valuenow="55"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">Backend API</p>
                <div class="progress rounded mb-2" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 66%" aria-valuenow="66"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="card mb-4 mb-md-0">
              <div class="card-body">
                <p class="mb-4"><span class="text-primary font-italic me-1">assigment</span> Project Status
                </p>
                <p class="mb-1" style="font-size: .77rem;">Web Design</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 80%" aria-valuenow="80"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">Website Markup</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 72%" aria-valuenow="72"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">One Page</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 89%" aria-valuenow="89"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">Mobile Template</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 55%" aria-valuenow="55"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">Backend API</p>
                <div class="progress rounded mb-2" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 66%" aria-valuenow="66"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
              </div>
            </div>
          </div>
        </div>--%>
      </div>
    </div>
  </div>
</section>
        </div>
                              </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" SelectCommand="SELECT Services.ServiceID, Services.ProviderID, AspNetUsers.Email, AspNetUsers.PhoneNumber, AspNetUsers.UserName, AspNetUsers.City, Services.ServiceName, Services.Description, Services.Image, Services.ServiceTime, Services.CategoryName, Services.LeftQuantity FROM Services INNER JOIN AspNetUsers ON AspNetUsers.Id = Services.ProviderID AND Services.ServiceID = @ServiceID">
                    <SelectParameters>
                        <asp:SessionParameter Name="ServiceID" SessionField="serviceid" />
                    </SelectParameters>
                </asp:SqlDataSource>
     
    
</asp:Content>
