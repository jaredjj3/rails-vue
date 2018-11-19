class OrderLineStatusesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    path = File.join(Rails.root, "app", "controllers", "order_line_statuses.json")
    json = JSON.parse(File.read(path))
    status = json.fetch("order_line_statuses").sample

    respond_to do |format|
      format.json { render(json: status) }
    end
  end
end
