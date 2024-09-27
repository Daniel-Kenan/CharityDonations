<%-- 
    Document   : Navigation
    Created on : 27 Sep 2024, 00:13:18
    Author     : sdani
--%>

       <header id="header" class="header d-flex align-items-center fixed-top">
    <div class="container-fluid position-relative d-flex align-items-center justify-content-between">

      <a href="index.html" class="logo d-flex align-items-center me-auto me-xl-0">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <!-- <img src="assets/img/logo.png" alt=""> -->
        <h1 class="sitename">PledgeForChange</h1><span>.</span>
      </a>

      <nav id="navmenu" class="navmenu">
        <ul>
        
          <li><a href="<%= request.getContextPath() %>/home#about">About Us</a></li>
          <li><a href="<%= request.getContextPath() %>/home#services">Our Services</a></li>
          <li><a href="<%= request.getContextPath() %>/home#portfolio">Success Stories</a></li>
          <li><a href="<%= request.getContextPath() %>/donate">Donate</a></li>
          
          <li><a href="<%= request.getContextPath() %>/blog">Blog</a></li>
          <li class="dropdown"><a href="#"><span>Get Involved</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
            <ul>
              <li><a href="#">Volunteer</a></li>
              <li><a href="#">Fundraise</a></li>
              <li><a href="#">Partner with Us</a></li>
              <li class="dropdown"><a href="#"><span>Events</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
                <ul>
                  <li><a href="<%= request.getContextPath() %>/upcoming-events">Upcoming Events</a></li>
                  <li><a href="#">Past Events</a></li>
                  <li><a href="#">Event Gallery</a></li>
                </ul>
              </li>
            </ul>
          </li>
          <li><a href="<%= request.getContextPath() %>/Contact">Contact Us</a></li>
        </ul>
        <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
      </nav>  
      

      <a class="btn-getstarted" href="<%= request.getContextPath() %>/Signin">Sign in / Sign Up</a>

    </div>
  </header>