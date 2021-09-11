class GastroController < ApplicationController


    def available_tables
        all = Table.all
        for table in all
            pp table.reservation_tables
            #.where("reservations.start_time BETWEEN ? AND ?", DateTime.now.beginning_of_day, DateTime.now.end_of_day).all
        end
        render json: Table.all, :include => {:reservation_tables => {include: :reservation}}
        # user.as_json(:include => { :posts => { :include => { :comments => { :only => :body } },
    end

end
