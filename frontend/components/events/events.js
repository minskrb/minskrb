import "./events.scss";

$(document).ready(() => {
  let slideNow = 1;
  const slideCount = $(".slider-wrapper").children().length;
  let slideHight = 0;

  function slideDown() {
    if (slideNow === slideCount || slideNow <= 0 || slideNow > slideCount) {
      $(".slide-wrapper").css("transform", "translate(0, 0)");
      slideNow = 1;
    } else {
      slideHight = -$(".events-content").outerHeight() * slideNow;
      $(".slider-wrapper").css("transform", `translate(0, ${slideHight}px)`);
      slideNow += 1;
    }
  }

  function slideUp() {
    if (slideNow === 1 || slideNow <= 0 || slideNow > slideCount) {
      slideHight = -$(".events-content").outerHeight() * (slideCount - 1);
      $(".slide-wrapper").css("transform", `translate(0, ${slideHight}px)`);
      slideNow = slideCount;
    } else {
      slideHight = -$(".events-content").outerHeight() * (slideNow - 2);
      $(".slider-wrapper").css("transform", `translate(0, ${slideHight}px)`);
      slideNow -= 1;
    }
  }

  $(".events-selector-scroll__up").on("click", () => {
    slideUp();
  });

  $(".events-selector-scroll__down").on("click", () => {
    slideDown();
  });
});
