<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Charity Analytics</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body class="bg-gray-100">
    <div class="flex h-screen">
        <!-- Sidebar (same as dashboard and campaigns page) -->
        <aside class="w-64 bg-indigo-800 text-white p-6">
            <h1 class="text-2xl font-bold mb-8">CharityPro</h1>
            <nav>
                <ul class="space-y-2">
                    <li><a href="#" class="flex items-center py-2 px-4 hover:bg-indigo-700 rounded"><i class="fas fa-tachometer-alt mr-3"></i>Dashboard</a></li>
                    <li><a href="#" class="flex items-center py-2 px-4 hover:bg-indigo-700 rounded"><i class="fas fa-bullhorn mr-3"></i>Campaigns</a></li>
                    <li><a href="#" class="flex items-center py-2 px-4 hover:bg-indigo-700 rounded"><i class="fas fa-users mr-3"></i>Donors</a></li>
                    <li><a href="#" class="flex items-center py-2 px-4 bg-indigo-700 rounded"><i class="fas fa-chart-line mr-3"></i>Analytics</a></li>
                    <li><a href="#" class="flex items-center py-2 px-4 hover:bg-indigo-700 rounded"><i class="fas fa-cog mr-3"></i>Settings</a></li>
                </ul>
            </nav>
        </aside>

        <!-- Main Content -->
        <main class="flex-1 p-8 overflow-y-auto">
            <h2 class="text-3xl font-semibold mb-6">Analytics Overview</h2>

            <!-- Date Range Selector -->
            <div class="mb-6">
                <select id="dateRange" class="px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500">
                    <option value="7">Last 7 days</option>
                    <option value="30">Last 30 days</option>
                    <option value="90">Last 90 days</option>
                    <option value="365">Last 365 days</option>
                </select>
            </div>

            <!-- Key Metrics -->
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
                <div class="bg-white p-6 rounded-lg shadow-md">
                    <h3 class="text-lg font-semibold mb-2">Total Donations</h3>
                    <p class="text-3xl font-bold text-indigo-600">$245,678</p>
                    <p class="text-sm text-gray-500">+15% from last period</p>
                </div>
                <div class="bg-white p-6 rounded-lg shadow-md">
                    <h3 class="text-lg font-semibold mb-2">Active Donors</h3>
                    <p class="text-3xl font-bold text-green-600">1,234</p>
                    <p class="text-sm text-gray-500">+5% from last period</p>
                </div>
                <div class="bg-white p-6 rounded-lg shadow-md">
                    <h3 class="text-lg font-semibold mb-2">Successful Campaigns</h3>
                    <p class="text-3xl font-bold text-yellow-600">18</p>
                    <p class="text-sm text-gray-500">+2 from last period</p>
                </div>
                <div class="bg-white p-6 rounded-lg shadow-md">
                    <h3 class="text-lg font-semibold mb-2">Average Donation</h3>
                    <p class="text-3xl font-bold text-purple-600">$78</p>
                    <p class="text-sm text-gray-500">+$3 from last period</p>
                </div>
            </div>

            <!-- Charts -->
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-6 mb-8">
                <div class="bg-white p-6 rounded-lg shadow-md">
                    <h3 class="text-xl font-semibold mb-4">Donation Trends</h3>
                    <canvas id="donationTrendsChart"></canvas>
                </div>
                <div class="bg-white p-6 rounded-lg shadow-md">
                    <h3 class="text-xl font-semibold mb-4">Campaign Performance</h3>
                    <canvas id="campaignPerformanceChart"></canvas>
                </div>
            </div>

            <!-- Donor Demographics -->
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-6 mb-8">
                <div class="bg-white p-6 rounded-lg shadow-md">
                    <h3 class="text-xl font-semibold mb-4">Donor Age Distribution</h3>
                    <canvas id="donorAgeChart"></canvas>
                </div>
                <div class="bg-white p-6 rounded-lg shadow-md">
                    <h3 class="text-xl font-semibold mb-4">Donation Sources</h3>
                    <canvas id="donationSourcesChart"></canvas>
                </div>
            </div>

            <!-- Top Performers -->
            <div class="bg-white p-6 rounded-lg shadow-md mb-8">
                <h3 class="text-xl font-semibold mb-4">Top Performing Campaigns</h3>
                <div class="overflow-x-auto">
                    <table class="w-full">
                        <thead>
                            <tr class="bg-gray-100">
                                <th class="text-left py-3 px-4 font-semibold text-sm">Campaign</th>
                                <th class="text-left py-3 px-4 font-semibold text-sm">Total Raised</th>
                                <th class="text-left py-3 px-4 font-semibold text-sm">Donors</th>
                                <th class="text-left py-3 px-4 font-semibold text-sm">Avg. Donation</th>
                                <th class="text-left py-3 px-4 font-semibold text-sm">Success Rate</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="border-b">
                                <td class="py-3 px-4">Clean Water Initiative</td>
                                <td class="py-3 px-4">$52,300</td>
                                <td class="py-3 px-4">621</td>
                                <td class="py-3 px-4">$84</td>
                                <td class="py-3 px-4">98%</td>
                            </tr>
                            <tr class="border-b">
                                <td class="py-3 px-4">Education for All</td>
                                <td class="py-3 px-4">$48,750</td>
                                <td class="py-3 px-4">583</td>
                                <td class="py-3 px-4">$83</td>
                                <td class="py-3 px-4">95%</td>
                            </tr>
                            <tr>
                                <td class="py-3 px-4">Hunger Relief Program</td>
                                <td class="py-3 px-4">$41,200</td>
                                <td class="py-3 px-4">529</td>
                                <td class="py-3 px-4">$77</td>
                                <td class="py-3 px-4">92%</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </main>
    </div>

    <script>
        // Donation Trends Chart
        const donationTrendsCtx = document.getElementById('donationTrendsChart').getContext('2d');
        new Chart(donationTrendsCtx, {
            type: 'line',
            data: {
                labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul'],
                datasets: [{
                    label: 'Donations',
                    data: [12000, 19000, 15000, 21000, 18000, 25000, 22000],
                    borderColor: 'rgb(99, 102, 241)',
                    tension: 0.1
                }]
            },
            options: {
                responsive: true,
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });

        // Campaign Performance Chart
        const campaignPerformanceCtx = document.getElementById('campaignPerformanceChart').getContext('2d');
        new Chart(campaignPerformanceCtx, {
            type: 'bar',
            data: {
                labels: ['Clean Water', 'Education', 'Hunger Relief', 'Healthcare', 'Environmental'],
                datasets: [{
                    label: 'Funds Raised',
                    data: [52300, 48750, 41200, 38900, 35600],
                    backgroundColor: [
                        'rgba(99, 102, 241, 0.6)',
                        'rgba(16, 185, 129, 0.6)',
                        'rgba(245, 158, 11, 0.6)',
                        'rgba(239, 68, 68, 0.6)',
                        'rgba(59, 130, 246, 0.6)'
                    ]
                }]
            },
            options: {
                responsive: true,
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });

        // Donor Age Distribution Chart
        const donorAgeCtx = document.getElementById('donorAgeChart').getContext('2d');
        new Chart(donorAgeCtx, {
            type: 'pie',
            data: {
                labels: ['18-24', '25-34', '35-44', '45-54', '55+'],
                datasets: [{
                    data: [15, 25, 20, 18, 22],
                    backgroundColor: [
                        'rgba(99, 102, 241, 0.6)',
                        'rgba(16, 185, 129, 0.6)',
                        'rgba(245, 158, 11, 0.6)',
                        'rgba(239, 68, 68, 0.6)',
                        'rgba(59, 130, 246, 0.6)'
                    ]
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'right',
                    }
                }
            }
        });

        // Donation Sources Chart
        const donationSourcesCtx = document.getElementById('donationSourcesChart').getContext('2d');
        new Chart(donationSourcesCtx, {
            type: 'doughnut',
            data: {
                labels: ['Website', 'Mobile App', 'Social Media', 'Events', 'Other'],
                datasets: [{
                    data: [40, 25, 15, 12, 8],
                    backgroundColor: [
                        'rgba(99, 102, 241, 0.6)',
                        'rgba(16, 185, 129, 0.6)',
                        'rgba(245, 158, 11, 0.6)',
                        'rgba(239, 68, 68, 0.6)',
                        'rgba(59, 130, 246, 0.6)'
                    ]
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'right',
                    }
                }
            }
        });

        // Date Range Selector Functionality
        document.getElementById('dateRange').addEventListener('change', function() {
            // Here you would typically fetch new data based on the selected date range
            // and update the charts and metrics accordingly
            console.log('Selected date range:', this.value);
        });
    </script>
</body>
</html>