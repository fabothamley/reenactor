/* global $ */
//
$(document).ready(function() {
    //When user clicks form submit btn,
    $("#join_form").submit(function (e) {
      e.preventDefault();
      $("#join_form").attr("disabled", true);
      $("#join_form").val("Click Paypal");
      return true;
    })
});