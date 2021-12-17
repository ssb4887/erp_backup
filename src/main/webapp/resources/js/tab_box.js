$(function () {
  var current = 0;

  $("#box > label").click(function () {
    var i = $(this).index();

    $("#box > label").removeClass();
    $(this).addClass("on");
  });
});
