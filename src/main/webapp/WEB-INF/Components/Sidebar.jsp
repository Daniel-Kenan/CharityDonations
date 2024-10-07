<aside class="w-64 bg-red-600 text-white p-6">
    <h1 class="text-2xl font-bold mb-8">CP Portal</h1>
    <nav>
        <ul class="space-y-2">
            <li>
                <a href="<%= request.getContextPath() %>/Dashboard" class="flex items-center py-2 px-4 hover:bg-red-700 rounded focus:outline-none transition-colors" id="dashboard-link">
                    <i class="fas fa-tachometer-alt mr-3"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="<%= request.getContextPath() %>/Campaigns" class="flex items-center py-2 px-4 hover:bg-red-700 rounded focus:outline-none transition-colors" id="campaigns-link">
                    <i class="fas fa-bullhorn mr-3"></i>Campaigns
                </a>
            </li>
            <li>
                <a href="<%= request.getContextPath() %>/Donors" class="flex items-center py-2 px-4 hover:bg-red-700 rounded focus:outline-none transition-colors" id="donors-link">
                    <i class="fas fa-users mr-3"></i>Donors
                </a>
            </li>
            <!-- <li>
                <a href="<%= request.getContextPath() %>/Analytics" class="flex items-center py-2 px-4 hover:bg-red-700 rounded focus:outline-none transition-colors" id="analytics-link">
                    <i class="fas fa-chart-line mr-3"></i>Analytics
                </a>
            </li> -->
            <li>
                <a href="<%= request.getContextPath() %>/Settings" class="flex items-center py-2 px-4 hover:bg-red-700 rounded focus:outline-none transition-colors" id="settings-link">
                    <i class="fas fa-cog mr-3"></i>Settings
                </a>
            </li>
        </ul>
    </nav>
</aside>

<script>
    // Get the current URL path
    const currentPath = window.location.pathname;

    // Define a function to highlight the active link
    function highlightActiveLink() {
        const links = document.querySelectorAll('nav a');
        links.forEach(link => {
            // Check if the link's href matches the current path
            if (link.href === window.location.href) {
                link.classList.add('bg-red-700'); // Add the active class
            } else {
                link.classList.remove('bg-red-700'); // Remove it for inactive links
            }
        });
    }

    // Call the function to highlight the active link on page load
    highlightActiveLink();
</script>
