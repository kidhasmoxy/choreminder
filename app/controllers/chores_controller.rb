class ChoresController < ApplicationController
  def index
    @household = Household.find(params[:household_id])
    @chores = @household.chores(:all)

    respond_to do |format|
      format.html
      format.xml  { render :xml => @chores }
    end
  end

  def show
    @chore = Chore.find(params[:id])

    respond_to do |format|
      format.html
      format.xml  { render :xml => @chore }
    end
  end

  def new
    @household = Household.find(params[:household_id])
    @chore = @household.chores.new

    respond_to do |format|
      format.html
      format.xml  { render :xml => @chore }
    end
  end

  def edit
    @chore = Chore.find(params[:id])
  end

  def create
    @household = Household.find(params[:household_id])
    @chore = @household.chores.new(params[:chore])

    respond_to do |format|
      if @chore.save
        flash[:success] = 'Chore was successfully created.'
        format.html { redirect_to(@chore) }
        format.xml  { render :xml => @chore, :status => :created, :location => @chore }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @chore.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @chore = Chore.find(params[:id])

    respond_to do |format|
      if @chore.update_attributes(params[:chore])
        flash[:success] = 'Chore was successfully updated.'
        format.html { redirect_to(@chore) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @chore.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @chore = Chore.find(params[:id])
    @chore.destroy
    flash[:notice] = 'Chore deleted.'
    respond_to do |format|
      format.html { redirect_to(household_chores_url(@chore.household_id)) }
      format.xml  { head :ok }
    end
  end
end
