import "./modal.scss";

$(document).ready(() => {
  $("#modal").on("click", function closeModal() {
    $(this)
      .stop()
      .fadeOut("slow");
  });
});
