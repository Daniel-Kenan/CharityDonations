<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Markdown Blog Viewer</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/showdown@1.9.1/dist/showdown.min.js"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=JetBrains+Mono:wght@100..800&display=swap');
        body, html {
            font-family: 'Times New Roman', Times, serif;
        }
        /* Custom Heading Styles */
        h1 {
            font-size: 2.25rem; /* Equivalent to text-4xl */
            margin-bottom: 1rem; /* Adds space below h1 */
        }
        h2 {
            font-size: 1.875rem; /* Equivalent to text-3xl */
            margin-bottom: 0.75rem; /* Adds space below h2 */
        }
        h3 {
            font-size: 1.5rem; /* Equivalent to text-2xl */
            margin-bottom: 0.5rem; /* Adds space below h3 */
        }
        h4, h5, h6 {
            font-size: 1.25rem; /* Equivalent to text-xl */
            margin-bottom: 0.5rem;
        }
    </style>
    
    <main class="container mx-auto px-5 py-6">
        <article id="content" class="bg-white p-8 rounded-lg shadow-lg max-w-4xl mx-auto prose prose-lg">
            <header class="mb-6">
                <h1 id="post-title" class="font-semibold text-gray-900"></h1>
                <p id="post-meta" class="text-gray-500 text-sm mt-2"></p>
            </header>
            <div id="markdown-content" class="text-gray-700"></div>
        </article>
    </main>

    <script>
        // Function to get URL parameters
        function getUrlParameter(name) {
            const urlParams = new URLSearchParams(window.location.search);
            return urlParams.get(name);
        }

        // Function to fetch the Markdown file and convert it to HTML
        async function fetchMarkdown(url) {
            try {
                const response = await fetch(url);
                if (!response.ok) throw new Error('Failed to fetch the Markdown file.');
                const markdown = await response.text();
                
                // Convert Markdown to HTML using Showdown
                const converter = new showdown.Converter({
                    tables: true,
                    strikethrough: true,
                    tasklists: true,
                    simplifiedAutoLink: true,
                    smoothLivePreview: true,
                    ghCompatibleHeaderId: true // Makes header IDs GitHub-compatible
                });
                const htmlContent = converter.makeHtml(markdown);
                
                // Extract the title and metadata from the Markdown content
                const lines = markdown.split('\n');
                const title = lines[0].replace(/^#\s/, ''); // Get title from the first line
                const date = lines[1] ? lines[1].replace(/^Date:\s*/, '') : 'Unknown Date'; // Get date from the second line
                const author = lines[2] ? lines[2].replace(/^Author:\s*/, '') : 'Unknown Author'; // Get author from the third line

                // Set title and meta information
              

                // Set the converted HTML content
                document.getElementById('markdown-content').innerHTML = htmlContent;
            } catch (error) {
                document.getElementById('markdown-content').innerHTML = `<p class="text-red-500">${error.message}</p>`;
            }
        }

        // Get the URL parameter for the Markdown file
        const mdUrl = getUrlParameter('file');
        if (mdUrl) {
            fetchMarkdown("https://media.nextgensell.com/files/blog/"+mdUrl+".md");
        } else {
            document.getElementById('markdown-content').innerHTML = '<p class="text-red-500">No Markdown file specified in the URL.</p>';
        }
    </script>
</body>
</html>
