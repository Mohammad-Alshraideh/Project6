<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="addservice.aspx.cs" Inherits="Project6v2.users.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <style>
         body{
           padding-bottom: 0px !important;
           padding-top: 0px !important;
          
        }
        .boxes {
  --size: 32px;
  --duration: 800ms;
  height: calc(var(--size) * 2);
  width: calc(var(--size) * 3);
  position: relative;
  transform-style: preserve-3d;
  transform-origin: 50% 50%;
  margin-top: calc(var(--size) * 1.5 * -1);
  transform: rotateX(60deg) rotateZ(45deg) rotateY(0deg) translateZ(0px);
}

.boxes .box {
  width: var(--size);
  height: var(--size);
  top: 0;
  left: 0;
  position: absolute;
  transform-style: preserve-3d;
}

.boxes .box:nth-child(1) {
  transform: translate(100%, 0);
  -webkit-animation: box1 var(--duration) linear infinite;
  animation: box1 var(--duration) linear infinite;
}

.boxes .box:nth-child(2) {
  transform: translate(0, 100%);
  -webkit-animation: box2 var(--duration) linear infinite;
  animation: box2 var(--duration) linear infinite;
}

.boxes .box:nth-child(3) {
  transform: translate(100%, 100%);
  -webkit-animation: box3 var(--duration) linear infinite;
  animation: box3 var(--duration) linear infinite;
}

.boxes .box:nth-child(4) {
  transform: translate(200%, 0);
  -webkit-animation: box4 var(--duration) linear infinite;
  animation: box4 var(--duration) linear infinite;
}

.boxes .box > div {
  --background: #5C8DF6;
  --top: auto;
  --right: auto;
  --bottom: auto;
  --left: auto;
  --translateZ: calc(var(--size) / 2);
  --rotateY: 0deg;
  --rotateX: 0deg;
  position: absolute;
  width: 100%;
  height: 100%;
  background: var(--background);
  top: var(--top);
  right: var(--right);
  bottom: var(--bottom);
  left: var(--left);
  transform: rotateY(var(--rotateY)) rotateX(var(--rotateX)) translateZ(var(--translateZ));
}

.boxes .box > div:nth-child(1) {
  --top: 0;
  --left: 0;
}

.boxes .box > div:nth-child(2) {
  --background: #145af2;
  --right: 0;
  --rotateY: 90deg;
}

.boxes .box > div:nth-child(3) {
  --background: #447cf5;
  --rotateX: -90deg;
}

.boxes .box > div:nth-child(4) {
  --background: #DBE3F4;
  --top: 0;
  --left: 0;
  --translateZ: calc(var(--size) * 3 * -1);
}

@-webkit-keyframes box1 {
  0%, 50% {
    transform: translate(100%, 0);
  }

  100% {
    transform: translate(200%, 0);
  }
}

@keyframes box1 {
  0%, 50% {
    transform: translate(100%, 0);
  }

  100% {
    transform: translate(200%, 0);
  }
}

@-webkit-keyframes box2 {
  0% {
    transform: translate(0, 100%);
  }

  50% {
    transform: translate(0, 0);
  }

  100% {
    transform: translate(100%, 0);
  }
}

@keyframes box2 {
  0% {
    transform: translate(0, 100%);
  }

  50% {
    transform: translate(0, 0);
  }

  100% {
    transform: translate(100%, 0);
  }
}

@-webkit-keyframes box3 {
  0%, 50% {
    transform: translate(100%, 100%);
  }

  100% {
    transform: translate(0, 100%);
  }
}

@keyframes box3 {
  0%, 50% {
    transform: translate(100%, 100%);
  }

  100% {
    transform: translate(0, 100%);
  }
}

@-webkit-keyframes box4 {
  0% {
    transform: translate(200%, 0);
  }

  50% {
    transform: translate(200%, 100%);
  }

  100% {
    transform: translate(100%, 100%);
  }
}

@keyframes box4 {
  0% {
    transform: translate(200%, 0);
  }

  50% {
    transform: translate(200%, 100%);
  }

  100% {
    transform: translate(100%, 100%);
  }
}
.verybig{
   
   height:100%;
    display:flex;
    justify-content:center;
    align-items:center;
    background-image:url("images/30754.jpg");
                  background-size:cover;
                 background-repeat:no-repeat;
   

    
 }
