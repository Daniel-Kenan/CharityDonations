<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Charity Campaign Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.1/chart.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
    <div class="flex h-screen">
        <!-- Sidebar -->
        <aside class="w-64 bg-indigo-800 text-white p-6">
            <h1 class="text-2xl font-bold mb-8">CharityPro</h1>
            <nav>
                <ul class="space-y-2">
                    <li><a href="#" class="flex items-center py-2 px-4 hover:bg-indigo-700 rounded focus:outline-none focus:bg-indigo-600 transition-colors"><i class="fas fa-tachometer-alt mr-3"></i>Dashboard</a></li>
                    <li><a href="#" class="flex items-center py-2 px-4 hover:bg-indigo-700 rounded focus:outline-none focus:bg-indigo-600 transition-colors"><i class="fas fa-bullhorn mr-3"></i>Campaigns</a></li>
                    <li><a href="#" class="flex items-center py-2 px-4 hover:bg-indigo-700 rounded focus:outline-none focus:bg-indigo-600 transition-colors"><i class="fas fa-users mr-3"></i>Donors</a></li>
                    <li><a href="#" class="flex items-center py-2 px-4 hover:bg-indigo-700 rounded focus:outline-none focus:bg-indigo-600 transition-colors"><i class="fas fa-chart-line mr-3"></i>Analytics</a></li>
                    <li><a href="#" class="flex items-center py-2 px-4 hover:bg-indigo-700 rounded focus:outline-none focus:bg-indigo-600 transition-colors"><i class="fas fa-cog mr-3"></i>Settings</a></li>
                </ul>
            </nav>
        </aside>

        <!-- Main Content -->
        <main class="flex-1 p-8 overflow-y-auto">
            <div class="flex justify-between items-center mb-6">
                <h2 class="text-3xl font-semibold">Campaign Overview</h2>
                <div class="flex items-center">
                    <input type="text" placeholder="Search..." class="px-4 py-2 border rounded-l-lg focus:outline-none focus:ring-2 focus:ring-indigo-500" aria-label="Search campaigns">
                    <button class="bg-indigo-600 text-white px-4 py-2 rounded-r-lg hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </div>

            <!-- Summary Cards -->
            <div class="grid grid-cols-1 md:grid-cols-4 gap-6 mb-8">
                <div class="bg-white p-6 rounded-lg shadow-md transition-transform transform hover:scale-105">
                    <div class="flex items-center">
                        <div class="p-3 rounded-full bg-indigo-100 text-indigo-600 mr-4">
                            <i class="fas fa-flag text-2xl"></i>
                        </div>
                        <div>
                            <h3 class="text-lg font-semibold mb-1">Active Campaigns</h3>
                            <p class="text-3xl font-bold text-indigo-600">5</p>
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
                            <p class="text-3xl font-bold text-green-600">$25,780</p>
                        </div>
                    </div>
                </div>
                <div class="bg-white p-6 rounded-lg shadow-md transition-transform transform hover:scale-105">
                    <div class="flex items-center">
                        <div class="p-3 rounded-full bg-purple-100 text-purple-600 mr-4">
                            <i class="fas fa-users text-2xl"></i>
                        </div>
                        <div>
                            <h3 class="text-lg font-semibold mb-1">Donors This Month</h3>
                            <p class="text-3xl font-bold text-purple-600">387</p>
                        </div>
                    </div>
                </div>
                <div class="bg-white p-6 rounded-lg shadow-md transition-transform transform hover:scale-105">
                    <div class="flex items-center">
                        <div class="p-3 rounded-full bg-yellow-100 text-yellow-600 mr-4">
                            <i class="fas fa-hand-holding-heart text-2xl"></i>
                        </div>
                        <div>
                            <h3 class="text-lg font-semibold mb-1">Beneficiaries Reached</h3>
                            <p class="text-3xl font-bold text-yellow-600">1,250</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Charts -->
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-8">
                <div class="bg-white p-6 rounded-lg shadow-md">
                    <h3 class="text-xl font-semibold mb-4">Donation Trends</h3>
                    <canvas id="donationTrends" aria-label="Donation trends over months"></canvas>
                </div>
                <div class="bg-white p-6 rounded-lg shadow-md">
                    <h3 class="text-xl font-semibold mb-4">Campaign Performance</h3>
                    <canvas id="campaignPerformance" aria-label="Campaign performance comparison"></canvas>
                </div>
            </div>

            <!-- Recent Campaigns Table -->
            <div class="bg-white p-6 rounded-lg shadow-md mb-8">
                <h3 class="text-xl font-semibold mb-4">Recent Campaigns</h3>
                <div class="overflow-x-auto">
                    <table class="w-full">
                        <thead>
                            <tr class="bg-gray-100">
                                <th class="text-left py-3 px-4 font-semibold text-sm">Campaign Name</th>
                                <th class="text-left py-3 px-4 font-semibold text-sm">Start Date</th>
                                <th class="text-left py-3 px-4 font-semibold text-sm">End Date</th>
                                <th class="text-left py-3 px-4 font-semibold text-sm">Goal</th>
                                <th class="text-left py-3 px-4 font-semibold text-sm">Progress</th>
                                <th class="text-left py-3 px-4 font-semibold text-sm">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="border-b">
                                <td class="py-3 px-4">Clean Water Initiative</td>
                                <td class="py-3 px-4">2024-05-01</td>
                                <td class="py-3 px-4">2024-07-31</td>
                                <td class="py-3 px-4">$50,000</td>
                                <td class="py-3 px-4">
                                    <div class="w-full bg-gray-200 rounded-full h-2.5">
                                        <div class="bg-indigo-600 h-2.5 rounded-full" style="width: 45%"></div>
                                    </div>
                                </td>
                                <td class="py-3 px-4">
                                    <button class="bg-indigo-600 text-white px-4 py-2 rounded hover:bg-indigo-700 focus:outline-none">View</button>
                                </td>
                            </tr>
                            <!-- More rows as needed -->
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- AI Assistant -->
            <div class="bg-white p-6 rounded-lg shadow-md">
                <h3 class="text-xl font-semibold mb-4">Ask Our AI Assistant</h3>
                <form id="aiForm" class="flex items-center space-x-4">
                    <input type="text" id="aiInput" class="w-full px-4 py-2 border rounded focus:outline-none focus:ring-2 focus:ring-indigo-500" placeholder="Ask me anything about your campaigns...">
                    <button type="submit" class="bg-indigo-600 text-white px-4 py-2 rounded hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500">
                        Ask
                    </button>
                </form>
                <div id="aiResponse" class="mt-4 p-4 bg-gray-50 rounded-lg text-gray-700 border border-gray-200"></div>
            </div>
        </main>
    </div>

    <script>
        // Donation Trends Chart
        const ctx1 = document.getElementById('donationTrends').getContext('2d');
        const donationTrendsChart = new Chart(ctx1, {
            type: 'line',
            data: {
                labels: ['January', 'February', 'March', 'April', 'May', 'June'],
                datasets: [{
                    label: 'Donations',
                    data: [1200, 1900, 3000, 5000, 2300, 3700],
                    borderColor: 'rgba(75, 192, 192, 1)',
                    tension: 0.4,
                    fill: true,
                    backgroundColor: 'rgba(75, 192, 192, 0.2)'
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

        // Campaign Performance Chart
        const ctx2 = document.getElementById('campaignPerformance').getContext('2d');
        const campaignPerformanceChart = new Chart(ctx2, {
            type: 'bar',
            data: {
                labels: ['Campaign 1', 'Campaign 2', 'Campaign 3', 'Campaign 4'],
                datasets: [{
                    label: 'Progress',
                    data: [45, 70, 30, 85],
                    backgroundColor: ['rgba(255, 99, 132, 0.2)', 'rgba(54, 162, 235, 0.2)', 'rgba(255, 206, 86, 0.2)', 'rgba(75, 192, 192, 0.2)'],
                    borderColor: ['rgba(255, 99, 132, 1)', 'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)', 'rgba(75, 192, 192, 1)'],
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

        // AI Assistant Mock
        document.getElementById('aiForm').addEventListener('submit', function(e) {
            e.preventDefault();
            const aiInput = document.getElementById('aiInput').value;
            const aiResponse = document.getElementById('aiResponse');
            
            // Mock AI response
            aiResponse.innerHTML = `You asked: "${aiInput}". Sorry, the AI assistant is currently not available.`;
        });
    </script>
</body>
</html>
