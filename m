<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Wash Booking</title>
    <link rel="stylesheet" href="styles.css">
    <script src="script.js" defer></script>
</head>
<body>
    <header class="header">
        <div class="container">
            <img src="logo.png" alt="Car Wash Company Logo" class="logo">
            <nav class="nav">
                <a href="#step1" class="nav-link">Home</a>
                <a href="#services" class="nav-link">Services</a>
                <a href="#contact" class="nav-link">Contact</a>
            </nav>
        </div>
    </header>

    <main>
        <!-- Step 1: Enter WhatsApp Contact -->
        <section id="step1" class="section">
            <div class="container">
                <h1 class="section-title">Car Wash Booking</h1>
                <div class="form-group">
                    <label for="whatsappContact">WhatsApp Contact Number</label>
                    <input type="text" id="whatsappContact" placeholder="Enter WhatsApp contact number">
                </div>
                <button class="btn" onclick="goToStep2()">Next: Verify Contact</button>
            </div>
        </section>

        <!-- Step 2: Verify OTP -->
        <section id="step2" class="section" style="display: none;">
            <div class="container">
                <div class="form-group">
                    <label for="otp">Enter OTP</label>
                    <input type="text" id="otp" placeholder="Enter OTP received on WhatsApp">
                </div>
                <button class="btn" onclick="goToStep3()">Next: Select Service</button>
            </div>
        </section>

        <!-- Step 3: Service Selection -->
        <section id="step3" class="section" style="display: none;">
            <div class="container">
                <div class="form-group">
                    <label for="service">Select Service</label>
                    <select id="service">
                        <option value="luxury">Luxury Wash</option>
                        <option value="standard">Standard Wash</option>
                    </select>
                </div>
                <button class="btn" onclick="goToStep4()">Next: Enter Vehicle Details</button>
            </div>
        </section>

        <!-- Step 4: Enter Vehicle and Parking Details -->
        <section id="step4" class="section" style="display: none;">
            <div class="container">
                <div class="form-group">
                    <label for="carMake">Car Make</label>
                    <input type="text" id="carMake" placeholder="Enter car make">
                </div>
                <div class="form-group">
                    <label for="licensePlate">License Plate Number</label>
                    <input type="text" id="licensePlate" placeholder="Enter license plate number">
                </div>
                <div class="form-group">
                    <label for="carColor">Car Color</label>
                    <input type="text" id="carColor" placeholder="Enter car color">
                </div>
                <div class="form-group">
                    <label for="parkingSpot">Parking Spot Number</label>
                    <input type="text" id="parkingSpot" placeholder="Enter parking spot number">
                </div>
                <button class="btn" onclick="goToStep5()">Next: Choose Time Slot</button>
            </div>
        </section>

        <!-- Step 5: Choose Time Slot -->
        <section id="step5" class="section" style="display: none;">
            <div class="container">
                <div class="form-group">
                    <label for="timeSlot">Available Time Slots</label>
                    <select id="timeSlot">
                        <option value="2pm">2:00 PM</option>
                        <option value="3pm">3:00 PM</option>
                    </select>
                </div>
                <button class="btn" onclick="goToStep6()">Next: Review Booking</button>
            </div>
        </section>

        <!-- Step 6: Review Booking -->
        <section id="step6" class="section" style="display: none;">
            <div class="container">
                <h2>Booking Summary</h2>
                <p id="bookingSummary"></p>
                <button class="btn" onclick="goToStep7()">Next: Payment</button>
            </div>
        </section>

        <!-- Step 7: Payment -->
        <section id="step7" class="section" style="display: none;">
            <div class="container">
                <div class="form-group">
                    <label for="paymentMethod">Payment Method</label>
                    <select id="paymentMethod">
                        <option value="visa">Visa</option>
                        <option value="mastercard">Mastercard</option>
                        <option value="applePay">Apple Pay</option>
                    </select>
                </div>
                <button class="btn" onclick="goToStep8()">Next: Confirmation</button>
            </div>
        </section>

        <!-- Step 8: Confirmation -->
        <section id="step8" class="section" style="display: none;">
            <div class="container">
                <h2>Booking Confirmation</h2>
                <p>Your booking has been confirmed. You will receive notifications with updates.</p>
            </div>
        </section>
    </main>

    <footer class="footer">
        <div class="container">
            <p>&copy; 2024 Car Wash Company</p>
        </div>
    </footer>
</body>
</html>
/* styles.css */
body {
    font-family: 'Open Sans', sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f9f9f9;
    color: #333;
}

.container {
    width: 90%;
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
    box-sizing: border-box;
}

.header {
    background-color: #4a90e2;
    padding: 20px 0;
}

.header .container {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.header .logo {
    width: 150px;
}

.header .nav {
    display: flex;
    gap: 20px;
}

.header .nav-link {
    color: #fff;
    text-decoration: none;
    font-size: 16px;
}

.header .nav-link:hover {
    text-decoration: underline;
}

.section {
    background-color: #fff;
    margin: 20px 0;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.section-title {
    font-size: 24px;
    margin-bottom: 20px;
}

.form-group {
    margin-bottom: 15px;
}

.form-group label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
}

.form-group input, .form-group select {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}

.btn {
    display: inline-block;
    padding: 10px 20px;
    background-color: #4a90e2;
    color: #fff;
    text-align: center;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    margin-top: 10px;
}

.btn:hover {
    background-color: #357abd;
}

.footer {
    background-color: #4a90e2;
    padding: 20px 0;
    text-align: center;
    color: #fff;
}
// script.js
function goToStep2() {
    document.getElementById('step1').style.display = 'none';
    document.getElementById('step2').style.display = 'block';
}

function goToStep3() {
    document.getElementById('step2').style.display = 'none';
    document.getElementById('step3').style.display = 'block';
}

function goToStep4() {
    document.getElementById('step3').style.display = 'none';
    document.getElementById('step4').style.display = 'block';
}

function goToStep5() {
    document.getElementById('step4').style.display = 'none';
    document.getElementById('step5').style.display = 'block';
}

function goToStep6() {
    document.getElementById('step5').style.display = 'none';
    document.getElementById('step6').style.display = 'block';
    document.getElementById('bookingSummary').innerText = 
        'Service: ' + document.getElementById('service').value + '\n' +
        'Car Make: ' + document.getElementById('carMake').value + '\n' +
        'License Plate: ' + document.getElementById('licensePlate').value + '\n' +
        'Car Color: ' + document.getElementById('carColor').value + '\n' +
        'Parking Spot: ' + document.getElementById('parkingSpot').value + '\n' +
        'Time Slot: ' + document.getElementById('timeSlot').value;
}

function goToStep7() {
    document.getElementById('step6').style.display = 'none';
    document.getElementById('step7').style.display = 'block';
}

function goToStep8() {
    document.getElementById('step7').style.display = 'none';
    document.getElementById('step8').style.display = 'block';
    // Code to send confirmation via WhatsApp and update server goes here
}
