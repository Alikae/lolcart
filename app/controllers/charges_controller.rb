class ChargesController < ApplicationController
before_action :amount_to_be_charged,  :set_description,  :authenticate_user!
    
    def  thanks
    end
    
    def  new
    end
    
      
    
    def  create
    @amount  =  500
    customer  =  StripeTool.create_customer(email: params[:stripeEmail],
    stripe_token: params[:stripeToken])
    charge  =  StripeTool.create_charge(customer_id: customer.id,
    amount: @amount,
    description: @description)
    
    redirect_to thanks_path
    rescue  Stripe::CardError  => e
    flash[:error]  =  e.message
    redirect_to new_charge_path
    end
    
      
    
    private
    
      
    
    def  amount_to_be_charged
    @amount  =  current_user.cart.compute_total
    end
    
      
    
    def  set_description
    @description  =  "Meeeooooowwwwwwww !"
    end
    
end
