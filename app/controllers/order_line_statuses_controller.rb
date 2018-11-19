class OrderLineStatusesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    respond_to do |format|
      format.json do
        if rand > 0.5
          render(json: { foo: :bar })
        else
          render(json: { errors: :baz }, status: :bad_request)
        end
      end
    end
  end
end
