function generateCampaignHtml(content,link) {
    // Create a DOM parser to parse the HTML string'
    
    const parser = new DOMParser();
    const doc = parser.parseFromString(content, 'text/html');

    // Extract the first heading, paragraph, image, and hashtags
    const heading = doc.querySelector('h1') ? doc.querySelector('h1').innerText : 'Default Heading';
    const paragraph = doc.querySelector('p') ? doc.querySelector('p').innerText : 'Default Paragraph';
    const image = doc.querySelector('img') ? doc.querySelector('img').src : '/api/placeholder/400/200';
    const hashtags = Array.from(doc.querySelectorAll('span')).map(span => span.innerText).join(' ');
    console.log(typeof image)
    // Generate the campaign HTML
    const campaignHtml = `

            <div  onclick="openPage('${link}')" class="bg-white rounded-lg shadow-md overflow-hidden">
                <img src="${image}" alt="Campaign Image" class="w-full h-48 object-cover">
                <div class="p-4">
                    <h3 class="text-xl font-semibold mb-2">${heading}</h3>
                    <p class="text-gray-600 mb-4">${paragraph}</p>
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
                    <div class="mt-4">
                        <span class="text-sm text-gray-500">${hashtags}</span>
                    </div>
                </div>
            </div>
   
    `;
    console.log(campaignHtml)
    return campaignHtml;
}