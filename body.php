<div class="main main-raised">
	<div class="container mainn-raised" style="width:100%;">

		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->


			<!-- Wrapper for slides -->
			<div class="carousel-inner">

				<div class="item active">
					<img src="img/banners2.jpg" alt="Los Angeles" style="width:100%;">

				</div>

				<div class="item">
					<img src="img/banners3.jpg" style="width:100%;">

				</div>

				<div class="item">
					<img src="img/banners.jpg" alt="New York" style="width:100%;">

				</div>
				<div class="item">
					<img src="img/banners4.png" alt="New York" style="width:100%;">

				</div>
				<div class="item">
					<img src="img/banners5.png" alt="New York" style="width:100%;">

				</div>

			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control _26sdfg" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control _26sdfg" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>



	<!-- SECTION -->
	<div class="section mainn mainn-raised">


		<!-- container -->
		<div class="container">

			<!-- row -->
			<div class="row">
				<!-- shop -->
				<div class="col-md-4 col-xs-6">
					<a href="product.php?p=78">
						<div class="shop">
							<div class="shop-img">
								<img src="./img/macbook3.jpg" alt="">
							</div>
							<div class="shop-body">
								<h3>MacBook<br>Collection</h3>
								<a href="product.php?p=78" class="cta-btn">Buy now<i
										class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</a>
				</div>
				<!-- /shop -->

				<!-- shop -->
				<div class="col-md-4 col-xs-6">
					<a href="product.php?p=72">
						<div class="shop">
							<div class="shop-img">
								<img src="./img/accesoris.jpg" alt="">
							</div>
							<div class="shop-body">
								<h3>Accessories<br>Collection</h3>
								<a href="product.php?p=72" class="cta-btn">Buy now<i
										class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</a>
				</div>
				<!-- /shop -->

				<!-- shop -->
				<div class="col-md-4 col-xs-6">
					<a href="product.php?p=79">
						<div class="shop">
							<div class="shop-img">
								<img src="./img/iphone3.jpg" alt="">
							</div>
							<div class="shop-body">
								<h3>iPhone<br>Collection</h3>
								<a href="product.php?p=79" class="cta-btn">Buy now<i
										class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</a>
				</div>
				<!-- /shop -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->



	<!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">

				<!-- section title -->
				<div class="col-md-12">
					<div class="section-title">
						<h3 class="title">New Products</h3>
						<div class="section-nav">
							<ul class="section-tab-nav tab-nav">
								<li class="active"><a data-toggle="tab" href="#tab1">Accessories</a></li>
								<li><a data-toggle="tab" href="#tab1">Electronics</a></li>
								<li><a data-toggle="tab" href="#tab1">Home Appliances</a></li>
								<li><a data-toggle="tab" href="#tab1">Music</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /section title -->

				<!-- Products tab & slick -->
				<div class="col-md-12 mainn mainn-raised">
					<div class="row">
						<div class="products-tabs">
							<!-- tab -->
							<div id="tab1" class="tab-pane active">
								<div class="products-slick" data-nav="#slick-nav-1">

									<?php
									include 'db.php';


									$product_query = "SELECT * FROM products,categories WHERE product_cat=cat_id AND product_id BETWEEN 70 AND 75";
									$run_query = pg_query($con, $product_query);
									if (pg_num_rows($run_query) > 0) {

										while ($row = pg_fetch_assoc($run_query)) {
											$pro_id = $row['product_id'];
											$pro_cat = $row['product_cat'];
											$pro_brand = $row['product_brand'];
											$pro_title = $row['product_title'];
											$pro_price = $row['product_price'];
											$pro_image = $row['product_image'];

											$cat_name = $row["cat_title"];

											echo "
				
                        
                                
								<div class='product'>
									<a href='product.php?p=$pro_id'><div class='product-img'>
										<img src='product_images/$pro_image' style='max-height: 170px;' alt=''>
										<div class='product-label'>
											<span class='sale'>-30%</span>
											<span class='new'>NEW</span>
										</div>
									</div></a>
									<div class='product-body'>
										<p class='product-category'>$cat_name</p>
										<h3 class='product-name header-cart-item-name'><a href='product.php?p=$pro_id'>$pro_title</a></h3>
										<h4 class='product-price header-cart-item-info'>$pro_price<del class='product-old-price'>Rp 4.000.000</del></h4>
										<div class='product-rating'>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
										</div>
										<div class='product-btns'>
											<button class='add-to-wishlist'><i class='fa fa-heart-o'></i><span class='tooltipp'>add to wishlist</span></button>
											<button class='add-to-compare'><i class='fa fa-exchange'></i><span class='tooltipp'>add to compare</span></button>
											<button class='quick-view'><i class='fa fa-eye'></i><span class='tooltipp'>quick view</span></button>
										</div>
									</div>
									<div class='add-to-cart'>
										<button pid='$pro_id' id='product' class='add-to-cart-btn block2-btn-towishlist' href='#'><i class='fa fa-shopping-cart'></i> add to cart</button>
									</div>
								</div>
                               
							
                        
			";
										}
										;

									}
									?>
									<!-- product -->


									<!-- /product -->


									<!-- /product -->
								</div>
								<div id="slick-nav-1" class="products-slick-nav"></div>
							</div>
							<!-- /tab -->
						</div>
					</div>
				</div>
				<!-- Products tab & slick -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->

	<!-- HOT DEAL SECTION -->
	<div id="hot-deal" class="section mainn mainn-raised">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-12">
					<div class="hot-deal">
						<ul class="hot-deal-countdown">
							<li>
								<div>
									<h3>00</h3>
									<span>Days</span>
								</div>
							</li>
							<li>
								<div>
									<h3>01</h3>
									<span>Hours</span>
								</div>
							</li>
							<li>
								<div>
									<h3>17</h3>
									<span>Mins</span>
								</div>
							</li>
							<li>
								<div>
									<h3>25</h3>
									<span>Secs</span>
								</div>
							</li>
						</ul>
						<h2 class="text-uppercase">hot deal this week</h2>
						<p>All New Products Up to 50% OFF</p>
						<a class="primary-btn cta-btn" href="store.php">Shop now</a>
					</div>
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /HOT DEAL SECTION -->


	<!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">

				<!-- section title -->
				<div class="col-md-12">
					<div class="section-title">
						<h3 class="title">Top selling</h3>
						<div class="section-nav">
							<ul class="section-tab-nav tab-nav">
								<li class="active"><a data-toggle="tab" href="#tab2">Electronics</a></li>
								<li><a data-toggle="tab" href="#tab2">Music</a></li>
								<li><a data-toggle="tab" href="#tab2">Accessories</a></li>
								<li><a data-toggle="tab" href="#tab2">Gadgets</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /section title -->

				<!-- Products tab & slick -->
				<div class="col-md-12 mainn mainn-raised">
					<div class="row">
						<div class="products-tabs">
							<!-- tab -->
							<div id="tab2" class="tab-pane fade in active">
								<div class="products-slick" data-nav="#slick-nav-2">
									<!-- product -->
									<?php
									include 'db.php';


									$product_query = "SELECT * FROM products,categories WHERE product_cat=cat_id AND product_id BETWEEN 59 AND 65";
									$run_query = pg_query($con, $product_query);
									if (pg_num_rows($run_query) > 0) {

										while ($row = pg_fetch_assoc($run_query)) {
											$pro_id = $row['product_id'];
											$pro_cat = $row['product_cat'];
											$pro_brand = $row['product_brand'];
											$pro_title = $row['product_title'];
											$pro_price = $row['product_price'];
											$pro_image = $row['product_image'];

											$cat_name = $row["cat_title"];

											echo "
				
                        
                                
								<div class='product'>
									<a href='product.php?p=$pro_id'><div class='product-img'>
										<img src='product_images/$pro_image' style='max-height: 170px;' alt=''>
										<div class='product-label'>
											<span class='sale'>-30%</span>
											<span class='new'>NEW</span>
										</div>
									</div></a>
									<div class='product-body'>
										<p class='product-category'>$cat_name</p>
										<h3 class='product-name header-cart-item-name'><a href='product.php?p=$pro_id'>$pro_title</a></h3>
										<h4 class='product-price header-cart-item-info'>$pro_price<del class='product-old-price'>Rp 4.000.000</del></h4>
										<div class='product-rating'>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
										</div>
										<div class='product-btns'>
											<button class='add-to-wishlist'><i class='fa fa-heart-o'></i><span class='tooltipp'>add to wishlist</span></button>
											<button class='add-to-compare'><i class='fa fa-exchange'></i><span class='tooltipp'>add to compare</span></button>
											<button class='quick-view'><i class='fa fa-eye'></i><span class='tooltipp'>quick view</span></button>
										</div>
									</div>
									<div class='add-to-cart'>
										<button pid='$pro_id' id='product' class='add-to-cart-btn block2-btn-towishlist' href='#'><i class='fa fa-shopping-cart'></i> add to cart</button>
									</div>
								</div>
                               
							
                        
			";
										}
										;

									}
									?>

									<!-- /product -->
								</div>
								<div id="slick-nav-2" class="products-slick-nav"></div>
							</div>
							<!-- /tab -->
						</div>
					</div>
				</div>
				<!-- /Products tab & slick -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->

	<!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-4 col-xs-6">
					<div class="section-title">
						<h4 class="title">Top selling</h4>
						<div class="section-nav">
							<div id="slick-nav-3" class="products-slick-nav"></div>
						</div>
					</div>


					<div class="products-widget-slick" data-nav="#slick-nav-3">
						<div id="get_product_home2">
							<!-- product widget -->
							<div class="product-widget">
								<div class="product-img">
									<img src="./img/product01.jpg" alt="">
								</div>
								<div class="product-body">
									<p class="product-category">Electronics Gadgets</p>
									<h3 class="product-name"><a href="#">HP Laptop 14s-cf2518TU</a></h3>
									<h4 class="product-price">Rp 5.799.000 <del class="product-old-price">Rp
											6.599.000</del></h4>
								</div>
							</div>
							<!-- /product widget -->

							<!-- product widget -->
							<div class="product-widget">
								<div class="product-img">
									<img src="./img/iphone-xr.jpg" alt="">
								</div>
								<div class="product-body">
									<p class="product-category">Electronics Gadgets</p>
									<h3 class="product-name"><a href="#">iPhone XR 64 GB</a></h3>
									<h4 class="product-price">Rp 4.999.000 <del class="product-old-price">Rp
											5.499.000</del></h4>
								</div>
							</div>
							<!-- /product widget -->

							<!-- product widget -->
							<div class="product-widget">
								<div class="product-img">
									<img src="./img/image-85.jpg" alt="">
								</div>
								<div class="product-body">
									<p class="product-category">Accessories Gadgets</p>
									<h3 class="product-name"><a href="#">Apple 20W USB-C Power Adapter</a></h3>
									<h4 class="product-price">Rp 399.000 <del class="product-old-price">Rp
											499.000</del></h4>
								</div>
							</div>
							<!-- product widget -->
						</div>
					</div>
				</div>

				<div class="col-md-4 col-xs-6">
					<div class="section-title">
						<h4 class="title">Top selling</h4>
						<div class="section-nav">
							<div id="slick-nav-4" class="products-slick-nav"></div>
						</div>
					</div>

					<div class="products-widget-slick" data-nav="#slick-nav-4">
						<div>
							<!-- product widget -->
							<div class="product-widget">
								<div class="product-img">
									<img src="./img/gitar.jpg" alt="">
								</div>
								<div class="product-body">
									<p class="product-category">Music</p>
									<h3 class="product-name"><a href="#">Gitar Akustik YAMAHA F310</a></h3>
									<h4 class="product-price">Rp 1.399.000 <del class="product-old-price">Rp
											2.500.000</del></h4>
								</div>
							</div>
							<!-- /product widget -->

							<!-- product widget -->
							<div class="product-widget">
								<div class="product-img">
									<img src="./img/apple-watch.jpg" alt="">
								</div>
								<div class="product-body">
									<p class="product-category">Electronics Gadgets</p>
									<h3 class="product-name"><a href="#">Apple Watch Series 8</a></h3>
									<h4 class="product-price">Rp 5.199.000 <del class="product-old-price">Rp
											5.999.000</del></h4>
								</div>
							</div>
							<!-- /product widget -->

							<!-- product widget -->
							<div class="product-widget">
								<div class="product-img">
									<img src="./img/tws.jpg" alt="">
								</div>
								<div class="product-body">
									<p class="product-category">Accessories Gadgets</p>
									<h3 class="product-name"><a href="#">JBL Wave 100 TWS</a></h3>
									<h4 class="product-price">Rp 499.000 <del class="product-old-price">Rp
											749.000</del></h4>
								</div>
							</div>
							<!-- product widget -->
						</div>

						<div>
							<!-- product widget -->
							<div class="product-widget">
								<div class="product-img">
									<img src="./img/case.jpg" alt="">
								</div>
								<div class="product-body">
									<p class="product-category">Accessories Gadgets</p>
									<h3 class="product-name"><a href="#">Clear Case with MagSafe</a></h3>
									<h4 class="product-price">Rp 949.000 <del class="product-old-price">Rp
											999.000</del></h4>
								</div>
							</div>
							<!-- /product widget -->

							<!-- product widget -->
							<div class="product-widget">
								<div class="product-img">
									<img src="./img/xiaomi-tv.jpg" alt="">
								</div>
								<div class="product-body">
									<p class="product-category">Electronics</p>
									<h3 class="product-name"><a href="#">Xiaomi TV P1E 65" UHD</a></h3>
									<h4 class="product-price">Rp 9.499.000 <del class="product-old-price">Rp
											9.999.000</del></h4>
								</div>
							</div>
							<!-- /product widget -->

							<!-- product widget -->
							<div class="product-widget">
								<div class="product-img">
									<img src="./img/canon-EOS.jpg" alt="">
								</div>
								<div class="product-body">
									<p class="product-category">Electronics Gadgets</p>
									<h3 class="product-name"><a href="#">Canon EOS 600D</a></h3>
									<h4 class="product-price">Rp 3.700.000 <del class="product-old-price">Rp
											4.300.000</del></h4>
								</div>
							</div>
							<!-- product widget -->
						</div>
					</div>
				</div>

				<div class="clearfix visible-sm visible-xs">

				</div>

				<div class="col-md-4 col-xs-6">
					<div class="section-title">
						<h4 class="title">Top selling</h4>
						<div class="section-nav">
							<div id="slick-nav-5" class="products-slick-nav"></div>
						</div>
					</div>

					<div class="products-widget-slick" data-nav="#slick-nav-5">
						<div>
							<!-- product widget -->
							<div class="product-widget">
								<div class="product-img">
									<img src="./img/headset.jpg" alt="">
								</div>
								<div class="product-body">
									<p class="product-category">Accessories Gadgets</p>
									<h3 class="product-name"><a href="#">HyperX Cloud Alpha</a></h3>
									<h4 class="product-price">Rp 1.099.000 <del class="product-old-price">Rp
											1.499.000</del></h4>
								</div>
							</div>
							<!-- /product widget -->

							<!-- product widget -->
							<div class="product-widget">
								<div class="product-img">
									<img src="./img/monitor.jpg" alt="">
								</div>
								<div class="product-body">
									<p class="product-category">Electronics</p>
									<h3 class="product-name"><a href="#">Canvas 32Q Curved</a></h3>
									<h4 class="product-price">Rp 6.499.000 <del class="product-old-price">Rp
											6.799.000</del></h4>
								</div>
							</div>
							<!-- /product widget -->

							<!-- product widget -->
							<div class="product-widget">
								<div class="product-img">
									<img src="./img/speaker.jpg" alt="">
								</div>
								<div class="product-body">
									<p class="product-category">Electronics</p>
									<h3 class="product-name"><a href="#">JBL Quantum Duo RGB Gaming Speaker</a></h3>
									<h4 class="product-price">Rp 2.599.000 <del class="product-old-price">Rp
											2.999.000</del></h4>
								</div>
							</div>
							<!-- product widget -->
						</div>

						<div>
							<!-- product widget -->
							<div class="product-widget">
								<div class="product-img">
									<img src="./img/printer.jpg" alt="">
								</div>
								<div class="product-body">
									<p class="product-category">Electronics</p>
									<h3 class="product-name"><a href="#">Epson L360</a></h3>
									<h4 class="product-price">Rp 1.650.000 <del class="product-old-price">Rp
											1.800.000</del></h4>
								</div>
							</div>
							<!-- /product widget -->


							<!-- product widget -->
							<div class="product-widget">
								<div class="product-img">
									<img src="./img/vacuum.jpg" alt="">
								</div>
								<div class="product-body">
									<p class="product-category">Home Appliances</p>
									<h3 class="product-name"><a href="#">Vacuum cleaner wet and dry Flexio Power
											1600W</a></h3>
									<h4 class="product-price">Rp 2.815.000 <del class="product-old-price">Rp
											3.080.000</del></h4>
								</div>
							</div>
							<!-- /product widget -->

							<!-- product widget -->
							<div class="product-widget">
								<div class="product-img">
									<img src="./img/cook.jpg" alt="">
								</div>
								<div class="product-body">
									<p class="product-category">Home Appliances</p>
									<h3 class="product-name"><a href="#">Rice Cooker HD3128</a></h3>
									<h4 class="product-price">Rp 669.000 <del class="product-old-price">Rp
											729.000</del></h4>
								</div>
							</div>
							<!-- product widget -->
						</div>
					</div>
				</div>

			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->
</div>