<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userinfo.aspx.cs" Inherits="Project6v2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
   
    <br /><br />
     <div class="wizad">
          
<asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="3" BackColor="#DFF6FF"
    Font-Names="Verdana" Font-Size="0.8em" Height="900px" Width="97.75%" FinishCompleteButtonText="Users"
    FinishPreviousButtonText="Services" OnActiveStepChanged="Wizard1_ActiveStepChanged" OnFinishButtonClick="Wizard1_FinishButtonClick1" 
   >
        <FinishCompleteButtonStyle BackColor="#06283D" Font-Names="Times New Roman" Font-Size="15px" ForeColor="#DFF6FF" Height="40px" Width="70px" />
        <FinishPreviousButtonStyle BackColor="#06283D" Font-Names="Times New Roman" Font-Size="15px" ForeColor="#DFF6FF" Height="40px" Width="70px" />
        <HeaderStyle BackColor="#FFCCFF" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
        <NavigationButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Times New Roman" Font-Size="0.8em" ForeColor="#1C5E55" />
        <NavigationStyle BackColor="#DFF6FF" BorderColor="#DFF6FF" />
        <StartNextButtonStyle BackColor="#06283D" Font-Size="15px" ForeColor="#DFF6FF" Height="40px" Width="70px" Font-Names="Times New Roman" />
        <StepNextButtonStyle BackColor="#06283D" Font-Size="15px" Font-Underline="True" ForeColor="#DFF6FF" Height="40px" Width="70px" Font-Names="Times New Roman" />
        <StepPreviousButtonStyle BackColor="#06283D" Font-Size="15px" ForeColor="#DFF6FF" Height="40px" Width="70px" Font-Names="Times New Roman" />
        <SideBarButtonStyle ForeColor="#DFF6FF" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="20px" Height="100px" BorderColor="#06283D" />
        <SideBarStyle BackColor="#06283D" Font-Size="0.9em" VerticalAlign="Middle" Width="250px" ForeColor="#DFF6FF" HorizontalAlign="Center" BorderColor="#06283D" BorderStyle="Solid"/>
        <StepStyle BackColor="#DFF6FF" BorderColor="#DFF6FF" BorderStyle="Solid" BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Top" Width="900px" Font-Names="Times New Roman" />
        <WizardSteps>
           
           
            <asp:WizardStep ID="adm" runat="server" Title="Admin">
                <br /><br /><br />
                <div class="divv">
                <asp:Label ID="adddlab" runat="server" Text="Welcome Admin" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="40px" ForeColor="#06283D"></asp:Label>
                </div>
                <br /><br /><br /><br />
                <br /><br /><br /><br />
<%--                <div class="perdiv">
                <asp:Label ID="Label6" runat="server" Text="" CssClass="percUlab "></asp:Label>
                <asp:Label ID="Label7" runat="server" Text="" CssClass="percPlab "></asp:Label>
                </div>
                <br />
                <asp:Image ID="Image1" runat="server" ImageUrl="~\img\DON.jfif" CssClass="admIMG"/>
                <br />--%>
                <%--                //////////////////////////////////////////////--%>
                 <div class="flex-wrapper">
        <div class="single-chart">
            <svg viewBox="0 0 36 36" class="circular-chart orange">
                <path class="circle-bg"
                    d="M18 2.0845
          a 15.9155 15.9155 0 0 1 0 31.831
          a 15.9155 15.9155 0 0 1 0 -31.831" />
                <path id="percent1" runat="server" class="circle"
                    d="M18 2.0845
          a 15.9155 15.9155 0 0 1 0 31.831
          a 15.9155 15.9155 0 0 1 0 -31.831" />
                <text id="firstPercent" runat="server" x="18" y="20.35" class="percentage"></text>
            </svg>
            <h4>Beneficiary</h4>
        </div>

       <div class="single-chart">
            <svg viewBox="0 0 36 36" class="circular-chart green">
                <path class="circle-bg"
                    d="M18 2.0845
          a 15.9155 15.9155 0 0 1 0 31.831
          a 15.9155 15.9155 0 0 1 0 -31.831" />
                <path id="percent2" runat="server" class="circle"
                    d="M18 2.0845
          a 15.9155 15.9155 0 0 1 0 31.831
          a 15.9155 15.9155 0 0 1 0 -31.831" />
                <text id="secPercent" runat="server" x="18" y="20.35" class="percentage"></text>
            </svg>         <h4>Donations</h4>

        </div>
        <div class="single-chart">
            <svg viewBox="0 0 36 36" class="circular-chart blue">
                <path class="circle-bg"
                    d="M18 2.0845
          a 15.9155 15.9155 0 0 1 0 31.831
          a 15.9155 15.9155 0 0 1 0 -31.831" />
                <path id="percent3" class="circle" runat="server"
                    d="M18 2.0845
          a 15.9155 15.9155 0 0 1 0 31.831
          a 15.9155 15.9155 0 0 1 0 -31.831" />
                <text id="thirdPercent" runat="server" x="18" y="20.35" class="percentage"></text>
            </svg><h4>Doners</h4>
        </div>
    </div>
    <div style="display: flex; justify-content: space-around; width: 100%;">
       <%-- <h4>Beneficiary</h4>--%>
