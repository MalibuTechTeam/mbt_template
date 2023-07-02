$(document).ready(function () {

    function handleDisplay(b) {
      if (b) {
        setTimeout(function () {
        //   $("").fadeIn(350);
        }, 100);
      } else {
        // $("").fadeOut(350);
      }
    }
  
    window.addEventListener("message", function (event) {
      var item = event.data;
      if (item !== undefined && item.action === "UI") {
        if (item.display === true) {
          console.log(typeof item.payload);
        } else if (item.display === false) {
        }
      }
    });
  
    $(document).on("keydown", function (e) {
      if (e.code == "Escape") {
        handleDisplay(false);
        $.post("https://mbt_template/closeUI", JSON.stringify({}));
      }
    });
  });