<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="Project6v2.Account.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



     <div class="row">
            <div class="col-md-9">
            </div>
            <!-- /.col -->
         

            <!-- /.col -->
        </div>
        <!-- /.row -->
    
         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
            <div class="col-md-3">
           
           <div style="padding:10px;width:23%;position:fixed"  id="Div1" runat="server">
                    <label id="filterContainer" runat="server" class="list-group-item" style="min-height:50px;">
                     
                    </label>
                  
              
                </div>
                <div style="padding:10px;width:23%;position:fixed;transform:translateY(100px)"  id="categories" runat="server">
                    <a href="#" class="list-group-item active">All Categories
                    </a>
                  
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="count" DataValueField="CategoryName" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" AutoPostBack="true" OnDataBound="CheckBoxList1_DataBound"></asp:CheckBoxList>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" SelectCommand="SELECT category.CategoryName, COUNT(Services.CategoryName) AS count FROM category LEFT OUTER JOIN Services ON Services.CategoryName = category.CategoryName GROUP BY category.CategoryName"></asp:SqlDataSource>

                </div>
                    
                <!-- /.div -->

                <!-- /.div -->
                <div id="space" runat="server" style="min-height:300px">
               
                </div>
                <!-- /.div -->
  

                <!-- /.div -->
             
                <!-- /.div -->
			 
            </div>
        <!-- /.col -->
        <div class="col-md-9">

            <div class="breadcrumb list-group-item col-md-11" style="min-height:60px;margin-bottom:30px;margin-top:10px;position:relative">
               
             
 <%--    <div class="input-group col-md-5" style="position:absolute;">
<input type="search" class="form-control">
<span class="input-group-btn">
<button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-search" aria-hidden="true">
</span></button>
</span>
</div>--%>
              
                
                    <asp:DropDownList ID="DropDownList1" runat="server" style="float:right;margin-top:10px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem Selected="True">Sort</asp:ListItem>
                        <asp:ListItem Value="ASC">A - Z</asp:ListItem>
                        <asp:ListItem Value="DESC">Z - A</asp:ListItem>
                    </asp:DropDownList>
                
              
            </div>
        </div>
        <!-- /.div -->

        <!-- /.row -->
        <div class="row" id="mainContent" runat="server" style="margin-top:20px" >
                <div class="col-lg-2">
                
              <div class="ab list-group-item">
 <div class="card1"  style="padding:0;position:relative;">
	 	  	 		<div class="user-info">
			                 <div>
							<img src="no-user-yellow.png" style="width:30px;border-radius:50%" />

			                 </div>
     
							
								<div style="font-size:12px">
										<span>lorem ipsum</span><br />
							<span>Phone:0788888888</span><br />
							<span>Email:example@gmail.com</span>
								</div>
						
							
		</div>
  <div class="img-container" style="position:relative;width:100%">

      <img src="latera_new navigation.jpg" />
	  
	 	  	  
	  <div style="position:absolute;width:100%;height:100%;text-align:center;top:20px;font-size:16px">
 
		  <span syle="width:100%;">medical bed</span>
					 <hr style="border-top: 1px solid rgb(57, 181, 224);" />
		 
	  </div>
	  
  </div>
  <ul class="social-media">
	        
			<li><button>Request Item</button></li>
	   
			 <li><button>More Details</button></li>
		</ul>

</div>
		</div>
        



                </div>
		</div>


			  



               
               </ContentTemplate>
                     </asp:UpdatePanel>



            
          
 
	
    
        <!-- /.col -->
  
        <!-- /.col -->
       
  
        <!-- /.col -->
    


 
            <!-- /.col -->
        
        <!-- /.row -->
     
    <!-- /.container -->


    <!-- /.col -->
    <!--Footer end -->
    <!--Core JavaScript file  -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!--bootstrap JavaScript file  -->
    <script src="assets/js/bootstrap.js"></script>
    <!--Slider JavaScript file  -->
    <script src="assets/ItemSlider/js/modernizr.custom.63321.js"></script>
    <script src="assets/ItemSlider/js/jquery.catslider.js"></script>
 
    <script>
        $(function () {

            $('#mi-slider').catslider();

        });
        function gg() {
            let counter = 1;
            let table1 = document.getElementById("MainContent_CheckBoxList1");
            table1.classList.add("table")
            table1.classList.add("table-striped")

        }

        gg()








    </script>
</asp:Content>
