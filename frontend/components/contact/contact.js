import "./contact.scss";

$(document).ready(() => {
  $("#contact_form").on("ajax:success", function openModal() {
    $(this).trigger("reset");
    $("#modal")
      .css("display", "flex")
      .delay(5000)
      .fadeOut("slow");
  });
});
