class GoldsController < ApplicationController
  def index
  end

  def create
  	@amount = 500

  customer = Stripe::Customer.create({
    email: params[:stripeEmail],
    source: params[:stripeToken],
  })

  charge = Stripe::Charge.create({
    customer: customer.id,
    amount: @amount,
    description: 'Rails Stripe customer',
    currency: 'eur',
  })
  Gold.create(gold:true,user_id:current_user.id)
  redirect_to abonnement_index_path

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to abonnement_path
  end

  def destroy
  	user = User.find(current_user.id).gold
  	user.destroy
  	redirect_to abonnement_index_path
  end
end
