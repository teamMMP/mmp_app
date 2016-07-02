class UserProfsController < ApplicationController

  def new
    @userprof = UserProf.new
  end


  def edit
  	 @userprof = UserProf.find(params[:id])
  end

  def create
    @userprof = UserProf.new(userprof_params)

    respond_to do |format|
      if @userprof.save
        format.html { redirect_to @userprof, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @userprof }
      else
        format.html { render :new }
        format.json { render json: @userprof.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @userprof.update(userprof_params)
        format.html { redirect_to @userprof, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @userprof }
      else
        format.html { render :edit }
        format.json { render json: @userprof.errors, status: :unprocessable_entity }
      end
    end
  end

end
