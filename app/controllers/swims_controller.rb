class SwimsController < ApplicationController
  # GET /swims
  # GET /swims.json
  def index
    @swims = Swim.page params[:page]

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @swims }
    end
  end

  # GET /swims/1
  # GET /swims/1.json
  def show
    @swim = Swim.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @swim }
    end
  end

  # GET /swims/new
  # GET /swims/new.json
  def new
    @swim = Swim.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @swim }
    end
  end

  # GET /swims/1/edit
  def edit
    @swim = Swim.find(params[:id])
  end

  # POST /swims
  # POST /swims.json
  def create
    @swim = Swim.new(params[:swim])

    respond_to do |format|
      if @swim.save
        format.html { redirect_to @swim, :notice => 'Swim was successfully created.' }
        format.json { render :json => @swim, :status => :created, :location => @swim }
      else
        format.html { render :action => "new" }
        format.json { render :json => @swim.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /swims/1
  # PUT /swims/1.json
  def update
    @swim = Swim.find(params[:id])

    respond_to do |format|
      if @swim.update_attributes(params[:swim])
        format.html { redirect_to @swim, :notice => 'Swim was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @swim.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /swims/1
  # DELETE /swims/1.json
  def destroy
    @swim = Swim.find(params[:id])
    @swim.destroy

    respond_to do |format|
      format.html { redirect_to swims_url }
      format.json { head :no_content }
    end
  end
end
