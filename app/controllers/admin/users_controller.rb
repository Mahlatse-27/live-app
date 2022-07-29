class Admin::UsersController < ApplicationController
  def index
    @data = GetData.new().call("users")
  end

  def new
  end

  def show
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

end
