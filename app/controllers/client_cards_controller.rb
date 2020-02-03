class ClientCardsController < ApplicationController
  before_action :find_user, only: %i[create new index]
  before_action :find_client_card, only: %i[show edit update destroy index]

    rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_client_card_not_found

  # GET /client_cards
  # GET /client_cards.json
  def index
    @client_cards = @user.client_cards.all
  end

  # GET /client_cards/1
  # GET /client_cards/1.json
  def show
  end

  # GET /client_cards/new
  def new
    @client_card = @user.client_cards.new
  end

  # GET /client_cards/1/edit
  def edit
  end

  # POST /client_cards
  # POST /client_cards.json
  def create
    @client_card = @user.client_cards.new(client_card_params)
    if @client_card.save
      redirect_to root_url
    else
      render :new
    end
  end

  # PATCH/PUT /client_cards/1
  # PATCH/PUT /client_cards/1.json
  def update
    respond_to do |format|
      if @client_card.update(client_card_params)
        format.html { redirect_to @client_card, notice: 'Client card was successfully updated.' }
        format.json { render :show, status: :ok, location: @client_card }
      else
        format.html { render :edit }
        format.json { render json: @client_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_cards/1
  # DELETE /client_cards/1.json
  def destroy
    @client_card.destroy
    respond_to do |format|
      format.html { redirect_to client_cards_url, notice: 'Client card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # Never trust parameters from the scary internet, only allow the white list through.
    def client_card_params
      params.require(:client_card).permit(:title, :user_id, :many, :description, :deadlines, :contract_id, :action_id)
    end
    
    def find_user
      @user = User.find(params[:user_id])
    end

    def find_client_card
      @client_card = ClientCard.find(params[:user_id])
    end
end
