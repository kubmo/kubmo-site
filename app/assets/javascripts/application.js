// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require bootstrap
//= require_tree .

$(document).ready(function () {
  $("nav a[data-scroll=true]").bind("click", function (event) {
    if (window.location.pathname !== "/") return;
    event.preventDefault();
    var url = $(this).attr("href");
    var target = url.substring(url.indexOf('#'));
    $("html, body").stop().animate({
      scrollBottom: $(target).offset().bottom,
      scrollTop: $(target).offset().top - 100
    }, 600);
  });
  $('#arrow_1').click(function () {
    var src = '//www.youtube.com/embed/99TdS8qXnrg';
    $('#myModal').modal('show');
    $('#myModal iframe').attr('src', src);
  });

  $('#arrow_2').click(function () {
    var src = '//www.youtube.com/embed/RQ1aWW-NNtw';
    $('#myModal').modal('show');
    $('#myModal iframe').attr('src', src);
  });

  $('#arrow_3').click(function () {
    var src = '//www.youtube.com/embed/UO4M-yLN_r0';
    $('#myModal').modal('show');
    $('#myModal iframe').attr('src', src);
  });

  $('#myModal button').click(function () {
    $('#myModal iframe').removeAttr('src');
  });
})