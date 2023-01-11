<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project6v2.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>

      
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
   
   height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
   

    
 }
body{
     height:100vh;
       background-image:url("images/e.jpeg");
                  background-size:cover;
                 background-repeat:no-repeat;
                
                 
}
        .bigcont{
            width:100%;
           
            display:flex;
            justify-content:center;
            align-items:center;
            
          
        }
        .smallcontainer{
              
               height: 100%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
    padding: 60px;
    margin-bottom: 90px;
    margin-top: 70px;
    background-image: url(images/opacity.png);
        }
        .leftt{
              width:60%;
              min-width:300px;
              height:100%;
            display:block;
         
           
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
            font-size:20px;
            color: #06293d;
        }
        .form-control{
            width:85%;
           
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
        input[type="email"], input[type="tel"], input[type="select"], input[type="password"] {
   
    width: 100%;
    margin-left: 10px;
    height: 44px;
}
        .radio1{
            margin-top:10px;
        }
        .form-horizontal .control-label{
            text-align:left;
        }
        .col-md-4 {
            width:30%;
                padding-left: 0px;
            }
        .col-md-2{
            padding-left:0px;
        }
        .new{
            width:100%;
            display:block;
            flex-wrap:wrap;
            padding-bottom:25px;
        }
        .form-horizontal .form-group{
            margin-left:0px;
        }
        .coll{
            display:block;
            height:100%;
            width:100%;
        }
        .cold{
            width:60%;
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
                 .col-md-offset-2 {
                                         margin-left: 6.66666667%;
                                             display: flex;
    justify-content: center;
                                    }
                 .checkbox label{
                     padding-left:0px;
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
  font-size: 20px;
  margin: 8px 2px;
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

   
        <div class="bigcont">
            <div class="smallcontainer">
            <div class="leftt">
                  <div class="new">
                      <div class="coll"> <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label></div>
                <div class="coll">
                    

                            <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                CssClass="text-danger" ErrorMessage="The email field is required." />
                        </div>
        </div>
               
                 <div class="new">
                     <div class="coll"> <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label></div>
                   <div class="coll">
                       
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                        </div>   
          
        </div>
        <div class="new">
            <div class="col-md-offset-2 col-md-10">
                            <div class="checkbox">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label><asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register with us</asp:HyperLink>
                            </div>
                        </div>
        </div>
       
         
       
              
        <div class="form-group">
             <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="button button2" />
                        </div>
             <p>
                    
                </p>
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
       



    

        
<%--    <div class="row">
        <div class="col-md-8">
            <section id="loginForm">
                <div class="form-horizontal">
                    <h4>Use a local account to log in.</h4>
                    <hr />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                    
                    </div>
                    <div class="form-group">
                       
                    </div>
                    <div class="form-group">
                       
                    </div>
                    <div class="form-group">
                       
                    </div>
                </div>
               
                <p>
                   
                </p>
            </section>
        </div>

       
    </div>--%>
        <div class="col-md-4">
            <section id="socialLoginForm">
                <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
            </section>
        </div>
  
</asp:Content>
