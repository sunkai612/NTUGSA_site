// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap/dropdown
//= require bootstrap/alert
//= require bootstrap/carousel
//= require bootstrap/transition
//= require bootstrap/collapse
//= require bootstrap/tab
//= require bootstrap/affix
//= require_tree .

$(document).ready(function () {
    $("#about").mouseover(function () {
      $('#about').text("About");
    });
    $("#about").mouseleave(function () {
      $('#about').text("關於研協");
    });
    $("#event").mouseover(function () {
      $('#event').text("Event");
    });
    $("#event").mouseleave(function () {
      $('#event').text("活動公告");
    });
    $("#record").mouseover(function () {
      $('#record').text("Record");
    });
    $("#record").mouseleave(function () {
      $('#record').text("會議紀錄");
    });
    $("#board").mouseover(function () {
      $('#board').text("Board");
    });
    $("#board").mouseleave(function () {
      $('#board').text("論壇");
    });
  });