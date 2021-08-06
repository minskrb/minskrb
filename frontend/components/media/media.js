import "./media.scss";

$(document).ready(() => {
  $(".to_contact").on("click", function (event) {
    event.preventDefault();
    const link = $(this).attr("href");
    $("body,html").animate({ scrollTop: $(link).offset().top }, 1500);
  });
});
