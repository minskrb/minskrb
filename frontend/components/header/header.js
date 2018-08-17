import "./header.scss";
import "./static/logo.svg";
import "./static/menu.svg";

$(document).ready(() => {
  function toggleResponsive() {
    $(".header").toggleClass("responsive");
  }

  const $menu = $(".burger");

  $menu.on("click", toggleResponsive);
});
