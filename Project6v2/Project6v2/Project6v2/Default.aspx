<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Project6v2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

      <style>   
          body{
            background-color:#DFF6FF;
        }
         .cta
{
    position: relative;
    margin: auto;
    padding: 12px 18px;
    transition: all 0.2s ease;
    border: none;
    background: none;
}
        .cta:before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            display: block;
            border-radius: 50px;
            background: #06283D;
            width: 45px;
            height: 55px;
            transition: all 0.3s ease;
        }
        .cta span {
            position: relative;
            font-family: "Ubuntu", sans-serif;
            font-size: 18px;
            font-weight: 700;
            letter-spacing: 0.05em;
            color: #dff6ff;
        }
        .cta svg {
            position: relative;
            top: 0;
            margin-left: 10px;
            fill: none;
            stroke-linecap: round;
            stroke-linejoin: round;
            stroke: #DFF6FF;
            stroke-width: 2;
            transform: translateX(-5px);
            transition: all 0.3s ease;
        }
        .cta:hover:before {
            width: 100%;
            background: #06283D;
        }
.cta:hover svg {
    transform: translateX(0);
}
.cta:active {
    transform: scale(0.95);
}
    </style>

    <div id="myCarousel" class="carousel slide" data-ride="carousel" style="margin-top:20px; top: -26px; left: 0px; height: 500px;" >
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox"   style="height:700px; top: -48px; left: 0px;">
      <div class="item active">
        <img src="image/1.jpg" alt="Image" style="height:700px">
        <div class="carousel-caption">
         <button class="cta">
    <span class="hover-underline-animation" style="color:#39B5E0">  GIT STARTED </span>
        </div>      
      </div>

      <div class="item">
        <img src="image/4.jpg"  style="height:700px ; width:contain">
        <div class="carousel-caption">
         <button class="cta">
    <span class="hover-underline-animation" style="color:#39B5E0">  GIT STARTED </span>
        </div>      
      </div>
              <div class="item">
        <img src="image/3.jpg"  style="height:700px">
        <div class="carousel-caption">
<button class="cta">
    <span class="hover-underline-animation" style="color:#39B5E0">  GIT STARTED </span>
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
     <div class="container" >
<div class="row">
  <div class="col-sm-8" style="height:154px ; margin-top:-140px">
     <h1 style="color:#06283D">Together,<br/> we can bring health and hope to the world!</h1>
      <p style="color:#06283D !important; font-size:20px">Our mission is to identify, solicit, collect, <br />  sort and deliver medical services according to the urgent needs of the world.</p>

      <button class="cta">
    <span class="hover-underline-animation" style="color:#39B5E0">  GIT STARTED </span>
       </div> 
      <div class="col-sm-4" style="height:357px ; margin-top:-180px"> 
         &nbsp;<img src="image/lan1.png"  alt="..." style="height:299px ; width:302px" /></div>
     </div>
    </div>

         <div class="container"  style="margin-bottom:-20px">
<div class="row">

      <div class="col-sm-4" style="margin-bottom:-80px"> 
         <img src="image/mide.png"  alt="..." style="height:400px ; width:400px" />
          </div>
   
    
  <div class="col-sm-8" style="margin-top:50px;" >
     <h1 style="color:#06283D; margin-left:70px ">Together, <br/> we can bring health and hope to the world!</h1>
      <p style="color:#06283D !important; margin-left:70px ; font-size:20px ; margin-top:50px"> ultimately  that where you live shouldn't determine whether you live. Today together we offer help to everyone in need..</p>
           
         </div>
       </div>
    </div>

</asp:Content>
