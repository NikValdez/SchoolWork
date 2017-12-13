document.addEventListener('turbolinks:load', function () {
  $(".assignment-button").click(function(){
    $("#assignment-card").toggle();
 });
})