body{
     
       
                
                 
}
        .bigcont{

           
           height:100%;
            display:flex;
            justify-content:center;
            align-items:center;
            
          
        }
        .smallcontainer{
              width:100vw;
              height:100%;
            display:flex;
            justify-content:center;
            align-items:center;
            flex-wrap:wrap;
        }
        .leftt{
              width:60%;
              min-width:300px;
              height:100%;
            display:flex;
            justify-content:center;
            align-items:center;
           
        }
     
        .control-label{
            margin-right:15px;
        }
        .form-control{
           
           
        }
        .form-control2{
            
        }
        .form-horizontal{
           
           padding: 22px;
    width: 100%;
    height: 100%;
    margin-bottom: 150px;
    margin-top: 150px;
    background-image: url(images/opacity2.png);
    display:flex;
    flex-wrap:wrap;
    justify-content:center;
   
        }
        .form-group{
            margin-bottom:5px;
            margin-top:5px;
             
      

        }
        .form-control{
            height: 45px;
            border: 2px solid #337ab7;
        }
        table{

        }
        table td {
            padding:22px;
              font-size:22px;
            font-weight:800;
            color:#06293d;
        }
        #RequiredFieldValidator1{
            
        }
        .radio1{
            margin-top:3px;
        }
        .form-horizontal .control-label{
           
        }
        .col-md-4 {
            width:30%;
                padding-left: 0px;
            }
        .new{
            width:100%;
            display:flex;
            flex-wrap:wrap;
        }
        .form-horizontal .form-group{
           
        }
        .coll{
            display:block;
            height:100%;
        }
        .cold{
            width:100%;
          
        }
        @media only screen and (min-device-width: 0px) and (max-device-width: 480px) {
            body {
                height: 800px
            }
            .bigcont{
                margin-top:150px;
            }
        }
        @media only screen and (min-device-width: 481px) and (max-device-width: 768px) {
            body {
                height: 800px
            }
            .bigcont{
                margin-top:190px;
            }

        }
        input[type="text"], input[type="password"], input[type="email"], input[type="tel"], input[type="select"] {
    max-width: none;
}

                     .button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 8px 132px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 20px;
  margin: 8px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}
          .button2:hover {
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
}

