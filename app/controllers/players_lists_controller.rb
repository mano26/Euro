class PlayersListsController < ApplicationController
  # GET /players_lists
  # GET /players_lists.json
  def index
    @players_lists = PlayersList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @players_lists }
    end
  end

  # GET /players_lists/1
  # GET /players_lists/1.json
  def show
    @players_list = PlayersList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @players_list }
    end
  end

  # GET /players_lists/new
  # GET /players_lists/new.json
  def new
    @players_list = PlayersList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @players_list }
    end
  end

  # GET /players_lists/1/edit
  def edit
    @players_list = PlayersList.find(params[:id])
  end

  # POST /players_lists
  # POST /players_lists.json
  def create
    @players_list = PlayersList.new(params[:players_list])

    respond_to do |format|
      if @players_list.save
        format.html { redirect_to @players_list, notice: 'Players list was successfully created.' }
        format.json { render json: @players_list, status: :created, location: @players_list }
      else
        format.html { render action: "new" }
        format.json { render json: @players_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /players_lists/1
  # PUT /players_lists/1.json
  def update
    @players_list = PlayersList.find(params[:id])

    respond_to do |format|
      if @players_list.update_attributes(params[:players_list])
        format.html { redirect_to @players_list, notice: 'Players list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @players_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players_lists/1
  # DELETE /players_lists/1.json
  def destroy
    @players_list = PlayersList.find(params[:id])
    @players_list.destroy

    respond_to do |format|
      format.html { redirect_to players_lists_url }
      format.json { head :no_content }
    end
  end
end
