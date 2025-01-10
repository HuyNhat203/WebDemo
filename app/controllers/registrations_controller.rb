class RegistrationsController < ApplicationController
    allow_unauthenticated_access only: %i[ new create ]

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save   
          redirect_to root_path, notice: 'User created successfully'
        else
          render 'new'
        end
      end
end