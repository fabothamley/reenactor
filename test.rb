hashofnamesold_format = { :first_name => "John", :last_name => "Doe", :email => "a@b.com "}
hashofnamesnew = { first_name: "John", last_name: "Doe", email: "a@b.com "}

print hashofnamesold_format
print "\n"
puts hashofnamesnew

# all keys
puts hashofnamesnew.keys
# all values
puts hashofnamesnew.values

puts hashofnamesnew[:first_name]
puts hashofnamesnew[:last_name]

#User.find(current_user.id).id

user = {
"email"=>"test14@example.com", 
"password"=>"[FILTERED]", 
"password_confirmation"=>"[FILTERED]", 
"first_name"=>"", 
"last_name"=>"", 
"address_line_1"=>"", 
"address_line_2"=>"", 
"address_line_3"=>"", 
"address_town"=>"", 
"address_county"=>"", 
"address_postcode"=>"", 
"age"=>"28", 
"member_start_date"=>"2020-06-07", 
"member_expiry_date"=>"2020-06-14"
}

puts user

logger.debug
@user.inspect
self.inspect
<%= debug(params) %>

<form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="R384TXU9BPHYJ">
<input type="image" src="https://www.sandbox.paypal.com/en_US/GB/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal – The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.sandbox.paypal.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>





<div id="paypal-button-container"></div>
      <script src="https://www.paypal.com/sdk/js?client-id=sb&currency=GBP" data-sdk-integration-source="button-factory"></script>
      <script>
        paypal.Buttons({
            style: {
                shape: 'pill',
                color: 'blue',
                layout: 'vertical',
                label: 'pay',
                
            },
            createOrder: function(data, actions) {
                return actions.order.create({
                    purchase_units: [{
                        amount: {
                            value: '40'
                        }
                    }]
                });
            },
            onApprove: function(data, actions) {
                return actions.order.capture().then(function(details) {
                    alert('Transaction completed by ' + details.payer.name.given_name + '!');
                });
            }
        }).render('#paypal-button-container');
      </script>