<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Charity Campaigns</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
    <div class="flex h-screen">
        <!-- Sidebar (same as dashboard) -->
        <aside class="w-64 bg-indigo-800 text-white p-6">
            <h1 class="text-2xl font-bold mb-8">CharityPro</h1>
            <nav>
                <ul class="space-y-2">
                    <li><a href="#" class="flex items-center py-2 px-4 hover:bg-indigo-700 rounded"><i class="fas fa-tachometer-alt mr-3"></i>Dashboard</a></li>
                    <li><a href="#" class="flex items-center py-2 px-4 bg-indigo-700 rounded"><i class="fas fa-bullhorn mr-3"></i>Campaigns</a></li>
                    <li><a href="#" class="flex items-center py-2 px-4 hover:bg-indigo-700 rounded"><i class="fas fa-users mr-3"></i>Donors</a></li>
                    <li><a href="#" class="flex items-center py-2 px-4 hover:bg-indigo-700 rounded"><i class="fas fa-chart-line mr-3"></i>Analytics</a></li>
                    <li><a href="#" class="flex items-center py-2 px-4 hover:bg-indigo-700 rounded"><i class="fas fa-cog mr-3"></i>Settings</a></li>
                </ul>
            </nav>
        </aside>

        <!-- Main Content -->
        <main class="flex-1 p-8 overflow-y-auto">
            <div class="flex justify-between items-center mb-6">
                <h2 class="text-3xl font-semibold">Campaigns</h2>
                <button onclick="openNewCampaignModal()" class="bg-indigo-600 text-white px-4 py-2 rounded-lg hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500">
                    <i class="fas fa-plus mr-2"></i>New Campaign
                </button>
            </div>

            <!-- Campaign Filters -->
            <div class="bg-white p-4 rounded-lg shadow-md mb-6">
                <div class="flex flex-wrap gap-4">
                    <div class="flex-grow">
                        <input type="text" placeholder="Search campaigns..." class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500">
                    </div>
                    <div>
                        <select class="px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500">
                            <option value="">All Statuses</option>
                            <option value="active">Active</option>
                            <option value="upcoming">Upcoming</option>
                            <option value="completed">Completed</option>
                        </select>
                    </div>
                    <div>
                        <select class="px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500">
                            <option value="">All Categories</option>
                            <option value="education">Education</option>
                            <option value="health">Health</option>
                            <option value="environment">Environment</option>
                            <option value="poverty">Poverty</option>
                        </select>
                    </div>
                </div>
            </div>

            <!-- Campaigns Grid -->
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                <!-- Campaign Card -->
                <div class="bg-white rounded-lg shadow-md overflow-hidden">
                    <img src="/api/placeholder/400/200" alt="Campaign Image" class="w-full h-48 object-cover">
                    <div class="p-4">
                        <h3 class="text-xl font-semibold mb-2">Clean Water Initiative</h3>
                        <p class="text-gray-600 mb-4">Provide clean water to rural communities</p>
                        <div class="flex justify-between items-center mb-4">
                            <span class="text-sm text-gray-500">Goal: $50,000</span>
                            <span class="text-sm font-semibold text-green-600">Raised: $22,500</span>
                        </div>
                        <div class="w-full bg-gray-200 rounded-full h-2.5 mb-4">
                            <div class="bg-green-600 h-2.5 rounded-full" style="width: 45%"></div>
                        </div>
                        <div class="flex justify-between items-center">
                            <span class="text-sm text-gray-500">Ends in 30 days</span>
                            <button class="text-indigo-600 hover:text-indigo-800 font-semibold">View Details</button>
                        </div>
                    </div>
                </div>

                <!-- Repeat similar campaign cards for other campaigns -->
                <!-- Campaign Card 2 -->
                <div class="bg-white rounded-lg shadow-md overflow-hidden">
                    <img src="/api/placeholder/400/200" alt="Campaign Image" class="w-full h-48 object-cover">
                    <div class="p-4">
                        <h3 class="text-xl font-semibold mb-2">Education for All</h3>
                        <p class="text-gray-600 mb-4">Support underprivileged children's education</p>
                        <div class="flex justify-between items-center mb-4">
                            <span class="text-sm text-gray-500">Goal: $75,000</span>
                            <span class="text-sm font-semibold text-green-600">Raised: $45,000</span>
                        </div>
                        <div class="w-full bg-gray-200 rounded-full h-2.5 mb-4">
                            <div class="bg-green-600 h-2.5 rounded-full" style="width: 60%"></div>
                        </div>
                        <div class="flex justify-between items-center">
                            <span class="text-sm text-gray-500">Ends in 45 days</span>
                            <button class="text-indigo-600 hover:text-indigo-800 font-semibold">View Details</button>
                        </div>
                    </div>
                </div>

                <!-- Campaign Card 3 -->
                <div class="bg-white rounded-lg shadow-md overflow-hidden">
                    <img src="/api/placeholder/400/200" alt="Campaign Image" class="w-full h-48 object-cover">
                    <div class="p-4">
                        <h3 class="text-xl font-semibold mb-2">Hunger Relief Program</h3>
                        <p class="text-gray-600 mb-4">Provide meals to homeless shelters</p>
                        <div class="flex justify-between items-center mb-4">
                            <span class="text-sm text-gray-500">Goal: $100,000</span>
                            <span class="text-sm font-semibold text-green-600">Raised: $30,000</span>
                        </div>
                        <div class="w-full bg-gray-200 rounded-full h-2.5 mb-4">
                            <div class="bg-green-600 h-2.5 rounded-full" style="width: 30%"></div>
                        </div>
                        <div class="flex justify-between items-center">
                            <span class="text-sm text-gray-500">Ends in 60 days</span>
                            <button class="text-indigo-600 hover:text-indigo-800 font-semibold">View Details</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pagination -->
            <div class="mt-8 flex justify-center">
                <nav class="relative z-0 inline-flex rounded-md shadow-sm -space-x-px" aria-label="Pagination">
                    <a href="#" class="relative inline-flex items-center px-2 py-2 rounded-l-md border border-gray-300 bg-white text-sm font-medium text-gray-500 hover:bg-gray-50">
                        <span class="sr-only">Previous</span>
                        <i class="fas fa-chevron-left"></i>
                    </a>
                    <a href="#" class="relative inline-flex items-center px-4 py-2 border border-gray-300 bg-white text-sm font-medium text-gray-700 hover:bg-gray-50">1</a>
                    <a href="#" class="relative inline-flex items-center px-4 py-2 border border-gray-300 bg-white text-sm font-medium text-gray-700 hover:bg-gray-50">2</a>
                    <a href="#" class="relative inline-flex items-center px-4 py-2 border border-gray-300 bg-white text-sm font-medium text-gray-700 hover:bg-gray-50">3</a>
                    <a href="#" class="relative inline-flex items-center px-2 py-2 rounded-r-md border border-gray-300 bg-white text-sm font-medium text-gray-500 hover:bg-gray-50">
                        <span class="sr-only">Next</span>
                        <i class="fas fa-chevron-right"></i>
                    </a>
                </nav>
            </div>
        </main>
    </div>

    <!-- New Campaign Modal -->
    <div id="newCampaignModal" class="fixed inset-0 bg-gray-600 bg-opacity-50 overflow-y-auto h-full w-full hidden">
        <div class="relative top-20 mx-auto p-5 border w-96 shadow-lg rounded-md bg-white">
            <div class="mt-3 text-center">
                <h3 class="text-lg leading-6 font-medium text-gray-900">Create New Campaign</h3>
                <div class="mt-2 px-7 py-3">
                    <input type="text" placeholder="Campaign Name" class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500 mb-3">
                    <input type="text" placeholder="Goal Amount" class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500 mb-3">
                    <input type="date" placeholder="Start Date" class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500 mb-3">
                    <input type="date" placeholder="End Date" class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500 mb-3">
                    <textarea placeholder="Campaign Description" class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500 mb-3" rows="3"></textarea>
                </div>
                <div class="items-center px-4 py-3">
                    <button id="createCampaignBtn" class="px-4 py-2 bg-indigo-600 text-white text-base font-medium rounded-md w-full shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500">
                        Create Campaign
                    </button>
                </div>
                <div class="items-center px-4 py-3">
                    <button id="closeCampaignModalBtn" class="px-4 py-2 bg-gray-200 text-gray-800 text-base font-medium rounded-md w-full shadow-sm hover:bg-gray-300 focus:outline-none focus:ring-2 focus:ring-gray-400">
                        Cancel
                    </button>
                </div>
            </div>
        </div>
    </div>

    <script>
        function openNewCampaignModal() {
            document.getElementById('newCampaignModal').classList.remove('hidden');
        }

        function closeNewCampaignModal() {
            document.getElementById('newCampaignModal').classList.add('hidden');
        }

        document.getElementById('closeCampaignModalBtn').addEventListener('click', closeNewCampaignModal);

        document.getElementById('createCampaignBtn').addEventListener('click', function() {
            // Here you would typically send the form data to your backend
            alert('Campaign created successfully!');
            closeNewCampaignModal();
        });

        // Close modal if clicking outside of it
        window.onclick = function(event) {
            var modal = document.getElementById('newCampaignModal');
            if (event.target == modal) {
                closeNewCampaignModal();
            }
        }
    </script>
</body>
</html>