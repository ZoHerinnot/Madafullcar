Trestle.resource(:cars) do
  menu do
    item :cars, icon: "fa fa-car"
  end

  # Customize the table columns shown on the index view.
  #
   table do
     column :mark
		 column :option
		 column :status
		 column :price
     column :created_at, align: :center
     actions
   end

  # Customize the form fields shown on the new/edit views.
  #
  # form do |car|
  #   text_field :name
  #
  #   row do
  #     col(xs: 6) { datetime_field :updated_at }
  #     col(xs: 6) { datetime_field :created_at }
  #   end
  # end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:car).permit(:name, ...)
  # end
	search do |query|
    if query
      Car.where(mark_id:Mark.find_by(name:"#{query}"))
    else
      Car.all
    end
  end
end
