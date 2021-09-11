class GastroController < ApplicationController


    def available_tables
        all = Table.all
        render json: Table.all, :include => {:reservation_tables => {include: :reservation}}
        # user.as_json(:include => { :posts => { :include => { :comments => { :only => :body } },
    end

    def table_reservation
        ReservationTable.create(
            table_id: params[:table_id],
            reservation_id: params[:reservation_id]
        ).save
    end

end
