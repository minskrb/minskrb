import "./main.scss";

$(document).ready(() => {
  $("#to_event").on("click", function(event) {
    event.preventDefault();
    const id = $(this).attr("href");
    $("body,html").animate({ scrollTop: $(id).offset().top }, 1500);
  });
});
