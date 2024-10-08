<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="./Partials/Head.jsp" />
    <!-- Include Tailwind CSS for styling -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@1.9.6/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-120">
    <div class="flex h-screen">
        <!-- Sidebar -->
        <jsp:include page="../../Components/Sidebar.jsp" />

        <!-- Main Content -->
        <main class="flex-1 p-8 overflow-y-auto">

            
            <div class="flex justify-between items-center mb-6">
                <h2 class="text-3xl font-semibold">Settings</h2>
                <!-- Logout Button -->
                <form action="<%= request.getContextPath() %>/Logout" method="POST">
                    <button type="submit" class="bg-red-600 text-white px-4 py-2 rounded hover:bg-red-700 focus:outline-none">Logout</button>
                </form>
            </div>

            <div class="bg-white p-6 rounded-lg shadow-md mb-8">
                <h3 class="text-xl font-semibold mb-4">Profile Settings</h3>
                <form action="<%= request.getContextPath() %>/UpdateProfile" method="POST">
                    <!-- Assuming user information is stored in session attributes -->
                    <div class="mb-4">
                        <label for="firstName" class="block text-sm font-medium text-gray-700">First Name</label>
                        <input type="text" id="firstName" name="firstName" value="<%= session.getAttribute("firstName") %>" class="mt-1 block w-full border border-gray-300 rounded-lg p-2 focus:ring-indigo-500 focus:border-indigo-500" required>
                    </div>
                    <div class="mb-4">
                        <label for="lastName" class="block text-sm font-medium text-gray-700">Last Name</label>
                        <input type="text" id="lastName" name="lastName" value="<%= session.getAttribute("lastName") %>" class="mt-1 block w-full border border-gray-300 rounded-lg p-2 focus:ring-indigo-500 focus:border-indigo-500" required>
                    </div>
                    <div class="mb-4">
                        <label for="email" class="block text-sm font-medium text-gray-700">Email</label>
                        <input type="email" id="email" name="email" value="<%= session.getAttribute("email") %>" class="mt-1 block w-full border border-gray-300 rounded-lg p-2 focus:ring-indigo-500 focus:border-indigo-500" required>
                    </div>
                    <div class="mb-4">
                        <label for="phone" class="block text-sm font-medium text-gray-700">Phone</label>
                        <input type="tel" id="phone" name="phone" value="<%= session.getAttribute("phone") %>" class="mt-1 block w-full border border-gray-300 rounded-lg p-2 focus:ring-indigo-500 focus:border-indigo-500">
                    </div>
                    <div class="mb-4">
                        <button type="submit" class="bg-indigo-600 text-white px-4 py-2 rounded hover:bg-indigo-700 focus:outline-none">Save Changes</button>
                    </div>
                </form>
            </div>

            

            <div class="bg-white p-6 rounded-lg shadow-md mb-8">
                <h3 class="text-xl font-semibold mb-4">Notification Settings</h3>
                <form>
                    <div class="mb-4">
                        <label class="inline-flex items-center">
                            <input type="checkbox" class="form-checkbox h-5 w-5 text-indigo-600" checked>
                            <span class="ml-2">Receive email notifications</span>
                        </label>
                    </div>
                    <div class="mb-4">
                        <label class="inline-flex items-center">
                            <input type="checkbox" class="form-checkbox h-5 w-5 text-indigo-600">
                            <span class="ml-2">Receive SMS notifications</span>
                        </label>
                    </div>
                    <div class="mb-4">
                        <button type="submit" class="bg-indigo-600 text-white px-4 py-2 rounded hover:bg-indigo-700 focus:outline-none">Save Notification Settings</button>
                    </div>
                </form>
            </div>
        </main>
    </div>
</body>
</html>
