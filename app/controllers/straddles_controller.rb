class StraddlesController < ApplicationController
  # GET /straddles
  # GET /straddles.json
  def index
    @straddles = Straddle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @straddles }
    end
  end

  # GET /straddles/1
  # GET /straddles/1.json
  def show
    @straddle = Straddle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @straddle }
    end
  end

  # GET /straddles/new
  # GET /straddles/new.json
  def new
    @straddle = Straddle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @straddle }
    end
  end

  # GET /straddles/1/edit
  def edit
    @straddle = Straddle.find(params[:id])
  end

  # POST /straddles
  # POST /straddles.json
  def create
    @straddle = Straddle.new(params[:straddle])

    respond_to do |format|
      if @straddle.save
        format.html { redirect_to @straddle, notice: 'Straddle was successfully created.' }
        format.json { render json: @straddle, status: :created, location: @straddle }
      else
        format.html { render action: "new" }
        format.json { render json: @straddle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /straddles/1
  # PUT /straddles/1.json
  def update
    @straddle = Straddle.find(params[:id])

    respond_to do |format|
      if @straddle.update_attributes(params[:straddle])
        format.html { redirect_to @straddle, notice: 'Straddle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @straddle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /straddles/1
  # DELETE /straddles/1.json
  def destroy
    @straddle = Straddle.find(params[:id])
    @straddle.destroy

    respond_to do |format|
      format.html { redirect_to straddles_url }
      format.json { head :no_content }
    end
  end
end
