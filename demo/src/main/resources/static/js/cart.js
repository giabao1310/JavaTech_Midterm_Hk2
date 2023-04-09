const removeBtns = document.querySelectorAll(".remove-item");
for (let i = 0; i < removeBtns.length; i++) {
  removeBtns[i].addEventListener("click", function() {
    this.parentNode.remove();
    updateTotal();
  });
}

function updateTotal() {
  const items = document.querySelectorAll(".cart-items li");
  let totalPrice = 0;
  for (let i = 0; i < items.length; i++) {
    const price = items[i].querySelector(".price").textContent;
    totalPrice += parseFloat(price.replace("$", ""));
  }
  const totalEl = document.querySelector(".total-price");
  totalEl.textContent = "$" + totalPrice.toFixed(2);
}

updateTotal();