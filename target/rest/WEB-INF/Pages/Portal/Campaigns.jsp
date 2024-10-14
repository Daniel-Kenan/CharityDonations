<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="./Partials/Head.jsp" />
</head>
<body class="bg-gray-100">
    <style>
        #iframeContainer {
            display: none;
            width: 100%;
            max-width: 100%;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            background-color: white;
            z-index: 999;
            border: 1px solid #ccc;
        }
        iframe {
            width: 100%;
            height: 100%;
            border: none;
           
        
        }
        #closeButton {
            position: absolute;
            top: 20px;
            right: 20px;
            background-color: red;
            color: white;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
        }
    </style>
    <div id="iframeContainer">
        <button id="closeButton">Close</button>
        <iframe id="iframe" src=""></iframe>
    </div>

    <div class="flex h-screen">
        
        <!-- Sidebar (same as dashboard) -->
        <jsp:include page="../../Components/Sidebar.jsp" />
  

        <!-- Main Content -->
        <main class="flex-1 p-8 overflow-y-auto">
            <div class="flex justify-between items-center mb-6">
                <h2 class="text-3xl font-semibold">Campaigns</h2>
                <button onclick="openNewCampaignModal()" class="bg-red-600  text-white px-4 py-2 rounded-lg hover:bg-red-700 focus:outline-none focus:ring-2 focus:bg-red-500 ">
                    <i class="fas fa-plus mr-2"></i>New Campaign
                </button>
            </div>

            <!-- Campaign Filters -->
            <!-- <div class="bg-white p-4 rounded-lg shadow-md mb-6">
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
            </div> -->

            <!-- Campaigns Grid -->
            <div id="Campaigns" class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                <!-- Campaign Card -->
                

                <!-- Repeat similar campaign cards for other campaigns -->
                <!-- Campaign Card 2 -->
                

                <!-- Campaign Card 3 -->
                
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
            location.href="<%= request.getContextPath() %>/AddCampaign"
        }
    </script>
    <script>




        fetch('https://media.nextgensell.com/files?folder=blog')
  .then(response => {
    if (!response.ok) {
        throw new Error('Network response was not ok');
    }
    return response.json(); // Parse the JSON from the response
})
.then(data => {
    console.log(data)
    // Filter the array to get files with names ending in '.md'
    let mdFiles = data
        .filter(item => item.type === "file" && item.name.endsWith('.md'))
    mdFiles.map(item => ({
             // Copy the existing properties
            name: `https://media.nextgensell.com/files/blog/${item.name}` // Prepend the URL
        }));

    console.log(mdFiles);

    // Assuming you want to convert all markdown files to HTML
    const converter = new showdown.Converter();

    // You can iterate through the mdFiles array to convert each file's content
    mdFiles.forEach(mdFile => {
        const url = "https://media.nextgensell.com/files/blog"+mdFile.name; // Get the URL of the Markdown file
        console.log(url)
        // Fetch the markdown content from the URL
        fetch(url)
            .then(response => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                console.log(response)
                return response.text(); // Parse the text from the response
            })
            .then(markdown => {
                console.log(markdown)
                const htmlContent = converter.makeHtml(markdown); // Convert markdown to HTML
                // console.log(htmlContent); // Log the converted HTML
                // You can now do something with htmlContent, like displaying it on the page
                let card = generateCampaignHtml(htmlContent,url)
                document.getElementById("Campaigns").innerHTML +=  card; 
            })
            .catch(error => {
                console.error('There was a problem fetching the markdown file:', error);
            });
    });

    // Handle the data received from the server
})
.catch(error => {
    console.error('There was a problem with the fetch operation:', error);
});


    </script>
    



    <script src="https://cdn.jsdelivr.net/npm/showdown/dist/showdown.min.js"></script>

<script>
    function openPage(link) {
       let mdUrl = link
        mdUrl = mdUrl.split('/').pop(); // Get the file name from the full URL path if there's any prepended part
            // Remove the .md suffix if it's present
            mdUrl = mdUrl.replace(/\.md$/, ''); 
        location.href = "/CharityDonations/PreviewServlet?file=" + mdUrl
        // fetch(link)
        //     .then(response => response.text())  // Fetch the markdown content
        //     .then(markdown => {
        //         const converter = new showdown.Converter();  // Initialize Showdown
        //         const html = converter.makeHtml(markdown);  // Convert markdown to HTML
        //         const iframeDoc = document.getElementById('iframe').contentDocument || document.getElementById('iframe').contentWindow.document;
                
        //         // Set the iframe content
        //         iframeDoc.open();
        //         iframeDoc.write("<div style='width:800px;max-width:800px;display:flex;justify-content:center'><div>"+html+"</div></div>");
        //         iframeDoc.close();
                
        //         document.getElementById('iframeContainer').style.display = 'block';
        //     })
        //     .catch(error => {
        //         console.error('Error loading markdown:', error);
        //     });
    }

    document.getElementById('closeButton').addEventListener('click', function() {
        document.getElementById('iframeContainer').style.display = 'none';
        const iframeDoc = document.getElementById('iframe').contentDocument || document.getElementById('iframe').contentWindow.document;
        iframeDoc.open();
        iframeDoc.write('');  // Clear the iframe content
        iframeDoc.close();
    });
</script>

</body>
</html>