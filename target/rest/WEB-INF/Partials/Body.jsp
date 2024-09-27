
  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script defer>
    const url = 'https://ai.nextgensell.com'; 
    const links = [
        { rel: 'stylesheet', href: `${url}/static/style.css` }, 
        { rel: 'stylesheet', href: 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css' }
    ]
    links.forEach(linkData => {
        const link = document.createElement('link');
        link.rel = linkData.rel;
        link.href = linkData.href;
        document.head.appendChild(link);
    });
    const toggleButton = document.createElement('button');
    toggleButton.id = 'toggleChatbot';
    toggleButton.innerHTML = '<i class="fas fa-comment-dots"></i>';
    setTimeout(()=>{document.body.appendChild(toggleButton)},1950)
    const chatbot = document.createElement('div');
    chatbot.id = 'chatbot';
    chatbot.innerHTML = `<iframe src="${url}/chatbot?param=0&param2=1&accessToken=$udwnurery43gfbhfbuy4" style="width: 100%; height: 100%; border: none;"></iframe>`;
    document.body.appendChild(chatbot);
    toggleButton.addEventListener('click', function() {
        chatbot.classList.toggle('chatbot-visible');
        console.log(chatbot.classList);
    });
</script>
  <!-- Main JS File -->
  <script src="assets/js/main.js"></script>