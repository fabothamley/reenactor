/* global $ */
$(document).ready(function() {
  $("#join_form").submit(function (e) {
  e.preventDefault();
  $("#join_form").attr("disabled", true);
  //$("#join_form").val("Click Paypal");
  return true;
  })
});