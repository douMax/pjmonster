class VendorsController < ApplicationController
  before_action :fetch_vendor, exception:[:new, :create, :index]

  def fetch_vendor
    @vendor = Vendor.find(params[:id])
  end

  def index
  end

  def new
  end

  def edit
  end

  def show
  end
end
