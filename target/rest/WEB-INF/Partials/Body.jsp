
  <!-- Vendor JS Files -->
  <script src="<%= request.getContextPath() %>/WebContent/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="<%= request.getContextPath() %>/WebContent/assets/vendor/php-email-form/validate.js"></script>
  <script src="<%= request.getContextPath() %>/WebContent/assets/vendor/aos/aos.js"></script>
  <script src="<%= request.getContextPath() %>/WebContent/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="<%= request.getContextPath() %>/WebContent/assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="<%= request.getContextPath() %>/WebContent/assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="<%= request.getContextPath() %>/WebContent/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="<%= request.getContextPath() %>/WebContent/assets/vendor/swiper/swiper-bundle.min.js"></script>

  <!-- Main JS File -->
  <script src="<%= request.getContextPath() %>/WebContent/assets/js/main.js"></script>

  <script defer>
    const append = (tag, props, parent = document.body) => parent.appendChild(Object.assign(document.createElement(tag), props));
    
    ['https://ai.nextgensell.com/static/style.css', 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css']
    .forEach(href => append('link', { rel: 'stylesheet', href: href }, document.head));
    
    setTimeout(() => append('button', { id: 'toggleChatbot', innerHTML: '<i class="fas fa-comment-dots"></i>' }), 1950);
    
    append('div', { id: 'chatbot', innerHTML: `<iframe src="https://ai.nextgensell.com/chatbot?param=0&param2=1&accessToken=$udwnurery43gfbhfbuy4" style="width:100%;height:100%;border:none;"  allow="microphone" ></iframe>` });
    
    document.addEventListener('click', e => {
        if (e.target.id === 'toggleChatbot') {
            document.getElementById('chatbot').classList.toggle('chatbot-visible');
        }
    });
</script>
