import "./events.scss";

$(document).ready(() => {
  let slideNow = 1;
  const slideCount = $(".slider-wrapper").children().length;
  let slideHight = 0;

  function slideUp() {
    if (slideNow !== 1) {
      slideHight = -$(".events-content").outerHeight() * (slideNow - 2);
      $(".slider-wrapper").css("transform", `translate(0, ${slideHight}px)`);
      slideNow -= 1;
    }
  }

  function slideDown() {
    if (slideNow !== slideCount) {
      slideHight = -$(".events-content").outerHeight() * slideNow;
      $(".slider-wrapper").css("transform", `translate(0, ${slideHight}px)`);
      slideNow += 1;
    }
  }

  function slideStart() {
    $(".slider-wrapper").css("transform", `translate(0, 0px)`);
    slideNow = 1;
  }

  function slideEnd() {
    slideHight = -$(".events-content").outerHeight() * (slideCount - 1);
    $(".slider-wrapper").css("transform", `translate(0, ${slideHight}px)`);
    slideNow = slideCount;
  }

  function slideNowShow() {
    $(".events-selector-count").text(`${slideNow}`);
  }

  $(".events-selector-scroll__up").on("click", () => {
    slideUp();
    slideNowShow();
  });

  $(".events-selector-scroll__down").on("click", () => {
    slideDown();
    slideNowShow();
  });

  $(".events-selector-scroll__up").dblclick(() => {
    slideStart();
  });

  $(".events-selector-scroll__down").dblclick(() => {
    slideEnd();
  });
});
