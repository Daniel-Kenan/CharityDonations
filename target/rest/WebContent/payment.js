{/* <script>
        // Get the organization name from URL parameters
        const params = new URLSearchParams(window.location.search);
        const orgName = params.get('organization');

        // Set the organization name in the header and hidden input
        const organizationNameElement = document.getElementById('organizationName');
        const organizationInput = document.getElementById('organizationInput');
        if (orgName) {
            const decodedOrgName = decodeURIComponent(orgName);
            organizationNameElement.textContent = `Support ${decodedOrgName}`;
            organizationInput.value = decodedOrgName;  // Set the value for PayFast
        {"}"}

        // Donation amount selection
        const buttons = document.querySelectorAll('.donation-button');
        const customAmountContainer = document.getElementById('customAmountContainer');
        const donationAmountInput = document.getElementById('donationAmount');
        const customAmountInput = document.getElementById('customAmount');

        buttons.forEach(button => {
            button.addEventListener('click', () => {
                // Remove 'selected' class from all buttons
                buttons.forEach(btn => btn.classList.remove('selected'));
                // Add 'selected' class to the clicked button
                button.classList.add('selected');
                
                // Handle 'Other Amount' selection
                if (button.getAttribute('data-amount') === 'other') {
                    customAmountContainer.classList.remove('hidden');
                    donationAmountInput.value = '';
                    customAmountInput.required = true;
                } else {
                    customAmountContainer.classList.add('hidden');
                    customAmountInput.required = false;
                    donationAmountInput.value = button.getAttribute('data-amount');
                }
            });
        });

        // Update donation amount when custom value is entered
        customAmountInput.addEventListener('input', () => {
            donationAmountInput.value = customAmountInput.value;
        });
    </script> */}



   // Get the organization name from URL parameters
        const params = new URLSearchParams(window.location.search);
        const orgName = params.get('organization');

        // Set the organization name in the header and hidden input
        const organizationNameElement = document.getElementById('organizationName');
        const organizationInput = document.getElementById('organizationInput');
        if (orgName) {
            const decodedOrgName = decodeURIComponent(orgName);
            organizationNameElement.textContent = `Support ${decodedOrgName}`;
            organizationInput.value = decodedOrgName;  // Set the value for PayFast
        }

        // Donation amount selection
        const buttons = document.querySelectorAll('.donation-button');
        const customAmountContainer = document.getElementById('customAmountContainer');
        const donationAmountInput = document.getElementById('donationAmount');
        const customAmountInput = document.getElementById('customAmount');

        buttons.forEach(button => {
            button.addEventListener('click', () => {
                // Remove 'selected' class from all buttons
                buttons.forEach(btn => btn.classList.remove('selected'));
                // Add 'selected' class to the clicked button
                button.classList.add('selected');
                
                // Handle 'Other Amount' selection
                if (button.getAttribute('data-amount') === 'other') {
                    customAmountContainer.classList.remove('hidden');
                    donationAmountInput.value = '';
                    customAmountInput.required = true;
                } else {
                    customAmountContainer.classList.add('hidden');
                    customAmountInput.required = false;
                    donationAmountInput.value = button.getAttribute('data-amount');
                }
            });
        });

        // Update donation amount when custom value is entered
        customAmountInput.addEventListener('input', () => {
            donationAmountInput.value = customAmountInput.value;
        });

        // Set URLs dynamically on form submission
        function setUrls() {
            const donorName = document.getElementById('donorName').value;
            const donorEmail = document.getElementById('donorEmail').value;
            const donorPhone = document.getElementById('donorPhone').value;
            const amount = donationAmountInput.value || customAmountInput.value;
            const returnUrl = `${window.location.origin}/CharityDonations/DonateProcessServlet?name=${encodeURIComponent(donorName)}&email=${encodeURIComponent(donorEmail)}&amount=${encodeURIComponent(amount)}&phone=${encodeURIComponent(donorPhone)}&status=success`;
            const cancelUrl = `${window.location.origin}/CharityDonations/DonateProcessServlet?status=failed`;
            document.querySelector('input[name="return_url"]').value = returnUrl;
            console.log(document.querySelector("form"))
            document.querySelector('input[name="cancel_url"]').value = cancelUrl;
        }