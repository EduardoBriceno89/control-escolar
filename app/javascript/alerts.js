document.addEventListener("DOMContentLoaded", function () {
  setTimeout(function () {
    var alerts = document.querySelector(".alert");
    alerts.forEach(function (alert) {
      alert.remove();
    });
  }, 5000);
});
