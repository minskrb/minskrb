import "./modal.scss";

$(document).ready(() => {
  $("#submit").on("click", () => {
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