.button2 {
  background-color: #008CBA;
  color: white;
}
.custom-file-upload {
    border: 1px solid #ccc;
    display: inline-block;
    padding: 6px 12px;
    cursor: pointer;
}


    </style>
  
    <div class="verybig">
    <div class="bigcont">
       <div class="smallcontainer">
           <div class="leftt">
             <div class="form-horizontal">
       
       <br /><br />

                 <table>
                     <tr>
                         <th> <h1>New Donation</h1></th>
                     </tr>
                     <tr>
                         <td> <asp:Label runat="server" AssociatedControlID="ServiceName" CssClass="cold ">Service Name</asp:Label></td>
                         <td> <asp:TextBox runat="server" ID="ServiceName" CssClass="form-control"  />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ServiceName"
                    CssClass="text-danger" ErrorMessage="Service Name field is required." /></td>
                     </tr>
                     <tr>
                         <td> <asp:Label runat="server" AssociatedControlID="Discription" CssClass="cold">Discription</asp:Label></td>
                         <td><textarea runat="server" Class="form-control" id="Discription" cols="40" rows="2"></textarea></td>
                     </tr>
                     <tr>
                         <td><asp:Label runat="server" AssociatedControlID="DropDownList1" CssClass="cold">Category</asp:Label></td>
                         <td> <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                    <asp:ListItem Value="Bed">Bed</asp:ListItem>
                    <asp:ListItem Value="machine">machine</asp:ListItem>
                    <asp:ListItem Value="other">other</asp:ListItem>
                </asp:DropDownList></td>
                     </tr>
                     <tr>
                         <td> <asp:Label runat="server" AssociatedControlID="quantity" CssClass="cold">quantity</asp:Label></td>
                         <td> <asp:TextBox runat="server" ID="quantity" CssClass="form-control form-control2" TextMode="Number"  />
               
                <asp:RequiredFieldValidator runat="server" ControlToValidate="quantity"
                    CssClass="text-danger" ErrorMessage="The quantity field is required." /></td>
                     </tr>
                     <tr>
                         <td>product photo </td>
                         <td>
                             
                             <asp:FileUpload  CssClass="custom-file-upload"  ID="FileUpload1" runat="server" />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="FileUpload1" runat="server" ErrorMessage="image is requierd"></asp:RequiredFieldValidator></td>
                     </tr>
                     <tr>
                         <td></td>
                         <td> <asp:Button runat="server" Text="Add Service" CssClass="button button2" OnClick="Unnamed7_Click" /></td>
                     </tr>
                 </table>
          <%-- <div class="new">
            <div class="coll">
            

            </div>
             <div class="coll">
               </div>
         
      
        </div>
               
                 <div class="new">
                      <div class="coll">
                
                          
                          
               </div>
                   
            </div>
            
                      
          
        </div>
        <div class="new">
           
  
               
            <div class="coll">
                  <br />
           

               
            </div>
            <div class="coll">
                
            </div>
             
        </div>
       
         <div class="new">
              <div class="coll">
                    <br />
                           

               
            </div>
             <div class="coll">
                 
               
             </div>
         </div>
       
                 
             
                     
           
               
                      
                          <br />
                          
                                <br />--%>
                              
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" SelectCommand="SELECT [ServiceName], [Description], [Image], [Status], [ServiceTime], [CategoryName], [Quantity], [LeftQuantity], [ServiceID], [ProviderID] FROM [Services]" DeleteCommand="DELETE FROM [Services] WHERE [ServiceID] = @ServiceID" InsertCommand="INSERT INTO [Services] ([ServiceName], [Description], [Image], [Status], [ServiceTime], [CategoryName], [Quantity], [LeftQuantity], [ProviderID]) VALUES (@ServiceName, @Description, @Image, @Status, @ServiceTime, @CategoryName, @Quantity, @LeftQuantity, @ProviderID)" UpdateCommand="UPDATE [Services] SET [ServiceName] = @ServiceName, [Description] = @Description, [Image] = @Image, [Status] = @Status, [ServiceTime] = @ServiceTime, [CategoryName] = @CategoryName, [Quantity] = @Quantity, [LeftQuantity] = @LeftQuantity, [ProviderID] = @ProviderID WHERE [ServiceID] = @ServiceID">
                     <DeleteParameters>
                         <asp:Parameter Name="ServiceID" Type="Int32" />
                     </DeleteParameters>
                     <InsertParameters>
                         <asp:Parameter Name="ServiceName" Type="String" />
                         <asp:Parameter Name="Description" Type="String" />
                         <asp:Parameter Name="Image" Type="String" />
                         <asp:Parameter Name="Status" Type="String" />
                         <asp:Parameter Name="ServiceTime" Type="DateTime" />
                         <asp:Parameter Name="CategoryName" Type="String" />
                         <asp:Parameter Name="Quantity" Type="Int32" />
                         <asp:Parameter Name="LeftQuantity" Type="Int32" />
                         <asp:Parameter Name="ProviderID" Type="String" />
                     </InsertParameters>
                     <UpdateParameters>
                         <asp:Parameter Name="ServiceName" Type="String" />
                         <asp:Parameter Name="Description" Type="String" />
                         <asp:Parameter Name="Image" Type="String" />
                         <asp:Parameter Name="Status" Type="String" />
                         <asp:Parameter Name="ServiceTime" Type="DateTime" />
                         <asp:Parameter Name="CategoryName" Type="String" />
                         <asp:Parameter Name="Quantity" Type="Int32" />
                         <asp:Parameter Name="LeftQuantity" Type="Int32" />
                         <asp:Parameter Name="ProviderID" Type="String" />
                         <asp:Parameter Name="ServiceID" Type="Int32" />
                     </UpdateParameters>
                 </asp:SqlDataSource>
        </div>
        
        
            
            
        
    </div>
           </div>
         <%--  <div class="right">
            <div class="boxes">
    <div class="box">
        <div></div>
        <div></div>
        <div></div>
        <div></div>
    </div>
    <div class="box">
        <div></div>
        <div></div>
        <div></div>
        <div></div>
    </div>
    <div class="box">
        <div></div>
        <div></div>
        <div></div>
        <div></div>
    </div>
    <div class="box">
        <div></div>
        <div></div>
        <div></div>
        <div></div>
    </div>
</div>
           </div>--%>
       </div>



    </div>

</asp:Content>
