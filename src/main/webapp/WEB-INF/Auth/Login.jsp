<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Log In Page</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/1.1.2/tailwind.min.css'>
</head>
<body>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
        </style>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
            </style>
<style>
    body,html{
        
  font-family: "Poppins", sans-serif;
  font-weight: 400;
  font-style: normal;

    }
</style>
<!-- Loader -->

<section class="flex flex-col md:flex-row h-screen items-center">

  <!-- Image Section -->
  <div class="bg-blue-600 hidden lg:block w-full md:w-1/2 xl:w-2/3 h-full">
    <img src="<%= request.getContextPath() %>/WebContent/photo-1488521787991-ed7bbaae773c.jpeg" alt="background" class="w-full h-full object-cover">
  </div>

  <!-- Form Section -->
  <div class="bg-white w-full md:max-w-md lg:max-w-lg xl:max-w-xl mx-auto px-6 lg:px-16 xl:px-12 flex items-center justify-center h-full">

    <div class="w-full max-w-sm">
      <h2 src="{% static 'images/university-logo2.png' %}" alt="Site Logo" class="h-12 mx-auto mb-8" style='font-family: "Montserrat", sans-serif;font-optical-sizing: auto;font-style: normal;margin-top: -50;''>PledgeForChange<span style="color: red;font-size: xx-large;">.<span></h2>
      <h1 class="text-xl md:text-2xl font-bold leading-tight text-center">Log in to your account</h1>

      <form class="mt-6" action="#" method="POST">
      
        <!-- Email -->
        <div class="mb-4">
          <label class="block text-gray-700">Email Address</label>
          <input type="email" name="email" placeholder="Enter Email Address" class="w-full px-4 py-3 rounded-lg bg-gray-200 border border-gray-300 focus:border-blue-500 focus:bg-white focus:outline-none" required>
        </div>

        <!-- Password -->
        <div class="relative mb-4">
          <label class="block text-gray-700">Password</label>
          <input type="password" name="password" id="passwordField" placeholder="Enter Password" minlength="6" class="w-full px-4 py-3 rounded-lg bg-gray-200 border border-gray-300 focus:border-blue-500 focus:bg-white focus:outline-none" required>
          <span id="togglePassword" class="absolute inset-y-0 right-0 flex items-center pr-3 cursor-pointer text-gray-500" style="margin-top:25px">
            😣
          </span>

          <!-- Error Message Section -->
<% if (request.getAttribute("errorMessage") != null) { %>
  <div class="text-red-500 text-center mb-4">
      <%= request.getAttribute("errorMessage") %>
  </div>
<% } %>

        </div>

        <script>
          document.getElementById('togglePassword').addEventListener('click', function () {
            const passwordField = document.getElementById('passwordField');
            const type = passwordField.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordField.setAttribute('type', type);

            this.textContent = type === 'password' ? '😣' : '👀';
          });
        </script>

        <!-- Forgot Password -->
        <div class="text-right mb-4">
          <a href="#" class="text-sm font-semibold text-gray-700 hover:text-blue-700 focus:text-blue-700">Forgot Password?</a>
        </div>

        <!-- Login Button -->
        <button type="submit" class="w-full block bg-green-500 hover:bg-green-400 focus:bg-green-400 text-white font-semibold rounded-lg px-4 py-3">Log In</button>
      </form>

      <!-- Divider -->
      <hr class="my-6 border-gray-300">
      <script>
        function func(url) {
const newWindow = window.open(url, "_blank", "width=500,height=600,menubar=no,toolbar=no,location=no,status=no");


}

      </script>
    

      <!-- Google Login Button -->
      

      <!-- Sign Up Link -->
      <p class="mt-8 text-center">Need an account? <a href="<%= request.getContextPath() %>/Signup" class="text-blue-500 hover:text-blue-700 font-semibold">Create an account</a></p>

    </div>
  </div>

</section>

</body>
</html>