class ClientCardsController < ApplicationController
  before_action :set_client_card, only: [:show, :edit, :update, :destroy]

  # GET /client_cards
  # GET /client_cards.json
  def index
    @client_cards = ClientCard.all
  end

  # GET /client_cards/1
  # GET /client_cards/1.json
  def show
  end

  # GET /client_cards/new
  def new
    @client_card = ClientCard.new
  end

  # GET /client_cards/1/edit
  def edit
  end

  # POST /client_cards
  # POST /client_cards.json
  def create
    @client_card = ClientCard.new(client_card_params)

    respond_to do |format|
      if @client_card.save
        format.html { redirect_to @client_card, notice: 'Client card was successfully created.' }
        format.json { render :show, status: :created, location: @client_card }
      else
        format.html { render :new }
        format.json { render json: @client_card.errors, status: :unprocessable_entity }
      end
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
    def set_client_card
      @client_card = ClientCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_card_params
      params.require(:client_card).permit(:title, :user_id, :many, :description, :deadlines, :contract_id, :action_id)
    end
end
