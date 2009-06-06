class HouseholdsController < ApplicationController
  def index
    @households = Household.find(:all)

    respond_to do |format|
      format.html
      format.xml  { render :xml => @households }
    end
  end

  def show
    @household = Household.find(params[:id])

    respond_to do |format|
      format.html
      format.xml  { render :xml => @household }
    end
  end

  def new
    @household = Household.new

    respond_to do |format|
      format.html
      format.xml  { render :xml => @household }
    end
  end

  def edit
    @household = Household.find(params[:id])
  end

  def create
    @household = Household.new(params[:household])

    respond_to do |format|
      if @household.save
        flash[:success] = 'Household was successfully created.'
        format.html { redirect_to(@household) }
        format.xml  { render :xml => @household, :status => :created, :location => @household }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @household.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @household = Household.find(params[:id])

    respond_to do |format|
      if @household.update_attributes(params[:household])
        flash[:success] = 'Household was successfully updated.'
        format.html { redirect_to(@household) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @household.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @household = Household.find(params[:id])
    @household.destroy
    flash[:notice] = 'Household deleted.'
    respond_to do |format|
      format.html { redirect_to(households_url) }
      format.xml  { head :ok }
    end
  end
end
