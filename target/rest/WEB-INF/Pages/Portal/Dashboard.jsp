<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="./Partials/Head.jsp" />
</head>
<body class="bg-gray-120">
    <div class="flex h-screen">
        <!-- Sidebar -->
        <jsp:include page="../../Components/Sidebar.jsp" />

        <!-- Main Content -->
        <main class="flex-1 p-8 overflow-y-auto">
            <div class="flex justify-between items-center mb-6">
                <h2 class="text-3xl font-semibold">Campaign Overview</h2>
                <%
                    // Get the session attribute
                    String email = (String) session.getAttribute("email");
                    Integer num = (Integer) request.getAttribute("donorsLength");
                    Integer totalAmount = (Integer) request.getAttribute("totalAmount");
                    Integer beneficiariesReached = num > 0 ? (totalAmount / num) : 0; // Calculate beneficiaries based on total amount per donor
                %>

                <!-- Display the email -->
                <p>Email: <%= email %></p>
                <div class="flex items-center">
                    <input type="button" value="AI" id="nextgensell_embedface1Btn" class="px-4 py-2 border rounded-l-lg focus:outline-none focus:ring-2 focus:ring-indigo-500" aria-label="Search campaigns">
                    <button class="bg-#E84545-600 text-white px-4 py-2 rounded-r-lg hover:bg-#E84545-700 focus:outline-none focus:ring-2 focus:ring-#E84545-500">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </div>

            <!-- Summary Cards -->
            <div class="grid grid-cols-1 md:grid-cols-4 gap-6 mb-8">
                <div class="bg-white p-6 rounded-lg shadow-md transition-transform transform hover:scale-105">
                    <div class="flex items-center">
                        <div class="p-3 rounded-full bg-gray-100 text-gray-600 mr-4">
                            <i class="fas fa-flag text-2xl"></i>
                        </div>
                        <div>
                            <h3 class="text-lg font-semibold mb-1">Active Campaigns</h3>
                            <p class="text-3xl font-bold text-gray-600">5</p>
                        </div>
                    </div>
                </div>
                <div class="bg-white p-6 rounded-lg shadow-md transition-transform transform hover:scale-105">
                    <div class="flex items-center">
                        <div class="p-3 rounded-full bg-green-100 text-green-600 mr-4">
                            <i class="fas fa-dollar-sign text-2xl"></i>
                        </div>
                        <div>
                            <h3 class="text-lg font-semibold mb-1">Total Donations</h3>
                            <p class="text-3xl font-bold text-green-600">R <%= totalAmount %></p>
                        </div>
                    </div>
                </div>
                <div class="bg-white p-6 rounded-lg shadow-md transition-transform transform hover:scale-105">
                    <div class="flex items-center">
                        <div class="p-3 rounded-full bg-gray-100 text-gray-600 mr-4">
                            <i class="fas fa-users text-2xl"></i>
                        </div>
                        <div>
                            <h3 class="text-lg font-semibold mb-1">Donors This Month</h3>
                            <p class="text-3xl font-bold text-gray-600"><%= num %></p>
                        </div>
                    </div>
                </div>
                <div class="bg-white p-6 rounded-lg shadow-md transition-transform transform hover:scale-105">
                    <div class="flex items-center">
                        <div class="p-3 rounded-full bg-gray-100 text-gray-600 mr-4">
                            <i class="fas fa-hand-holding-heart text-2xl"></i>
                        </div>
                        <div>
                            <h3 class="text-lg font-semibold mb-1">Beneficiaries Estimated</h3>
                            <p class="text-3xl font-bold text-gray-600"><%= beneficiariesReached %></p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Charts -->
            <div class="grid grid-cols-1 mb-8">
                <div class="bg-white p-6 rounded-lg shadow-md">
                    <h3 class="text-xl font-semibold mb-4">Donation Distribution</h3>
                    <canvas id="donationDistribution" aria-label="Donation distribution by campaign"></canvas>
                </div>
            </div>

            <script>
                // Donation Distribution Chart (Pie Chart)
                const ctx = document.getElementById('donationDistribution').getContext('2d');
                const donationDistributionChart = new Chart(ctx, {
                    type: 'bar',
                    data: {
                        labels: ['Campaign 1', 'Campaign 2', 'Campaign 3', 'Campaign 4'],
                        datasets: [{
                            label: 'Distribution of Donations',
                            data: [1200, 1900, 3000, 5000],
                            backgroundColor: [
                                'rgba(255, 99, 132, 0.2)',
                                'rgba(54, 162, 235, 0.2)',
                                'rgba(255, 206, 86, 0.2)',
                                'rgba(75, 192, 192, 0.2)'
                            ],
                            borderColor: [
                                'rgba(255, 99, 132, 1)',
                                'rgba(54, 162, 235, 1)',
                                'rgba(255, 206, 86, 1)',
                                'rgba(75, 192, 192, 1)'
                            ],
                            borderWidth: 1
                        }]
                    },
                    options: {
                        responsive: true,
                        plugins: {
                            tooltip: {
                                enabled: true
                            }
                        }
                    }
                });
            </script>

            <script>
                // AI Assistant Mock
                document.getElementById('aiForm').addEventListener('submit', function(e) {
                    e.preventDefault();
                    const aiInput = document.getElementById('aiInput').value;
                    const aiResponse = document.getElementById('aiResponse');
                    
                    // Mock AI response
                    aiResponse.innerHTML = `You asked: "${aiInput}". Sorry, the AI assistant is currently not available.`;
                });
            </script>

            <script>
                const iframe = document.createElement('iframe');
                const url = false ? "https://ai.nextgensell.com" : "http://localhost:8765";
                iframe.src = url + `/plugin?access_token=89c59fj3crjrt4543dmc`;
                Object.assign(iframe.style, {
                    position: 'absolute',
                    top: '0',
                    right: '-600px', // Start hidden off-screen
                    width: '600px',
                    height: '100%',
                    borderLeft: '1px solid slategrey', // Left border only
                    borderTop: 'none', // No top border
                    borderRight: 'none', // No right border
                    borderBottom: 'none', // No bottom border
                    transition: 'right 0.5s ease',
                    zIndex: '99999999999999999999999999999999999999999999999999 !important', // Ensure the iframe is above the close button
                });
                
                const closeButton = document.createElement('button');
                closeButton.textContent = '-';
                
                // Close button styles in JavaScript
                Object.assign(closeButton.style, {
                    position: 'absolute',
                    top: '10px',
                    right: '10px',
                    color: 'black',
                    padding: '5px 10px',
                    cursor: 'pointer',
                    borderRadius: '3px',
                    fontWeight: 'bold',
                    zIndex: '10', // Ensure the button is above the iframe
                    display: 'none', // Initially hidden
                });
                
                // Close button logic
                closeButton.addEventListener('click', () => {
                    iframe.style.right = '-600px'; // Slide out the iframe
                    closeButton.style.display = 'none'; // Hide the close button
                });
                
                const toggleButton = document.getElementById('nextgensell_embedface1Btn');
                toggleButton.addEventListener('click', () => {
                    if (iframe.style.right === '0px') {
                        iframe.style.right = '-600px'; // Slide out
                        closeButton.style.display = 'none'; // Hide the close button
                    } else {
                        iframe.style.right = '0'; // Slide in
                        closeButton.style.display = 'block'; // Show the close button
                    }
                });
                
                document.body.appendChild(iframe);
                document.body.appendChild(closeButton); // Append the close button to the body
            </script>
        </main>
    </div>
</body>
</html>
