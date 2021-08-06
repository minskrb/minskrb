import "./announcement.scss";

$(document).ready(() => {
  $(".announcement-item__link").on("click", function (event) {
    event.preventDefault();
    const link = $(this).attr("href");
    $("body,html").animate({ scrollTop: $(link).offset().top }, 1500);
  });
});
