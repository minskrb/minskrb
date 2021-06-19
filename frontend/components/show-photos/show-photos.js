import "./show-photos.scss";

$(document).ready(() => {
  const imageCount = $(".show-photos-content__photos").children();

  $.each(imageCount, (index, element) => {
    const modal = document.getElementById("imageModal");

    const img = document.getElementById(element.id);
    const modalImg = document.getElementById("img");

    const span = document.getElementsByClassName("close")[0];

    img.onclick = function () {
      modal.style.display = "flex";
      modalImg.src = this.src;
    };

    span.onclick = function () {
      modal.style.display = "none";
    };
  });
});
