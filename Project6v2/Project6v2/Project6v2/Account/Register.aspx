<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Project6v2.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    

    <style>
         body{
           padding-bottom: 0px !important;
           padding-top: 0px !important;
          
        }
       

           
        
        .right{
              width:50%;
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
            width:95%;
            margin:25px;
           
        }
        .form-control2{
             width:65%;
        }
        .form-horizontal{
           
        }
        .form-group{
            margin-bottom:5px;
            margin-top:5px;
             
      

        }
        #RequiredFieldValidator1{
            
        }
        .radio1{
            margin-top:3px;
        }
        .form-horizontal .control-label{
            text-align:left;
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
            margin-left:0px;
        }
        .coll{
            display:block;
            height:100%;
            width: 100%;
        }
        .cold{
          
                width: 60%;
    color: #172161;
    font-size: 16px;
        }
        .form-check-input{
             color: #172161;
    font-size: 16px;
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
        body{
     
      
                
                 
}
        .verybig{
   
   height:100vh;
   width:100vw;
    display:flex;
    justify-content:center;
    align-items:center;
    background-image:url("images/0.jpeg");
                  background-size:cover;
                 background-repeat:no-repeat;

    
 }
        .bigcont{
            width:40vw;
               height: 85%;
                margin-top: 37px;
            display:flex;
            justify-content:center;
            align-items:center;
            background-image:url("images/opacity.png")
            
          
        }
        .smallcontainer{
              width:60%;
            
            display:flex;
            justify-content:space-between;
            align-items:center;
            flex-wrap:wrap;
        }
        input[type="text"], input[type="password"], input[type="email"], input[type="tel"], input[type="select"] {
     max-width: none; 
}
        /*.leftt {
            width: 75%;
            min-width: 300px;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 35px;*/
            /*background-color:darkblue;*/
            /*color: aliceblue;
            font-size: 17px;
        }*/
            .forcon{
                width: 100%;
               
    height: 41px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
      color: #555555;

   background-color: #ffffffad;
    background-image: none;
       border: 1px solid #0d8ae2;

    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgb(0 0 0 / 8%);
    box-shadow: inset 0 1px 1px rgb(0 0 0 / 8%);
    -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
            }
            .nothing{
               width: 500px;
            }
            input[type="radio"]{
                margin-left:15px;
                font-size:16px;
            }
          .button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}
          .button2 {
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
}

.button2:hover {
  background-color: #008CBA;
  color: white;
}
          
    </style>



   
 
    <div class="verybig">
        <div class="bigcont">
            <div class="smallcontainer">
                <div class="nothing">
           <div class="new">
            <div class="coll">
             <asp:Label runat="server" AssociatedControlID="FullName" CssClass="cold ">Full Name</asp:Label>

                <asp:TextBox runat="server" ID="FullName" CssClass="forcon"  />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="FullName"
                    CssClass="text-danger" ErrorMessage="The FullName field is required." />
            </div>
               
         
        <div class="coll">
                 <asp:Label runat="server" AssociatedControlID="Email" CssClass="cold ">Email</asp:Label>
                <asp:TextBox runat="server" ID="Email" CssClass="forcon" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
            </div>
        </div>
               
                 <div class="new">
                      <div class="coll">
                 <asp:Label runat="server" AssociatedControlID="Password" CssClass="cold">Password</asp:Label>
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="forcon" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
              <div class="coll">
                            <asp:Label runat="server" AssociatedControlID="Phone" CssClass="cold">Phone number</asp:Label>

                <asp:TextBox runat="server" ID="Phone" CssClass="forcon" TextMode="Number"  />
               
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Phone"
                    CssClass="text-danger" ErrorMessage="The Phone field is required." />
               
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Phone" ErrorMessage="number isn't real" ValidationExpression="^(07)[7-9]{1}[0-9]{7}$"></asp:RegularExpressionValidator>
            </div>
                      
          
        </div>
        <div class="new">
           
          
              
            <div class="coll">
                 <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="cold">Confirm password</asp:Label>
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="forcon" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
               
        <%--    <div class="coll">
           <asp:Label runat="server" AssociatedControlID="DropDownList1" CssClass="cold">Choose your city</asp:Label>

                <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                    <asp:ListItem Value="irbid">irbid</asp:ListItem>
                </asp:DropDownList>
            </div>--%>
        </div>
       
         
       
                 
             
                     
             <div class="new">
          
            <div class="coll">
               <asp:Label runat="server" AssociatedControlID="RadioButtonList1" CssClass="cold ">you are</asp:Label>
                <asp:RadioButtonList CssClass="form-check-input " ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CellSpacing="30">
                    <asp:ListItem   Value="2">Doners    </asp:ListItem>
                  <asp:ListItem  Value="3">Beneficiary</asp:ListItem>

                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="RadioButtonList1" runat="server" ErrorMessage="choose a role"></asp:RequiredFieldValidator>
           
            </div>
               
          <div class="coll">
          <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="button button2" />
        </div>
               
                <!-- HTML !-->


            
                        <%--  
                         upload your photo  <asp:FileUpload ID="FileUpload1" runat="server" />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="FileUpload1" runat="server" ErrorMessage="image is requierd"></asp:RequiredFieldValidator>
                                <br />--%>
                              

                </div>
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



   

</asp:Content>
