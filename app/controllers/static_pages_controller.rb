class StaticPagesController < ApplicationController
  def root
    path = File.join(Rails.root, "app", "controllers", "order_line_statuses.json")
    @order_line_statuses = JSON.parse(File.read(path)).fetch("order_line_statuses")
  end
end
