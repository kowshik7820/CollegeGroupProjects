const container = document.querySelector(".container");
const seats = document.querySelectorAll(".row .seat:not(.occupied)");
const count = document.getElementById("count");
const total = document.getElementById("total");
const movie = document.getElementById("movie");

const ticketPrice = +movie.getAttribute("data-price");

// Function to update selected seats count and total price
function updateSelectedCount() {
  const selectedSeats = document.querySelectorAll(".row .seat.selected");
  const selectedSeatsCount = selectedSeats.length;

  count.innerText = selectedSeatsCount;
  total.innerText = (selectedSeatsCount * ticketPrice).toFixed(2);
}

// Event listener for seat selection
container.addEventListener("click", (e) => {
  if (e.target.classList.contains("seat") && !e.target.classList.contains("occupied")) {
    e.target.classList.toggle("selected");
    updateSelectedCount();
  }
});

// Event listener for "Pay" button
document.getElementById("pay").addEventListener("click", () => {
  const selectedSeatsCount = document.querySelectorAll(".row .seat.selected").length;

  if (selectedSeatsCount > 0) {
    const totalAmount = selectedSeatsCount * ticketPrice;
    const discount = totalAmount * 0.1; // 10% discount
    const discountedAmount = totalAmount - discount;

    // Send booking data to the servlet
    fetch("http://localhost:1012/Movieticketsproject/hariharaveramallu", {
      method: "POST",
      headers: { "Content-Type": "application/x-www-form-urlencoded" },
      body: new URLSearchParams({
        selectedSeatsCount: selectedSeatsCount, // Fix: Pass the correct count
        discountedAmount: discountedAmount.toFixed(2), // Fix: Ensure it's calculated before sending
      }),
    })
      .then(response => response.text())
      .then(message => {
        alert(message); // Show success message

        // Display Thank You message after successful booking
        const thankYouMessage = document.createElement("div");
        thankYouMessage.style.backgroundColor = "#f0f8ff";
        thankYouMessage.style.border = "1px solid #4caf50";
        thankYouMessage.style.borderRadius = "10px";
        thankYouMessage.style.padding = "20px";
        thankYouMessage.style.marginTop = "20px";
        thankYouMessage.style.boxShadow = "0 4px 8px rgba(0, 0, 0, 0.9)";
        thankYouMessage.style.textAlign = "center";
        thankYouMessage.style.fontFamily = "Arial, sans-serif";

        thankYouMessage.innerHTML = `
          <h2 style="color: #4caf50;">Booking Confirmed!</h2>
          <p style="font-size: 18px;">Seats Booked: <strong>${selectedSeatsCount}</strong></p>
          <p style="font-size: 18px;">Original Amount: ₹${totalAmount.toFixed(2)}</p>
          <p style="font-size: 18px;">Festival Discount (10%): ₹${discount.toFixed(2)}</p>
          <p style="font-size: 18px;">Amount Paid: <strong>₹${discountedAmount.toFixed(2)}</strong></p>
        `;

        document.body.appendChild(thankYouMessage);
        container.style.display = "none"; // Hide seat selection after booking
      })
      .catch(error => {
        console.error("Error:", error);
        alert("Booking failed. Please try again.");
      });

  } else {
    // Error message if no seats are selected
    const errorMessage = document.createElement("div");
    errorMessage.style.backgroundColor = "#f8d7da";
    errorMessage.style.color = "#721c24";
    errorMessage.style.border = "1px solid #f5c6cb";
    errorMessage.style.borderRadius = "5px";
    errorMessage.style.padding = "10px";
    errorMessage.style.marginTop = "10px";
    errorMessage.style.textAlign = "center";
    errorMessage.textContent = "Please select at least one seat before paying!";
    container.parentElement.insertBefore(errorMessage, container);

    setTimeout(() => {
      errorMessage.remove();
    }, 3000);
  }
});
