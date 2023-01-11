<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SingleDonation.aspx.cs" Inherits="Project6v2.SingleDonation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}

/* Firefox */
input[type=number] {
  -moz-appearance: textfield;
}
    </style>
      <div class="container-fluid py-5">
        <div class="row px-xl-5">
            <div class="col-lg-5 pb-5">
     <img id="DonImg" runat="server" alt="Image">
            </div>

            <div class="col-lg-7 pb-5">
                <h3 class="font-weight-semi-bold" id="DonName" runat="server">Colorful Stylish Shirt</h3>
                <div class="d-flex mb-3">
           
                    <small id="DonQuantity" runat="server" >Quantity:</small>
                </div>
                <span id="DonCondition" runat="server">Condition:</span>
                <p class="mb-4" id="DonBrief" runat="server">Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.</p>
                                                 <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator" ControlToValidate="TextBox1" MaximumValue="1000" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                
      <div class="quickview-content" style="padding: 55px 0px 0px;">  
          
 <div class="quantity">

											<!-- Input Order -->
											<div class="input-group">
												<div class="button minus">
													<button type="button" class="btn btn-primary btn-number" data-type="minus" data-field="quant[1]" id="minus" onclick ="alter(this)">
														<i class="fa-solid fa-minus"></i>
													</button>
												</div>


                                              <asp:TextBox id="TextBox1" runat="server" type="number" name="quant[1]" class="input-number"  data-min="1" data-max="1000" value="1"></asp:TextBox>
                                               
												<div class="button plus">
													<button type="button" class="btn btn-primary btn-number"  data-type="plus" data-field="quant[1]" id="plus" onclick="alter(this)">
														<i class="fa-solid fa-plus"></i>
													</button>
												</div>
											</div>

											<!--/ End Input Order -->
										</div>
                  
										<div class="add-to-cart">

                                            <asp:Button ID="PostRequest" CssClass="btn" runat="server" Text="Request" OnClick="PostRequest_Click" />

										 
										</div>

                           <div class="d-flex pt-2">
                    <p class="text-dark font-weight-medium mb-0 mr-2">Share on:                <p class="text-dark font-weight-medium mb-0 mr-2">Share on:</p>
                    <div class="d-inline-flex">
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-pinterest"></i>
                        </a>


											
                    </div>
                </div>


					</div> 			
        
                </div>



  
            </div>
        
        <div class="row px-xl-5">
            <div class="col">
                <div class="nav nav-tabs justify-content-center border-secondary mb-4">
                    <a class="nav-item nav-link active" data-toggle="tab" href="#tab-pane-1">Description</a>
                    <a class="nav-item nav-link" data-toggle="tab" href="#tab-pane-2">Information</a>
                    
                </div>
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="tab-pane-1">
                        <h4 class="mb-3">Product Description</h4>
                        <p>Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.</p>
                        <p>Dolore magna est eirmod sanctus dolor, amet diam et eirmod et ipsum. Amet dolore tempor consetetur sed lorem dolor sit lorem tempor. Gubergren amet amet labore sadipscing clita clita diam clita. Sea amet et sed ipsum lorem elitr et, amet et labore voluptua sit rebum. Ea erat sed et diam takimata sed justo. Magna takimata justo et amet magna et.</p>
                    </div>
                    <div class="tab-pane fade" id="tab-pane-2">
                        <h4 class="mb-3">Additional Information</h4>
                        <p>Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.</p>
                        <div class="row">
                            <div class="col-md-6">
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item px-0">
                                        Sit erat duo lorem duo ea consetetur, et eirmod takimata.
                                    </li>
                                    <li class="list-group-item px-0">
                                        Amet kasd gubergren sit sanctus et lorem eos sadipscing at.
                                    </li>
                                    <li class="list-group-item px-0">
                                        Duo amet accusam eirmod nonumy stet et et stet eirmod.
                                    </li>
                                    <li class="list-group-item px-0">
                                        Takimata ea clita labore amet ipsum erat justo voluptua. Nonumy.
                                    </li>
                                  </ul> 
                            </div>
                            <div class="col-md-6">
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item px-0">
                                        Sit erat duo lorem duo ea consetetur, et eirmod takimata.
                                    </li>
                                    <li class="list-group-item px-0">
                                        Amet kasd gubergren sit sanctus et lorem eos sadipscing at.
                                    </li>
                                    <li class="list-group-item px-0">
                                        Duo amet accusam eirmod nonumy stet et et stet eirmod.
                                    </li>
                                    <li class="list-group-item px-0">
                                        Takimata ea clita labore amet ipsum erat justo voluptua. Nonumy.
                                    </li>
                                  </ul> 
                            </div>
                        </div>
                    </div>
                     
                </div>
            </div>
        </div>
    </div>
    	<script src="https://kit.fontawesome.com/84df3b83c8.js" crossorigin="anonymous"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <!-- Jquery -->
    <script src="shhjs/jquery.min.js"></script>
    <script src="shhjs/jquery-migrate-3.0.0.js"></script>
	<script src="shhjs/jquery-ui.min.js"></script>
	<!-- Popper JS -->
	<script src="shhjs/popper.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="shhjs/bootstrap.min.js"></script>
	<!-- Color JS -->
	<script src="shhjs/colors.js"></script>
	<!-- Slicknav JS -->
	<script src="shhjs/slicknav.min.js"></script>
	<!-- Owl Carousel JS -->
	<script src="shhjs/owl-carousel.js"></script>
	<!-- Magnific Popup JS -->
	<script src="shhjs/magnific-popup.js"></script>
	<!-- Fancybox JS -->
	<script src="shhjs/facnybox.min.js"></script>
	<!-- Waypoints JS -->
	<script src="shhjs/waypoints.min.js"></script>
	<!-- Countdown JS -->
	<script src="shhjs/finalcountdown.min.js"></script>
	<!-- Nice Select JS -->
	<script src="shhjs/nicesellect.js"></script>
	<!-- Ytplayer JS -->
	<script src="shhjs/ytplayer.min.js"></script>
	<!-- Flex Slider JS -->
	<script src="shhjs/flex-slider.js"></script>
	<!-- ScrollUp JS -->
	<script src="shhjs/scrollup.js"></script>
	<!-- Onepage Nav JS -->
	<script src="shhjs/onepage-nav.min.js"></script>
	<!-- Easing JS -->
	<script src="shhjs/easing.js"></script>
	<!-- Active JS -->
	<script src="shhjs/active.js"></script>
    <script>
        function message(quantity, donation) {
            Swal.fire(
                'Request Sent!',
                'We Have Recieved Your Request Of <strong>x' + quantity + ' ' + donation + '</strong>  Successfully',
                'success'
            )
        }
        function alter(x) {
            let val =parseFloat( document.getElementById("MainContent_TextBox1").value)
            if (x.id == "minus" && val > 1) {
                val -= 1
            }
            if (x.id == "plus") {
                val += 1
            }
         
            document.getElementById("MainContent_TextBox1").value = val
            
        
        }
    </script>
</asp:Content>
