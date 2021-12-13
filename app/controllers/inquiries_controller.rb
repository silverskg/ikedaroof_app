class InquiriesController < ApplicationController
  skip_before_action :authenticate_user!
  def new
  end

  def confirm
  end

  def thanks
  end
end
