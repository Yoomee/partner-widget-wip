require_dependency "partner_widget/application_controller"

module PartnerWidget
  class PollsController < ApplicationController
    before_action :set_poll, only: [:show, :edit, :update, :destroy]

    # GET /polls
    def index
      @polls = Poll.all
    end

    # GET /polls/1
    def show
    end

    # GET /polls/new
    def new
      @poll = Poll.new
    end

    # GET /polls/1/edit
    def edit
    end

    # POST /polls
    def create
      @poll = Poll.new(poll_params)

      if @poll.save
        redirect_to @poll, notice: 'Poll was successfully created.'
      else
        render action: 'new'
      end
    end

    # PATCH/PUT /polls/1
    def update
      if @poll.update(poll_params)
        redirect_to @poll, notice: 'Poll was successfully updated.'
      else
        render action: 'edit'
      end
    end

    # DELETE /polls/1
    def destroy
      @poll.destroy
      redirect_to polls_url, notice: 'Poll was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_poll
        @poll = Poll.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def poll_params
        params.require(:poll).permit(:name, :question, :answer_1, :message_1, :answer_2, :answer_3, :message_3, :answer_4, :message_4, :color_1, :color_2, :color_3, :font)
      end
  end
end
