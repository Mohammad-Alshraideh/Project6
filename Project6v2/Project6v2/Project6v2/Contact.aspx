<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Project6v2.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <style>
     <style>
		body {
    background-color: white;
    padding-top: 85px;
    color:black;
    font-size:29px;
}

h1 {
    font-family: 'Poppins', sans-serif, 'arial';
    font-weight: 600;
    font-size: 72px;
    color: #39B5E0;
    text-align: center;
}

h4 {
    font-family: 'Roboto', sans-serif, 'arial';
    font-weight: 400;
    font-size: 20px;
    color: #39B5E0;
    line-height: 1.5;
}

 ///// inputs /////

input:focus ~ label, textarea:focus ~ label, input:valid ~ label, textarea:valid ~ label {
    font-size: 0.75em;
    color: #999;
    top: -5px;
    -webkit-transition: all 0.225s ease;
    transition: all 0.225s ease;
}

.styled-input {
    float: left;
    width: 293px;
    margin: 1rem 0;
    position: relative;
    border-radius: 4px;
}

@media only screen and (max-width: 768px){
    .styled-input {
        width:100%;
    }
}

.styled-input label {
    color: #999;
    padding: 1.3rem 30px 1rem 30px;
    position: absolute;
    top: 10px;
    left: 0;
    -webkit-transition: all 0.25s ease;
    transition: all 0.25s ease;
    pointer-events: none;
}

.styled-input.wide { 
    width: 650px;
    max-width: 100%;
}

input,
textarea {
    padding: 10px;
    border: 0;
    width: 100%;
    font-size: 2rem;
    background-color: #39B5E0;
    color: white;
    border-radius: 4px;
}

input:focus,
textarea:focus { outline: 0; }

input:focus ~ span,
textarea:focus ~ span {
    width: 100%;
    -webkit-transition: all 0.075s ease;
    transition: all 0.075s ease;
}

textarea {
    width: 100%;
    min-height: 8em;
}

.input-container {
    width: 650px;
    max-width: 100%;
    margin: 20px auto 25px auto;
}

.submit-btn {
    float: right;
    padding: 7px 35px;
    border-radius: 60px;
    display: inline-block;
    background-color: #39B5E0;
    color: white;
    font-size: 18px;
    cursor: pointer;
    box-shadow: 0 2px 5px 0 rgba(0,0,0,0.06),
              0 2px 10px 0 rgba(0,0,0,0.07);
    -webkit-transition: all 300ms ease;
    transition: all 300ms ease;
}

.submit-btn:hover {
    transform: translateY(1px);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,0.10),
              0 1px 1px 0 rgba(0,0,0,0.09);
}

@media (max-width: 768px) {
    .submit-btn {
        width:100%;
        float: none;
        text-align:center;
    }
}

input[type=checkbox] + label {
  color: #ccc;
  font-style: italic;
} 

input[type=checkbox]:checked + label {
  color: #f00;
  font-style: normal;
}
	    .auto-style1 {
            text-decoration: underline;
        }
	.auto-style2 {
        float: left;
        width: 97%;
        position: relative;
        border-radius: 4px;
        left: -1px;
        top: 0px;
    }
	</style>
 </style>
<div>
        <div class="container">
	<div class="row">
			<h1><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" SelectCommand="SELECT * FROM [ContactUs]" DeleteCommand="DELETE FROM [ContactUs] WHERE [ContactID] = @original_ContactID" InsertCommand="INSERT INTO [ContactUs] ([Name], [Email], [maessage]) VALUES (@Name, @Email, @maessage)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [ContactUs] SET [Name] = @Name, [Email] = @Email, [maessage] = @maessage WHERE [ContactID] = @original_ContactID">
                <DeleteParameters>
                    <asp:Parameter Name="original_ContactID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="maessage" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="maessage" Type="String" />
                    <asp:Parameter Name="original_ContactID" Type="Int32" />
                </UpdateParameters>
                </asp:SqlDataSource>
                contact us</h1>
	</div>
	<div class="row">
			<h4 style="text-align:center">We'd love to hear from you!</h4>
	</div>
	<div class="row input-container">
			<div class="col-xs-12">
				<div class="styled-input wide" style="left: 0px; top: 0px">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label><br />
                  <asp:TextBox ID="TextBox1" runat="server" Width="284px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="g1" ControlToValidate="TextBox1" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>

				</div>
			</div>
			<div class="col-md-6 col-sm-12">
				<div class="auto-style2">

					<asp:Label ID="Label2" runat="server" Text="Email"></asp:Label><br />
                     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
               <asp:RegularExpressionValidator ValidationGroup="g1"  ControlToValidate="TextBox2" ID="RegularExpressionValidator1" runat="server" ErrorMessage="*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="g1" ControlToValidate="TextBox2" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
					 
				</div>
			   <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>--%>
			</div>
	           <div class="col-xs-12">
				<div class="styled-input wide" style="text-align: left">
                   <asp:Label ID="Label3" runat="server" Text="Message"></asp:Label><br />
                     <strong>
                     <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style1" Height="163px" Width="617px"></asp:TextBox>
				         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="g1" ControlToValidate="TextBox3" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>

                    
					
				    </strong>
				 
                    
					
				</div>
			</div>
			<div class="col-xs-12">
				<div><asp:Button ID="Button1" ValidationGroup="g1" runat="server" Text="Button" class="btn-lrg submit-btn" Width="200px" OnClick="Button1_Click"/></div>
                
			</div>
       
            </div>
	</div>

</div>
</asp:Content>
