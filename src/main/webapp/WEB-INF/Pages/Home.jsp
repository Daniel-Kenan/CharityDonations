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
              <form action="<%= request.getContextPath() %>/Signin" method="GET" class="php-email-form">
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
  
      
  
      <!-- Team Section -->
      <!-- /Team Section -->
  
      <!-- Call To Action Section -->
      <section id="call-to-action" class="call-to-action section dark-background">
  
        <img src="<%= request.getContextPath() %>/WebContent/static/istockphoto-458536695-612x612.jpg" alt="">
  
        <div class="container">
          <div class="row justify-content-center" data-aos="zoom-in" data-aos-delay="100">
            <div class="col-xl-10">
              <div class="text-center">
                <h3>Make A Change</h3>
                <p>Your generosity has the power to change lives. With just a small contribution, you can provide hope, support, and essential resources to those in need. Every donation, no matter the size, makes a meaningful difference.</p>
                <a class="cta-btn" href="#">Donate</a>
              </div>
            </div>
          </div>
        </div>
  
      </section><!-- /Call To Action Section -->
  
  
      
  
    </main>
  
    
  
    <!-- Scroll Top -->
    <a href="#" id="scroll-top" style="display: none !important;" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
  
    <!-- Preloader -->
    <div id="preloader"></div>
  
    <jsp:include page="../Components/Footer.jsp" />
     <jsp:include page="../Partials/Body.jsp" /> 
    </body>
</html>