$(function () {
  var $body = $('body');
  $('#js__sideMenuBtn').on('click', function () {
    $body.toggleClass('side_open');
    $('#js__overlay').on('click', function () {
      $body.removeClass('side_open');
    });
  });
});
