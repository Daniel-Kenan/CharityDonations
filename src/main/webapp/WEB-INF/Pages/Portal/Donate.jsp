<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donate to Our Platform</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f7f7f7;
        }
        .donation-button {
            transition: background-color 0.3s;
        }
        .donation-button:hover, .donation-button.selected {
            background-color: #dc2626; /* Tailwind red-600 */
            color: white;
        }
    </style>
    
</head>
<body class="flex items-center justify-center min-h-screen">
    <div class="bg-white p-10 rounded-lg shadow-lg w-full max-w-lg">
        <h1 class="text-4xl font-bold text-center text-red-600 mb-4" id="organizationName">Support Our Cause</h1>
        <p class="text-center mb-6 text-gray-600 text-lg">Your generous donation helps us make a difference!</p>
        
        <!-- Donor Information Form -->
        <form id="donationForm" action="https://sandbox.payfast.co.za/eng/process" method="POST" onsubmit="setUrls()">
            <!-- Donor Information Fields -->
            <div class="mb-4">
                <label for="donorName" class="block text-gray-700 font-semibold mb-1">Your Name</label>
                <input type="text" id="donorName" name="donorName" class="block w-full p-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-red-500" required>
            </div>
            <div class="mb-4">
                <label for="donorEmail" class="block text-gray-700 font-semibold mb-1">Email Address</label>
                <input type="email" id="donorEmail" name="donorEmail" class="block w-full p-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-red-500" required>
            </div>
            <div class="mb-4">
                <label for="donorPhone" class="block text-gray-700 font-semibold mb-1">Phone Number</label>
                <input type="tel" id="donorPhone" name="donorPhone" class="block w-full p-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-red-500" required>
            </div>

            <!-- Donation Amounts -->
            <div class="mb-6">
                <p class="block text-gray-700 font-semibold mb-2">Choose Donation Amount:</p>
                <div class="grid grid-cols-2 gap-4">
                    <button type="button" class="donation-button p-3 border border-gray-300 rounded-lg" data-amount="50">R50</button>
                    <button type="button" class="donation-button p-3 border border-gray-300 rounded-lg" data-amount="100">R100</button>
                    <button type="button" class="donation-button p-3 border border-gray-300 rounded-lg" data-amount="200">R200</button>
                    <button type="button" class="donation-button p-3 border border-gray-300 rounded-lg" data-amount="500">R500</button>
                    <button type="button" class="donation-button p-3 border border-gray-300 rounded-lg" data-amount="1000">R1000</button>
                    <button type="button" class="donation-button p-3 border border-gray-300 rounded-lg" data-amount="other">Other Amount</button>
                </div>
            </div>
            
            <!-- Custom Amount Input (Appears when "Other Amount" is selected) -->
            <div id="customAmountContainer" class="mb-4 hidden">
                <label for="customAmount" class="block text-gray-700 font-semibold mb-1">Enter Custom Amount</label>
                <input type="number" id="customAmount" name="amount" min="1" class="block w-full p-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-red-500" placeholder="Enter amount in Rands">
            </div>
            
            <!-- Hidden PayFast Inputs -->
            <input type="hidden" name="merchant_id" value="10000100">
            <input type="hidden" name="merchant_key" value="46f0cd694581a">
            <input type="hidden" name="item_name" value="Charity Donation">
            <input type="hidden" name="amount" id="donationAmount">
            <input type="hidden" name="organization" id="organizationInput" value="">
            <input type="hidden" name="return_url" id="returnUrl" value="">
            <input type="hidden" name="cancel_url" id="cancelUrl" value="">

            <!-- Submit Button -->
            <button type="submit" class="w-full bg-red-600 text-white font-semibold p-3 rounded-lg hover:bg-red-700 transition duration-200 focus:outline-none focus:ring-2 focus:ring-red-500">Donate Now</button>
        </form>

        <p class="text-center mt-6 text-gray-500 text-sm">Thank you for your support!</p>
    </div>
    <script src="<%= request.getContextPath() %>/WebContent/payment.js">
    </script>
    
</body>
</html>