<%--         <h4>Donations</h4>--%>
        <%--<h4>Doners</h4>--%>
    </div>
    <br />
    <br />
    <br />
    <br />

    <div style="display: flex; justify-content: space-evenly; width: 100%;">
        <div style="font-size: 25px">
            <span>
                <asp:Label Style="font-size: 55px" ID="BB" runat="server" Text="Label" ForeColor="#FF9F29"></asp:Label>
            </span>&nbsp;&nbsp;Beneficiary
        </div>
        <div style="font-size: 25px">
            <span>
                <asp:Label Style="font-size: 55px" ID="DON" runat="server" Text="Label" ForeColor="#FF9F29"></asp:Label>
            </span>&nbsp;&nbsp;Donations
        </div>
         <div style="font-size: 25px">
            <span>
                <asp:Label Style="font-size: 55px" ID="DD" runat="server" Text="Label" ForeColor="#FF9F29"></asp:Label>
            </span>&nbsp;&nbsp;Doners
        </div>
    </div>
<%--                //////////////////////////////////////////////--%>
            </asp:WizardStep>
           
           
            <asp:WizardStep runat="server" title="Beneficiary" ID="usr">
               <br />
                <br /><br />
                <div class="divv">
                <asp:Label ID="Label1" runat="server" Text="Beneficiary Information" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="40px" ForeColor="#06283D"></asp:Label>
                </div>
                
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" SelectCommand="SELECT * FROM [AspNetUsers] WHERE ([UserName] LIKE '%' + @UserName + '%')">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="usesar" Name="UserName" PropertyName="Text" Type="String" />
                        </SelectParameters>
                </asp:SqlDataSource>
                
                    <br /><br /><br /><br />
                <asp:TextBox ID="usesar" runat="server" Height="35px" Width="405px"></asp:TextBox>
                <asp:Button ID="seaUB" runat="server" BackColor="#06283D" ForeColor="#DFF6FF" Height="30px" Text="Search" Width="70px" Font-Size="14px" style="margin-left:10px"/>
                <br /><br /><br /><br /><br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" SelectCommand="SELECT AspNetUsers.Email, AspNetUsers.PhoneNumber, AspNetUsers.UserName, AspNetUsers.Id, AspNetUserRoles.UserId, AspNetUserRoles.RoleId FROM AspNetUsers INNER JOIN AspNetUserRoles ON AspNetUsers.Id = AspNetUserRoles.UserId AND AspNetUserRoles.RoleId = 3">
                </asp:SqlDataSource>
               <div class="grr">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Id,UserId,RoleId" Height="300px" HorizontalAlign="Center" Width="85%" CssClass="headerT" CellPadding="4" ForeColor="#06283D333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="UserName" HeaderText="Beneficiary" SortExpression="UserName" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" SortExpression="PhoneNumber" />
                    </Columns>
                    <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#2461BF" />
                    <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <FooterStyle BackColor="#507CD1" HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#06283D" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="50px" VerticalAlign="Middle" Wrap="True" Font-Bold="True" HorizontalAlign="Center" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle Font-Names="Times New Roman" Font-Size="20px" HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#EFF3FB" />
                    <SelectedRowStyle HorizontalAlign="Center" BackColor="#D1DDF1" Font-Bold="True" ForeColor="#06283D333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle HorizontalAlign="Center" BackColor="#4870BE" />
                </asp:GridView>
               </div>
            </asp:WizardStep>

            <%--<asp:WizardStep runat="server" title="Doners" ID="prov" >
                <br />  <br /><br />
                <div class="divv">
                <asp:Label ID="Label5" runat="server" Text="Doners Information" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="40px" ForeColor="#06283D"></asp:Label>
                </div>
                
                     <br /><br /><br /><br />
                <asp:TextBox ID="provsearch" runat="server" Height="35px" Width="405px"></asp:TextBox>
                <asp:Button ID="provsea" runat="server" BackColor="#06283D" ForeColor="#DFF6FF" Height="30px" Text="Search" Width="70px" Font-Size="14px" style="margin-left:10px"/>
                <br /><br /><br /><br /><br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" SelectCommand="SELECT AspNetUsers.Email, AspNetUsers.PhoneNumber, AspNetUsers.UserName, AspNetUsers.Id, AspNetUserRoles.UserId, AspNetUserRoles.RoleId FROM AspNetUsers INNER JOIN AspNetUserRoles ON AspNetUsers.Id = AspNetUserRoles.UserId AND AspNetUserRoles.RoleId = 2"></asp:SqlDataSource>
              <div class="grr">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="Id,UserId,RoleId" Height="300px" HorizontalAlign="Center" Width="85%" CssClass="headerT" CellPadding="4" ForeColor="#06283D333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="UserName" HeaderText="Doners" SortExpression="UserName" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" SortExpression="PhoneNumber" />
                    </Columns>
                    <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#2461BF" />
                    <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <FooterStyle BackColor="#507CD1" HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#06283D" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="50px" VerticalAlign="Middle" Wrap="True" Font-Bold="True" HorizontalAlign="Center" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle Font-Names="Times New Roman" Font-Size="20px" HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#EFF3FB" />
                    <SelectedRowStyle HorizontalAlign="Center" BackColor="#D1DDF1" Font-Bold="True" ForeColor="#06283D333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle HorizontalAlign="Center" BackColor="#4870BE" />
                </asp:GridView>
               </div>
            </asp:WizardStep>--%>

            <asp:WizardStep runat="server" Title="Donations" ID="ser">  
                 <br /><br /><br />
                 <div class="divv">
                <asp:Label ID="Label2" runat="server" Text="Donations" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="40px" ForeColor="#06283D"></asp:Label>
                </div>
                
                 <br /><br /><br /><br />
                <asp:TextBox ID="SerSearch" runat="server" Height="35px" Width="405px"></asp:TextBox>
                <asp:Button ID="serser" runat="server" BackColor="#06283D" ForeColor="#DFF6FF" Height="30px" Text="Search" Width="70px" Font-Size="14px" style="margin-left:10px"/>
                <br /><br /><br />

               
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" DeleteCommand="DELETE FROM [Services] WHERE [ServiceID] = @ServiceID" InsertCommand="INSERT INTO [Services] ([ProviderID], [ServiceName], [Description], [Image], [Status], [ServiceTime], [CategoryName], [Quantity], [LeftQuantity]) VALUES (@ProviderID, @ServiceName, @Description, @Image, @Status, @ServiceTime, @CategoryName, @Quantity, @LeftQuantity)" SelectCommand="SELECT * FROM [Services] WHERE ([Status] = @Status)" UpdateCommand="UPDATE [Services] SET [ProviderID] = @ProviderID, [ServiceName] = @ServiceName, [Description] = @Description, [Image] = @Image, [Status] = @Status, [ServiceTime] = @ServiceTime, [CategoryName] = @CategoryName, [Quantity] = @Quantity, [LeftQuantity] = @LeftQuantity WHERE [ServiceID] = @ServiceID">
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
                            <asp:Parameter DefaultValue="1" Name="Status" Type="String" />
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
                
                    <br /><br />
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" SelectCommand="SELECT ServiceID, ProviderID, ServiceName, Description, Image, Status, ServiceTime, CategoryName, Quantity, LeftQuantity FROM Services WHERE (Status = 1)"></asp:SqlDataSource>
              <div class="grr">
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource6" DataKeyNames="ServiceID" Height="300px" HorizontalAlign="Center" Width="85%" CssClass="headerT" CellPadding="4" ForeColor="#06283D333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ServiceID" HeaderText="ID" SortExpression="ServiceID" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="ServiceName" HeaderText="Name" SortExpression="ServiceName" />
                        <asp:TemplateField HeaderText="Image" SortExpression="Image">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("Image") %>' Height="80px" Width="150px"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:HyperLinkField DataNavigateUrlFields="ServiceID" DataNavigateUrlFormatString="ServiceDetails.aspx?serid={0}&amp;ff=1" Text="show more" />
                    </Columns>
                    <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#2461BF" />
                    <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <FooterStyle BackColor="#507CD1" HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#06283D" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="50px" VerticalAlign="Middle" Wrap="True" Font-Bold="True" HorizontalAlign="Center" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle Font-Names="Times New Roman" Font-Size="20px" HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#EFF3FB" />
                    <SelectedRowStyle HorizontalAlign="Center" BackColor="#D1DDF1" Font-Bold="True" ForeColor="#06283D333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle HorizontalAlign="Center" BackColor="#4870BE" />
                </asp:GridView>
               </div>

            </asp:WizardStep>

            <asp:WizardStep runat="server" Title="Waiting Donations" ID="waser">
                <br /><br />

                <div class="divv">
                <asp:Label ID="Label3" runat="server" Text="Waiting Donations" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="40px" ForeColor="#06283D"></asp:Label>
                </div>
                
