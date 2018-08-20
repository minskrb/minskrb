import "./announcement.scss";

$(document).ready(() => {
  $(".announcement-item__link").on("click", function(event) {
    event.preventDefault();
    const id = $(this).attr("href");
    $("body,html").animate({ scrollTop: $(id).offset().top }, 1500);
  });
});
