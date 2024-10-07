<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign Up Page</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/1.1.2/tailwind.min.css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/css/intlTelInput.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/js/intlTelInput.min.js"></script>
  <style>
    /* Custom styling to match input fields */
    .intl-tel-input {
      width: 100%;
    }
    .intl-tel-input .iti__flag-container {
      margin-right: 10px;
    }
    .intl-tel-input input[type="tel"] {
      width: 100%;
      padding: 0.75rem; /* Adjust padding to match other fields */
      border-radius: 0.5rem; /* Match rounded corners */
      background-color: #edf2f7; /* Match background color */
      border: 1px solid #e2e8f0; /* Match border color */
      outline: none;
      transition: border-color 0.2s, background-color 0.2s;
    }
    .intl-tel-input input[type="tel"]:focus {
      border-color: #3b82f6; /* Match focus border color */
      background-color: #ffffff; /* Match focus background color */
    }
    .scrollable-form {
      max-height: 400px; /* Adjust height as needed */
      overflow-y: auto; /* Enables vertical scrolling */
    }
  </style>
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
</head>
<body>
<!-- Sign-Up Page -->
<section class="flex flex-col lg:flex-row h-screen items-center justify-center">

  <!-- Image Section -->
  <div class="bg-blue-600 hidden lg:block w-full md:w-1/2 xl:w-2/3 h-screen">
    <img src="<%= request.getContextPath() %>/WebContent/photo-1488521787991-ed7bbaae773c.jpeg" alt="" class="w-full h-full object-cover">
  </div>
 
  <!-- Form Section -->
  <div class="bg-white w-full md:max-w-md lg:max-w-lg xl:max-w-xl h-full px-6 lg:px-16 xl:px-12 flex items-center justify-center">
    <div class="w-full h-full">
      <img src="{% static 'images/university-logo2.png' %}" alt="Site Logo" class="h-12" style="margin:20px auto; display:block" >
   
      <h1 class="text-xl md:text-2xl font-bold leading-tight mt-12">Create your account</h1>

      <div class="scrollable-form mt-6">
        <form action="<%= request.getContextPath() %>/Signup" method="POST">
         
          <div>
            <label class="block text-gray-700">First Name</label>
            <input type="text" name="firstname" placeholder="Enter First Name" class="w-full px-4 py-2 rounded-lg bg-gray-200 mt-2 border focus:border-blue-500 focus:bg-white focus:outline-none" required>
          </div>
          <!-- Surname -->
          <div class="relative mt-4">
            <label class="block text-gray-700">Last Name</label>
            <input type="text" name="lastname" placeholder="Enter Last Name" class="w-full px-4 py-2 rounded-lg bg-gray-200 mt-2 border focus:border-blue-500 focus:bg-white focus:outline-none" required>
          </div>
          <!-- Phone Number with Country Code Selector -->
          <div class="mt-4">
            <label class="block text-gray-700">Phone Number</label>
            <input id="phone" type="tel" name="phone_number" placeholder="Enter Phone Number" class="w-full px-4 py-2 rounded-lg bg-gray-200 mt-2 border focus:border-blue-500 focus:bg-white focus:outline-none" required>
          </div>
          <!-- Email -->
          <div class="mt-4">
            <label class="block text-gray-700">Email Address</label>
            <input type="email" name="email" placeholder="Enter Email Address" class="w-full px-4 py-2 rounded-lg bg-gray-200 mt-2 border focus:border-blue-500 focus:bg-white focus:outline-none" required>
          </div>
          <!-- Password -->
          <div class="mt-4">
            <label class="block text-gray-700">Password</label>
            <input type="password" name="password" placeholder="Enter Password" minlength="6" class="w-full px-4 py-2 rounded-lg bg-gray-200 mt-2 border focus:border-blue-500 focus:bg-white focus:outline-none" required>
          </div>
          <!-- Repeat Password -->
          <div class="mt-4">
            <label class="block text-gray-700">Repeat Password</label>
            <input type="password" name="repeat_password" placeholder="Repeat Password" minlength="6" class="w-full px-4 py-2 rounded-lg bg-gray-200 mt-2 border focus:border-blue-500 focus:bg-white focus:outline-none" required>
          </div>
          <!-- Terms and Conditions Checkbox -->
          <div class="mt-4">
            <label class="inline-flex items-center">
              <input type="checkbox" id="terms" class="form-checkbox text-blue-600">
              <span class="ml-2 text-gray-700">I agree to the <a href="#" class="text-blue-500 hover:text-blue-700">terms and conditions</a></span>
            </label>
          </div>
          <!-- Sign Up Button -->
          <button type="submit" id="submitBtn" disabled class="w-full block bg-green-500 hover:bg-green-400 focus:bg-green-400 text-white font-semibold rounded-lg px-4 py-2 mt-6">Sign Up</button>
        </form>
      </div>

      <hr class="my-6 border-gray-300 w-full">
      <script>
        function func(url) {
          const newWindow = window.open(url, "_blank", "width=500,height=600,menubar=no,toolbar=no,location=no,status=no");
        }
      </script>
      <!-- <button onclick="func('{% provider_login_url 'google' %}?next=/')" type="button" class="w-full block bg-white hover:bg-gray-300 focus:bg-gray-100 text-gray-900 font-semibold rounded-lg px-4 py-3">
        <div class="flex items-center justify-center">
          <svg xmlns="http://www.w3.org/2000/svg1" xmlns:xlink="http://www.w3.org/1999/xlink" class="w-6 h-6" viewBox="0 0 48 48">
            <defs>
              <path id="a" d="M44.5 20H24v8.5h11.8C34.7 33.9 30.1 37 24 37c-7.2 0-13-5.8-13-13s5.8-13 13-13c3.1 0 5.9 1.1 8.1 2.9l6.4-6.4C34.6 4.1 29.6 2 24 2 11.8 2 2 11.8 2 24s9.8 22 22 22c11 0 21-8 21-22 0-1.3-.2-2.7-.5-4z"/>
            </defs>
            <clipPath id="b"><use xlink:href="#a" overflow="visible"/></clipPath>
            <path clip-path="url(#b)" fill="#FBBC05" d="M0 37V11l17 13z"/>
            <path clip-path="url(#b)" fill="#EA4335" d="M0 11l17 13 7-6.1L48 14V0H0z"/>
            <path clip-path="url(#b)" fill="#34A853" d="M0 37l30-23 7.9 1L48 0v48H0z"/>
            <path clip-path="url(#b)" fill="#4285F4" d="M48 48L17 24l-4-3 35-10z"/>
          </svg>
          <span class="ml-4">Sign up with Google</span>
        </div>
      </button> -->

      <p class="mt-4 text-center">Already have an account? <a href="<%= request.getContextPath() %>/Signin" class="text-blue-500 hover:text-blue-700 font-semibold">Log in</a></p>
    </div>
  </div>

</section>
<!-- End of Sign-Up Page -->

<script>
  const termsCheckbox = document.getElementById('terms');
  const submitBtn = document.getElementById('submitBtn');

  termsCheckbox.addEventListener('change', () => {
    submitBtn.disabled = !termsCheckbox.checked;
  });

  // Initialize phone number input field with international code
  const phoneInput = document.getElementById('phone');
  intlTelInput(phoneInput, {
    initialCountry: "ZA",
    geoIpLookup: function(callback) {
      fetch('https://ipinfo.io/json?token=YOUR_TOKEN_HERE')
        .then(response => response.json())
        .then(data => callback(data.country_code))
        .catch(() => callback('US'));
    },
    hiddenInput: "full_number"
  });
</script>
</body>
</html>