<%--                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>--%>
                
                    <br /><br />
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" SelectCommand="SELECT * FROM [Services] WHERE ([Status] = @Status)" DeleteCommand="DELETE FROM [Services] WHERE [ServiceID] = @ServiceID" InsertCommand="INSERT INTO [Services] ([ProviderID], [ServiceName], [Description], [Image], [Status], [ServiceTime], [CategoryName], [Quantity], [LeftQuantity]) VALUES (@ProviderID, @ServiceName, @Description, @Image, @Status, @ServiceTime, @CategoryName, @Quantity, @LeftQuantity)" UpdateCommand="UPDATE [Services] SET [ProviderID] = @ProviderID, [ServiceName] = @ServiceName, [Description] = @Description, [Image] = @Image, [Status] = @Status, [ServiceTime] = @ServiceTime, [CategoryName] = @CategoryName, [Quantity] = @Quantity, [LeftQuantity] = @LeftQuantity WHERE [ServiceID] = @ServiceID">
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
                        <asp:Parameter DefaultValue="0" Name="Status" Type="String" />
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
                <div class="grr">
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" DataKeyNames="ServiceID" Height="300px" HorizontalAlign="Center" Width="85%" CssClass="headerT" CellPadding="4" ForeColor="#06283D333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" EmptyDataText="No Requests" OnRowCommand="GridView4_RowCommand1">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ServiceID" HeaderText="ID" SortExpression="ServiceID" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="ServiceName" HeaderText="Name" SortExpression="ServiceName" />
                        <asp:TemplateField HeaderText="Image" SortExpression="Image">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("Image") %>'  Height="80px" Width="150px"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                        <asp:HyperLinkField DataNavigateUrlFields="ServiceID" DataNavigateUrlFormatString="ServiceDetails.aspx?serid={0}" Text="show more" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="Acc" runat="server" CausesValidation="false" CommandName="Accepted" Text="Accept" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"></asp:LinkButton>
                            </ItemTemplate>
                            <ControlStyle BackColor="#00CC00" BorderColor="#00CC00" Font-Names="Times New Roman" Font-Size="17px" ForeColor="White" Height="30px" Width="70px" />
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="Rejected" Text="Reject" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"></asp:LinkButton>
                            </ItemTemplate>
                            <ControlStyle BackColor="#FF3300" BorderColor="#FF3300" Font-Names="Times New Roman" Font-Size="17px" ForeColor="White" Height="30px" Width="70px" />
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#2461BF" />
                    <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <FooterStyle BackColor="#507CD1" HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#06283D" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="50px" VerticalAlign="Middle" Wrap="True" Font-Bold="True" HorizontalAlign="Center" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle Font-Names="Times New Roman" Font-Size="20px" HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#EFF3FB" />
                    <SelectedRowStyle HorizontalAlign="Center" BackColor="#D1DDF1" Font-Bold="True" ForeColor="#06283D333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle HorizontalAlign="Center" BackColor="#4870BE" />
                </asp:GridView>
               </div>

            </asp:WizardStep>
            
        </WizardSteps>
    </asp:Wizard>
          </div>
</asp:Content>
