<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cn.bean.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>贝壳租房 - 租个好房 住个好家</title>
<!---css--->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!---css--->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Real Space Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!---js--->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<!---js--->
<!---fonts-->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
<!---fonts-->
<script src="js/responsiveslides.min.js"></script>
	 <script>
		$(function () {
		  $("#slider").responsiveSlides({
			auto:true,
			nav: false,
			speed: 500,
			namespace: "callbacks",
			pager:true,
		  });
		});
	</script>
<link href="css/owl.carousel.css" rel="stylesheet">
<script src="js/owl.carousel.js"></script>
	<script>
		$(document).ready(function() {
		$("#owl-demo").owlCarousel({
			items : 1,
			lazyLoad : true,
			autoPlay : true,
			navigation : false,
			navigationText :  false,
			pagination : true,
		});
		});
	</script>
<style>
ul.pagination {
    display: inline-block;
    padding: 0;
    margin: 0;
}

ul.pagination li {display: inline;}

ul.pagination li a {
    color: black;
    float: left;
    padding: 8px 16px;
    text-decoration: none;
    border-radius: 5px;
}

ul.pagination li a.active {
    background-color: #4CAF50;
    color: white;
    border-radius: 5px;
}

ul.pagination li a:hover:not(.active) {background-color: #ddd;}
</style>
	
</head>
<body>

		<!---header--->
			<div class="header-section">
				<div class="container">
					<div class="head-top" style="padding-top:20px;padding-bottom:12px;">
						<!--<div class="social-icon">
							<a href="#"><i class="icon"></i></a>
							<a href="#"><i class="icon1"></i></a>
							<a href="#"><i class="icon2"></i></a>
							<a href="#"><i class="icon3"></i></a>
							<a href="#"><i class="icon4"></i></a>
						</div>-->
						<%
								Renter renter=(Renter) session.getAttribute("renter");
								Landlord landlord = (Landlord) session.getAttribute("landlord");
						%>
						<div class="email">
						<ul>
							<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>Email: <a href="">1978069848@qq.com</a> </li>
							<li class="dropdown">				
							<i class="glyphicon glyphicon-log-in" aria-hidden="true"></i>
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">登录<span class="caret"></span></a>
											<ul class="dropdown-menu">
												<li><a href="renterLogin.jsp">租客&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
												<li><a href="landlordLogin.jsp">房东&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
											</ul>
									</li>
							<li class="dropdown"><i class="glyphicon glyphicon-lock" aria-hidden="true"></i><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">注册<span class="caret"></span></a>
											<ul class="dropdown-menu">
												<li><a href="renterRegister.jsp">租客&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
												<li><a href="landlordRegister.jsp">房东&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
											</ul></li>
						</ul>
						</div>
						<div class="clearfix"></div>
					</div>
					<nav class="navbar navbar-default">
					<!---Brand and toggle get grouped for better mobile display--->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>				  
							<div class="navbar-brand">
								<h1><a href="index.jsp"><span>贝壳 </span>租房</a></h1>
							</div>
						</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li class="active"><a href="index.jsp">首页 <span class="sr-only">(current)</span></a></li>
								<li><a href="query.do?method=showAllHouse">租房</a></li>
							</ul>
							<div class="phone">
							<span><i class="glyphicon glyphicon-phone" aria-hidden="true"></i>15119419358</span>
							</div>
							<div class="clearfix"></div>
						</div>
					</nav>
				</div>
			</div>
		<!---header--->		
		
		
		<!---banner--->
		<div class="banner-section">
			<div class="container">
				<h2>我的预约</h2>
			</div>
		</div>
		<!---banner--->
		<div class="content">
			<div class="properties-section">
				<div class="container">
				<div class="properties-grids">
					<div class="col-md-9 forsales-left">
						<div class="forsale">
							<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
								<div id="myTabContent" class="tab-content">
									<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
									
									<%
									   ArrayList books = (ArrayList)request.getAttribute("bookList"); 
									   /*iterate over the arraylist*/
									   for (int i = 0; i < books.size(); i++) { 
									       Book a_book = (Book)books.get(i);
									       Random r = new Random();
										   int pic_id = r.nextInt(14)+1;%>
										<div class="forsale-grids">
											<div class="forsale1">
												<div class="forsale-left">
													<a href="query.do?method=showOneHouse&hid=<% out.print(a_book.getHid()); %>"><img src="images/<%out.print(pic_id); %>.jpg" class="img-responsive" alt="/"></a>
												</div>
												<div class="forsale-right">
													<h5><label><% int re=a_book.getReviewed();if(re==0)out.print("审核中");if(re==1)out.print("审核通过，可前往看房");if(re==2)out.print("审核不通过"); %></label></h5>
													<p><span>预约日期&nbsp;</span><% out.print(a_book.getBooktime()); %></p>
												</div>
												<div class="clearfix"></div>
												<ul>
													<li><span>联系房主</span><% out.print("13553535355"); %></li>
													<li><span>房源位置 </span><% out.print("白石龙地铁站"); %></li>
												</ul>
											</div>
										</div>	
									<% } %>
											
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 properties-right">
						<div class="properties-top">
						<div class="search1">
							<form action="query.do" method="get">
							<input type="hidden" name="method" value="searchHouseByDid">
							<h4>挑选您喜爱的房子</h4>
							<!-- <div class="yourplace">
								<h5>面积下限</h5>
								<select class="sel2">
									<option value="">无下限</option>
									<option value="">20m²</option>
									<option value="">50m²</option>
									<option value="">80m²</option>
									<option value="">100m²</option>
									<option value="">150m²</option>
								</select>
							</div>
							<div class="yourplace">
								<h5>面积上限</h5>
								<select class="sel2">
									<option value="">无上限</option>
									<option value="">20m²</option>
									<option value="">50m²</option>
									<option value="">80m²</option>
									<option value="">100m²</option>
									<option value="">150m²</option>
								</select>
							</div>
							<div class="yourplace">
								<h5>租金下限</h5>
								<select class="sel2">
									<option value="">无下限</option>
									<option value="">￥300</option>
									<option value="">￥500</option>
									<option value="">￥700</option>
									<option value="">￥1000</option>
									<option value="">￥1500</option>
									<option value="">￥2000</option>
									<option value="">￥3000</option>
									<option value="">￥5000</option>
								</select>
							</div>
							<div class="yourplace">
								<h5>租金上限</h5>
								<select class="sel2">
									<option value="">无上限</option>
									<option value="">￥300</option>
									<option value="">￥500</option>
									<option value="">￥700</option>
									<option value="">￥1000</option>
									<option value="">￥1500</option>
									<option value="">￥2000</option>
									<option value="">￥3000</option>
									<option value="">￥5000</option>
								</select>
							</div> -->
							<div class="yourplace">
								<h5>所在城市</h5>
								<select class="sel2" name="district">
									<option value="">所有城市</option>
									<option value="guangzhou">广州</option>
									<option value="shenzhen">深圳</option>
									<option value="beijing">北京</option>
									<option value="shanghai">上海</option>
									<option value="hangzhou">杭州</option>
									<option value="chengdu">成都</option>
									<option value="dongguan">东莞</option>
								</select>
							</div>
							
							<!-- <div class="yourplace">
								<h5>房型</h5>
								<select class="sel2">
									<option value="">所有房型</option>
									<option value="">单间</option>
									<option value="">一室一厅</option>
									<option value="">两室一厅</option>
									<option value="">三室一厅</option>
									<option value="">两室两厅</option>
									<option value="">三室两厅</option>
									<option value="">四室两厅</option>
								</select>
							</div> -->
							
								<input type="submit" value="搜索">
							</form>
							</div>
						</div>
						<div class="feature">
							<h4>优质房源推荐</h4>
							<div class="feature-top">
							<img src="images/s6.jpg" class="img-responsive" alt="/">
									<h5>60 Merrick Way, Miami</h5>
									<p>Lorem ipsum dolor sit amet, consectetuer  elit,… <a href="#">Know More</a></p>
							</div>
							<div class="feature-top top2">
							<img src="images/s7.jpg" class="img-responsive" alt="/">
									<h5>Villa in Hialeah, Dade</h5>
									<p>Lorem ipsum dolor sit amet, consectetuer  elit,… <a href="#">Know More</a></p>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-12" style="margin-top:36px;">
					
				</div>
				</div>
			</div>
		</div>
		<!---footer--->
			<div class="footer-section">
				<div class="container">
					<!--<div class="footer-grids">
						<div class="col-md-3 footer-grid">
							<h4>About Real Homes</h4>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
						</div>
						<div class="col-md-3 footer-grid">
							<h4>Recent Posts</h4>
							<ul>
								<li><a href="#">Lorem Post With Image Format</a></li>
								<li><a href="#">Example Video Blog Post</a></li>
								<li><a href="#">Example Post With Gallery Post </a></li>
								<li><a href="#">Example Video Blog Post</a></li>
								<li><a href="#">Lorem Post With Image Format</a></li>
								<li><a href="#">Example Video Blog Post</a></li>
							</ul>
						</div>
						<div class="col-md-3 footer-grid">
							<h4>Useful links</h4>
							<ul>
								<li><a href="terms.html">Terms of Use</a></li>
								<li><a href="privacy.html">Privacy Policy</a></li>
								<li><a href="contact.html">Contact Support </a></li>
								<li><a href="agents.html"> All Agents</a></li>
								<li><a href="blog.html">Blog</a></li>
								<li><a href="faqs.html">FAQs</a></li>
							</ul>
						</div>
						<div class="col-md-3 footer-grid">
							<h4>Get In Touch</h4>
							<p>8901 Marmora Road</p>
							<p>Glasgow, DO4 89GR.</p>
							<p>Freephone : +1 234 567 890</p>
							<p>Telephone : +1 234 567 890</p>
							<p>FAX : + 1 234 567 890</p>
							<p>E-mail : <a href="mailto:example@mail.com"> example@mail.com</a></p>
						</div>
						<div class="clearfix"> </div>
					</div>-->
				</div>
			</div>
			<!---footer--->
<!-- login -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body real-spa">
							<div class="login-grids">
								<div class="login">
									
									<div class="login-right">
										<form>
											<h3>Login</h3>
											<input type="text" value="Enter your Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter your Email';}" required="">	
											<input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">	
											<h4><a href="#">Forgot password</a> / <a href="#">Create new password</a></h4>
											<div class="single-bottom">
												<input type="checkbox"  id="brand" value="">
												<label for="brand"><span></span>Remember Me.</label>
											</div>
											<input type="submit" value="Login Now" >
										</form>
									</div>
																
								</div>
								<p>By logging in you agree to our <a href="#">Terms</a> and <a href="#">Conditions</a> and <a href="#">Privacy Policy</a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //login -->
			<!-- Register -->
			<div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body real-spa">
							<div class="login-grids">
								<div class="login">
									<div class="login-right">
										<form>
											<h3>Register </h3>
											<input type="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
											<input type="text" value="Mobile number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Mobile number';}" required="">
											<input type="text" value="Email id" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email id';}" required="">	
											<input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">	
											
											<input type="submit" value="Register Now" >
										</form>
									</div>
									<div class="clearfix"></div>								
								</div>
								<p>By logging in you agree to our <a href="#">Terms</a> and <a href="#">Conditions</a> and <a href="#">Privacy Policy</a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //Register -->
</body>
</html>





<%-- <%@ page import="java.util.ArrayList,cn.bean.*" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
<div class="result-title">
<h1>我的预约</h1>
</div>
	<form id="houseForm" name="houseForm"
		action=""
		method=post >
					<div class="">
						<table id=grid
							class="result-tab" width="100%">
							<tbody>
								<tr style="FONT-WEIGHT: bold; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none">
									<td>预订id</td>
									<td>房主id</td>
									<td>房源id</td>
									<td>审核状态</td>
									<td>预约日期</td>
								</tr>
								 <%
									   ArrayList books = (ArrayList)request.getAttribute("bookList"); 
									   /*iterate over the arraylist*/
									   for (int i = 0; i < books.size(); i++) { 
									       Book a_book = (Book)books.get(i); %>  
								       <tr style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
								       	   	   <td><% out.print(a_book.getBid()); %></td>
										       <td><% out.print(a_book.getLid()); %></td>
										       <td><% out.print(a_book.getHid()); %></td>
										       <td><% out.print(a_book.getReviewed()); %></td>
										       <td><% out.print(a_book.getBooktime()); %></td>
								       </tr>
								<% } %>
							</tbody>
						</table>
					</div>
	 </form>
</div>
</body>
</html> --%>
