class GastroController < ApplicationController


    def available_tables
        all = Table.all
        render json: Table.all, :include => {:reservation_tables => {include: :reservation}}
        # user.as_json(:include => { :posts => { :include => { :comments => { :only => :body } },
    end

end
