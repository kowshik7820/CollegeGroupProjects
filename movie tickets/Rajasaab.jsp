<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rajasaab</title>
<style>
      body {
        font-family: Arial, sans-serif;
        background-color: #87cefa;
        margin: 0;
        padding: 0;
      }

      .main-wrapper {
        display: flex;
        align-items: flex-start;
        justify-content: center;
        margin: 20px auto;
        max-width: 1200px;
      }

      .poster-container {
        flex: 0 0 30%;
        margin-right: 20px;
        text-align: center;
      }

      .poster {
        width: 100%;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
      }

      .container {
        flex: 0 0 65%;
        text-align: center;
        background-color: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
      }

      h1 {
        margin-bottom: 20px;
      }

      .screen {
        background-color: #fff;
        height: 100px;
        width: 100%;
        margin-bottom: 15px;
        box-shadow: 0 3px 10px rgba(0, 0, 0, 0.7);
        display: flex;
        justify-content: center;
        align-items: center;
        text-align: center;
      }

      .row {
        display: flex;
        justify-content: center;
        margin-bottom: 10px;
      }

      .seat {
        background-color: #444451;
        height: 30px;
        width: 30px;
        margin: 5px;
        border-radius: 5px;
        cursor: pointer;
      }

      .seat.selected {
        background-color: #6feaf6;
      }

      .seat.occupied {
        background-color: #fff;
        cursor: not-allowed;
      }

      .btn {
        padding: 10px 20px;
        margin: 10px;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease;
      }

      .btn-cancel {
        background-color: #f44336;
        color: white;
      }

      .btn-cancel:hover {
        background-color: #d32f2f;
        transform: scale(1.05);
      }

      .btn-pay {
        background-color: #4caf50;
        color: white;
      }

      .btn-pay:hover {
        background-color: #388e3c;
        transform: scale(1.05);
      }

      .btn:hover {
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
      }

      .text {
        margin-top: 30px;
        font-size: 18px;
      }

      .movie-info {
        margin-top: 10px;
        text-align: center;
        font-size: 18px;
      }

      .movie-info p {
        margin: 5px;
        font-size: 16px;
        font-weight: bold;
      }

      .movie-info .movie-title {
        font-size: 22px;
        color: #333;
        font-weight: bold;
        margin-bottom: 10px;
      }

      .movie-info .actor-director {
        font-size: 18px;
        color: #777;
        margin-bottom: 5px;
      }
      .movie-info .movie-music {
        font-size: 18px;
        color: #777;
        margin-bottom: 5px;
      }

      #thank-you-message {
        text-align: center;
        background-color: #f1f1f1;
        padding: 20px;
        border-radius: 10px;
        margin-top: 20px;
      }
    </style>
</head>
<body>
<div class="main-wrapper">
      <!-- Poster Section -->
      <div class="poster-container">
        <img
          src="https://images.news18.com/ibnlive/uploads/2024/01/whatsapp-image-2024-01-15-at-7.28.13-am-2024-01-acb5bf028cc8e16aa679e980f768bbbf.jpeg"
          alt="Rajasaab"
          class="poster"
        />
        <div class="movie-info">
          <p class="movie-title">Rajasaab</p>
          <p class="actor-director">Actor: Prabhas</p>
          <p class="actor-director">Director: Maruthi Dasari</p>
          <p class="movie-music">Music by: Thaman S.</p>
        </div>
      </div>

      <div class="container">
        <h1>Movie Seat Booking</h1>
        <div class="screen">Screen</div>
        <div class="movie" id="movie" data-price="1000">Rajasaab (₹550)</div>

        <div class="row">
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
        </div>
        <div class="row">
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
        </div>
        <div class="row">
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
        </div>
        <div class="row">
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
        </div>
        <div class="row">
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
        </div>
        <div class="row">
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
          <div class="seat"></div>
        </div>

        <div>
          <button id="cancel" class="btn btn-cancel">Cancel</button>
          <button id="pay" class="btn btn-pay">Pay</button>
        </div>

        <p class="text">
          You have selected <span id="count">0</span> seats for a price of ₹
          <span id="total">0</span>.
        </p>
      </div>
    </div>

    <!-- Thank You Message Section -->
    <div id="thank-you-message" style="display: none">
      <h2>Thank you for booking!</h2>
      <p>Your booking has been confirmed. Enjoy the movie!</p>
    </div>
    
    <script src="script.js"></script>
</body>
</html>