import "./modal.scss";

$(document).ready(() => {
  $("#contact_form").on("ajax:success", () => {
    $("#modal")
      .css("display", "flex")
      .delay(5000)
      .fadeOut("slow");
  });
  $("#modal").on("click", function() {
    $(this)
      .stop()
      .fadeOut("slow");
  });
});
