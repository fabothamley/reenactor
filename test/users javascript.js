/* global $ */
//
// used when join form clicks submit
// saasapp/app/views/devise/registrations/new.html.erb
//
//Document ready.
$(document).ready(function() {
  var theForm = $('#join_form');
  var submitBtn = $('#form-signup-btn');
  //When user clicks form submit btn,
  submitBtn.click(function(event){
    //prevent default submission behavior.
    event.preventDefault();
    submitBtn.val("Processing").prop('disabled', true);
    //Collect the form fieldscredit card fields.
    // var contents = $('#contents').get(0);
    // document.getElementById('contents');
    var fname = document.getElementById('user_first_name'),
        lname = $('#last_code').val(),
        a_line_1 = $('#address_line_1').val(),
        a_pcode = $('#address_postcode').val(),
        a_age = $('#age').val();
    var error = false;
    alert(fname);
    alert(fname.length);
    if (fname == null) {
      error = true;
      alert('First Name missing or needs to be more than 1 character');
    }
    else {
      if (fname.replace(/ /,'').length < 2) {
        error = true;
        alert('First Name missing or needs to be more than 1 character');
      }  
    }
    
    //Validate length of First name
    //myStr.replace(/ /g,'').length; // Returns 53
    //if ($(textId).val().length < 4) { err; }
    //if (first_name.length < 1) {
    //  $('#first_name').after('<span class="error">This field is required</span>');
    //}
    //
    //if (last_name.length < 1) {
    //  $('#last_name').after('<span class="error">This field is required</span>');
    //}
    //var res = str.replace("Microsoft", "W3Schools");
    //Validate length of First name
    //if (fname.replace(/ /,'').length < 2) {
    if (fname.replace(/ /,'').length < 2) {
      error = true;
      alert('First Name missing or needs to be more than 1 character');
    }
    //Validate length of Last name
    if (lname.replace(/ /g,'').length < 2) {
      error = true;
      alert('Last Name missing or needs to be more than 1 character');
    }
    //Validate address line 1.
    if (a_line_1.replace(/ /g,'').length < 1) {
      error = true;
      alert('Address Line 1 missing cannot be blank');
    }
    //Validate address postcode.
    if (a_pcode.replace(/ /g,'').length < 5) {
      error = true;
      alert('Address Postcode missing cannot be blank');
    }
    //Validate Age 18 or over.
    if (a_age.val < 18) {
      error = true;
      alert('You need to be at least 18');
    }
    //Validate Age not blank.
    if (a_age.replace(/ /g,'').length < 2) {
      error = true;
      alert('Age missing cannot be blank');
    }
    if (error) {
      //If there are card errors, don't send to Stripe.
      submitBtn.prop('disabled', false).val("Sign Up");
    } else {
      //Send the card info to Stripe.
      theForm.get(0).submit();
    }
    return false;
  });
});