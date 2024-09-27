<%-- 
    Document   : Home
    Created on : 25 Sep 2024, 16:08:18
    Author     : sdani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/WebContent/style.css">
        <jsp:include page="../Partials/Header.jsp" /> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <jsp:include page="../Components/Navigation.jsp" /> 
    <style>#toggleChatbot{background-color: #E84545 !important;}</style>
  

    <main class="main">
  
      <!-- Hero Section -->
      <section id="hero" class="hero section dark-background">
  
        <img src="<%= request.getContextPath() %>/WebContent/static/logo.gif" alt="Charity Logo" data-aos="fade-in">
      
        <div class="container">
          <div class="row">
            <div class="col-lg-10">
              <h2 data-aos="fade-up" data-aos-delay="100">Start A Charity Campaign</h2>
              <p data-aos="fade-up" data-aos-delay="200">
                Create a campaign to change the world.<br>
                Every donation helps make a difference.
              </p>
            </div>
            <div class="col-lg-5" data-aos="fade-up" data-aos-delay="300">
              <form action="forms/newsletter.php" method="post" class="php-email-form">
                <div class="sign-up-form"><input type="email" name="email"  placeholder="ex #FeesMustFall" ><input placeholder="Create a campaign..." type="submit" value="+ Create"></div>
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Thank you! Your request has been received.</div>
              </form>
            </div>
          </div>
        </div>
      
      </section>
      
      <!-- /Hero Section -->
  
  
      <!-- About Section -->
      <section id="about" class="about section light-background">
  
        <div class="container" data-aos="fade-up" data-aos-delay="100">
          <div class="row align-items-xl-center gy-5">
      
            <div class="col-xl-5 content">
              <h3>About Us</h3>
              <h2>Empowering Communities, Changing Lives</h2>
              <p>We are committed to making a difference by supporting communities in need around the world. Through our platform, we connect passionate individuals and organizations to causes that bring real impact, whether it's providing education, healthcare, or disaster relief.</p>
              <a href="#" class="read-more"><span>Read More</span><i class="bi bi-arrow-right"></i></a>
            </div>
      
            <div class="col-xl-7">
              <div class="row gy-4 icon-boxes">
      
                <div class="col-md-6" data-aos="fade-up" data-aos-delay="200">
                  <div class="icon-box">
                    <i class="bi bi-buildings"></i>
                    <h3>Community Development</h3>
                    <p>We help build stronger communities by supporting projects in education, housing, and local businesses.</p>
                  </div>
                </div> <!-- End Icon Box -->
      
                <div class="col-md-6" data-aos="fade-up" data-aos-delay="300">
                  <div class="icon-box">
                    <i class="bi bi-clipboard-pulse"></i>
                    <h3>Healthcare Access</h3>
                    <p>Our campaigns provide essential healthcare services and medical supplies to those in need.</p>
                  </div>
                </div> <!-- End Icon Box -->
      
                <div class="col-md-6" data-aos="fade-up" data-aos-delay="400">
                  <div class="icon-box">
                    <i class="bi bi-command"></i>
                    <h3>Education for All</h3>
                    <p>We work to ensure that children and adults everywhere have access to quality education and training.</p>
                  </div>
                </div> <!-- End Icon Box -->
      
                <div class="col-md-6" data-aos="fade-up" data-aos-delay="500">
                  <div class="icon-box">
                    <i class="bi bi-graph-up-arrow"></i>
                    <h3>Economic Empowerment</h3>
                    <p>Through microloans and financial aid, we help individuals and families achieve sustainable livelihoods.</p>
                  </div>
                </div> <!-- End Icon Box -->
      
              </div>
            </div>
      
          </div>
        </div>
      
      </section>
      <!-- /About Section -->
  
      <!-- Stats Section -->
      <section id="stats" class="stats section dark-background">
  
        <img src="<%= request.getContextPath() %>/WebContent/static/istockphoto-1424278005-612x612.jpg" alt="Stats Background" data-aos="fade-in">
      
        <div class="container position-relative" data-aos="fade-up" data-aos-delay="100">
      
          <div class="row gy-4">
      
            <div class="col-lg-3 col-md-6">
              <div class="stats-item text-center w-100 h-100">
                <span data-purecounter-start="0" data-purecounter-end="5000" data-purecounter-duration="1" class="purecounter"></span>
                <p>Donors</p>
              </div>
            </div><!-- End Stats Item -->
      
            <div class="col-lg-3 col-md-6">
              <div class="stats-item text-center w-100 h-100">
                <span data-purecounter-start="0" data-purecounter-end="120" data-purecounter-duration="1" class="purecounter"></span>
                <p>Campaigns</p>
              </div>
            </div><!-- End Stats Item -->
      
            <div class="col-lg-3 col-md-6">
              <div class="stats-item text-center w-100 h-100">
                <span data-purecounter-start="0" data-purecounter-end="75000" data-purecounter-duration="1" class="purecounter"></span>
                <p>Lives Impacted</p>
              </div>
            </div><!-- End Stats Item -->
      
            <div class="col-lg-3 col-md-6">
              <div class="stats-item text-center w-100 h-100">
                <span data-purecounter-start="0" data-purecounter-end="150" data-purecounter-duration="1" class="purecounter"></span>
                <p>Volunteers</p>
              </div>
            </div><!-- End Stats Item -->
      
          </div>
      
        </div>
      
      </section>
      <!-- /Stats Section -->
  
      <!-- Services Section -->
      <section id="services" class="services section">
  
        <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
          <h2>Our Services</h2>
          <p>We offer a wide range of services to support and empower communities across the globe.</p>
        </div><!-- End Section Title -->
      
        <div class="container">
      
          <div class="row gy-4">
      
            <div class="col-lg-6 " data-aos="fade-up" data-aos-delay="100">
              <div class="service-item d-flex">
                <div class="icon flex-shrink-0"><i class="bi bi-briefcase"></i></div>
                <div>
                  <h4 class="title"><a href="services-details.html" class="stretched-link">Campaign Management</a></h4>
                  <p class="description">We help organize and manage charity campaigns, ensuring your cause reaches a global audience.</p>
                </div>
              </div>
            </div>
            <!-- End Service Item -->
      
            <div class="col-lg-6 " data-aos="fade-up" data-aos-delay="200">
              <div class="service-item d-flex">
                <div class="icon flex-shrink-0"><i class="bi bi-card-checklist"></i></div>
                <div>
                  <h4 class="title"><a href="services-details.html" class="stretched-link">Volunteer Coordination</a></h4>
                  <p class="description">We connect you with dedicated volunteers to help you implement and sustain your charitable projects.</p>
                </div>
              </div>
            </div><!-- End Service Item -->
      
            <div class="col-lg-6 " data-aos="fade-up" data-aos-delay="300">
              <div class="service-item d-flex">
                <div class="icon flex-shrink-0"><i class="bi bi-bar-chart"></i></div>
                <div>
                  <h4 class="title"><a href="services-details.html" class="stretched-link">Impact Reporting</a></h4>
                  <p class="description">Our platform provides detailed reports on the impact of donations, helping you track the success of your campaigns.</p>
                </div>
              </div>
            </div><!-- End Service Item -->
      
            <div class="col-lg-6 " data-aos="fade-up" data-aos-delay="400">
              <div class="service-item d-flex">
                <div class="icon flex-shrink-0"><i class="bi bi-binoculars"></i></div>
                <div>
                  <h4 class="title"><a href="services-details.html" class="stretched-link">Fundraising Strategy</a></h4>
                  <p class="description">We assist in creating effective fundraising strategies to maximize support and contributions to your cause.</p>
                </div>
              </div>
            </div><!-- End Service Item -->
      
            <div class="col-lg-6 " data-aos="fade-up" data-aos-delay="500">
              <div class="service-item d-flex">
                <div class="icon flex-shrink-0"><i class="bi bi-brightness-high"></i></div>
                <div>
                  <h4 class="title"><a href="services-details.html" class="stretched-link">Awareness Campaigns</a></h4>
                  <p class="description">We help raise awareness about critical issues through digital campaigns that reach a global audience.</p>
                </div>
              </div>
            </div><!-- End Service Item -->
      
            <div class="col-lg-6 " data-aos="fade-up" data-aos-delay="600">
              <div class="service-item d-flex">
                <div class="icon flex-shrink-0"><i class="bi bi-calendar4-week"></i></div>
                <div>
                  <h4 class="title"><a href="services-details.html" class="stretched-link">Event Planning</a></h4>
                  <p class="description">From virtual events to in-person fundraisers, we support you in planning successful charity events.</p>
                </div>
              </div>
            </div><!-- End Service Item -->
      
          </div>
      
        </div>
      
      </section>
      <!-- /Services Section -->
  
      <!-- Features Section -->
      <!-- /Features Section -->
  
      <!-- Portfolio Section -->
      <!-- /Portfolio Section -->
  
      <!-- Pricing Section -->
      <!-- /Pricing Section -->
  
      <!-- Faq Section -->
      
  <!-- /Faq Section -->
  
      <!-- Team Section -->
      <!-- /Team Section -->
  
      <!-- Call To Action Section -->
      <section id="call-to-action" class="call-to-action section dark-background">
  
        <img src="<%= request.getContextPath() %>/WebContent/static/istockphoto-458536695-612x612.jpg" alt="">
  
        <div class="container">
          <div class="row justify-content-center" data-aos="zoom-in" data-aos-delay="100">
            <div class="col-xl-10">
              <div class="text-center">
                <h3>Call To Action</h3>
                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                <a class="cta-btn" href="#">Call To Action</a>
              </div>
            </div>
          </div>
        </div>
  
      </section><!-- /Call To Action Section -->
  
      <!-- Testimonials Section -->
      <section id="testimonials" class="testimonials section light-background">
  
        <div class="container">
      
          <div class="row align-items-center">
      
            <div class="col-lg-5 info" data-aos="fade-up" data-aos-delay="100">
              <h3>What Our Supporters Say</h3>
              <p>
                Discover the impactful stories from those we've helped and the community members who support our mission. Their voices inspire us to continue making a difference.
              </p>
            </div>
      
            <div class="col-lg-7" data-aos="fade-up" data-aos-delay="200">
      
              <div class="swiper init-swiper">
                <script type="application/json" class="swiper-config">
                  {
                    "loop": true,
                    "speed": 600,
                    "autoplay": {
                      "delay": 5000
                    },
                    "slidesPerView": "auto",
                    "pagination": {
                      "el": ".swiper-pagination",
                      "type": "bullets",
                      "clickable": true
                    }
                  }
                </script>
                <div class="swiper-wrapper">
      
                  <div class="swiper-slide">
                    <div class="testimonial-item">
                      <div class="d-flex">
                        <img src="<%= request.getContextPath() %>/WebContent/assets/img/testimonials/testimonials-1.jpg" class="testimonial-img flex-shrink-0" alt="">
                        <div>
                          <h3>Emily Johnson</h3>
                          <h4>Community Member</h4>
                          <div class="stars">
                            <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                          </div>
                        </div>
                      </div>
                      <p>
                        <i class="bi bi-quote quote-icon-left"></i>
                        <span>Thanks to this organization, I was able to receive the education I needed to improve my life. The support I've received has been life-changing.</span>
                        <i class="bi bi-quote quote-icon-right"></i>
                      </p>
                    </div>
                  </div><!-- End testimonial item -->
      
                  <div class="swiper-slide">
                    <div class="testimonial-item">
                      <div class="d-flex">
                        <img src="<%= request.getContextPath() %>/WebContent/assets/img/testimonials/testimonials-2.jpg" class="testimonial-img flex-shrink-0" alt="">
                        <div>
                          <h3>Michael Adams</h3>
                          <h4>Volunteer</h4>
                          <div class="stars">
                            <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                          </div>
                        </div>
                      </div>
                      <p>
                        <i class="bi bi-quote quote-icon-left"></i>
                        <span>Volunteering with this organization has been one of the most rewarding experiences of my life. Seeing the direct impact of our work on the community is truly fulfilling.</span>
                        <i class="bi bi-quote quote-icon-right"></i>
                      </p>
                    </div>
                  </div><!-- End testimonial item -->
      
                  <div class="swiper-slide">
                    <div class="testimonial-item">
                      <div class="d-flex">
                        <img src="<%= request.getContextPath() %>/WebContent/assets/img/testimonials/testimonials-3.jpg" class="testimonial-img flex-shrink-0" alt="">
                        <div>
                          <h3>Linda Carter</h3>
                          <h4>Beneficiary</h4>
                          <div class="stars">
                            <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                          </div>
                        </div>
                      </div>
                      <p>
                        <i class="bi bi-quote quote-icon-left"></i>
                        <span>The help I received from this organization gave me hope during a difficult time in my life. I am now able to provide for my family and pursue my dreams.</span>
                        <i class="bi bi-quote quote-icon-right"></i>
                      </p>
                    </div>
                  </div><!-- End testimonial item -->
      
                  <div class="swiper-slide">
                    <div class="testimonial-item">
                      <div class="d-flex">
                        <img src="<%= request.getContextPath() %>/WebContent/assets/img/testimonials/testimonials-4.jpg" class="testimonial-img flex-shrink-0" alt="">
                        <div>
                          <h3>James Brown</h3>
                          <h4>Supporter</h4>
                          <div class="stars">
                            <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                          </div>
                        </div>
                      </div>
                      <p>
                        <i class="bi bi-quote quote-icon-left"></i>
                        <span>I've been donating to this charity for years. The transparency and dedication they show in their work give me confidence that my contributions make a real difference.</span>
                        <i class="bi bi-quote quote-icon-right"></i>
                      </p>
                    </div>
                  </div><!-- End testimonial item -->
      
                  <div class="swiper-slide">
                    <div class="testimonial-item">
                      <div class="d-flex">
                        <img src="<%= request.getContextPath() %>/WebContent/assets/img/testimonials/testimonials-5.jpg" class="testimonial-img flex-shrink-0" alt="">
                        <div>
                          <h3>Anna White</h3>
                          <h4>Community Leader</h4>
                          <div class="stars">
                            <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                          </div>
                        </div>
                      </div>
                      <p>
                        <i class="bi bi-quote quote-icon-left"></i>
                        <span>The programs and initiatives run by this charity have strengthened our community. It's inspiring to witness the change they are making.</span>
                        <i class="bi bi-quote quote-icon-right"></i>
                      </p>
                    </div>
                  </div><!-- End testimonial item -->
      
                </div>
                <div class="swiper-pagination"></div>
              </div>
      
            </div>
      
          </div>
      
        </div>
      
      </section>
      <!-- /Testimonials Section -->
  
      <!-- Recent Posts Section -->
      <section id="recent-posts" class="recent-posts section">
  
        <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
          <h2>Recent Updates</h2>
          <p>Stay informed about our latest initiatives and stories that inspire change.</p>
        </div><!-- End Section Title -->
      
        <div class="container">
      
          <div class="row gy-4">
      
            <div class="col-xl-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
              <article>
      
                <div class="post-img">
                  <img src="<%= request.getContextPath() %>/WebContent/assets/img/blog/blog-1.jpg" alt="" class="img-fluid">
                </div>
      
                <p class="post-category">Community Impact</p>
      
                <h2 class="title">
                  <a href="blog-details.html">Transforming Lives Through Education</a>
                </h2>
      
                <div class="d-flex align-items-center">
                  <img src="<%= request.getContextPath() %>/WebContent/assets/img/blog/blog-author.jpg" alt="" class="img-fluid post-author-img flex-shrink-0">
                  <div class="post-meta">
                    <p class="post-author">Emily Stone</p>
                    <p class="post-date">
                      <time datetime="2024-09-01">Sep 1, 2024</time>
                    </p>
                  </div>
                </div>
      
              </article>
            </div><!-- End post list item -->
      
            <div class="col-xl-4 col-md-6" data-aos="fade-up" data-aos-delay="200">
              <article>
      
                <div class="post-img">
                  <img src="<%= request.getContextPath() %>/WebContent/assets/img/blog/blog-2.jpg" alt="" class="img-fluid">
                </div>
      
                <p class="post-category">Fundraising</p>
      
                <h2 class="title">
                  <a href="blog-details.html">Join Us in Our Annual Fundraising Gala</a>
                </h2>
      
                <div class="d-flex align-items-center">
                  <img src="<%= request.getContextPath() %>/WebContent/assets/img/blog/blog-author-2.jpg" alt="" class="img-fluid post-author-img flex-shrink-0">
                  <div class="post-meta">
                    <p class="post-author">John Smith</p>
                    <p class="post-date">
                      <time datetime="2024-08-15">Aug 15, 2024</time>
                    </p>
                  </div>
                </div>
      
              </article>
            </div><!-- End post list item -->
      
            <div class="col-xl-4 col-md-6" data-aos="fade-up" data-aos-delay="300">
              <article>
      
                <div class="post-img">
                  <img src="<%= request.getContextPath() %>/WebContent/assets/img/blog/blog-3.jpg" alt="" class="img-fluid">
                </div>
      
                <p class="post-category">Volunteer Stories</p>
      
                <h2 class="title">
                  <a href="blog-details.html">A Day in the Life of a Volunteer</a>
                </h2>
      
                <div class="d-flex align-items-center">
                  <img src="<%= request.getContextPath() %>/WebContent/assets/img/blog/blog-author-3.jpg" alt="" class="img-fluid post-author-img flex-shrink-0">
                  <div class="post-meta">
                    <p class="post-author">Sarah Lee</p>
                    <p class="post-date">
                      <time datetime="2024-07-30">Jul 30, 2024</time>
                    </p>
                  </div>
                </div>
      
              </article>
            </div><!-- End post list item -->
      
          </div><!-- End recent posts list -->
      
        </div>
      
      </section>
      
  
    </main>
  
    
  
    <!-- Scroll Top -->
    <a href="#" id="scroll-top" style="display: none !important;" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
  
    <!-- Preloader -->
    <div id="preloader"></div>
  
    <jsp:include page="../Components/Footer.jsp" />
     <jsp:include page="../Partials/Body.jsp" /> 
    </body>
</html>
