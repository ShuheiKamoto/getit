class Test10sController < ApplicationController
  # GET /test10s
  # GET /test10s.json
  def index
    @test10s = Test10.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @test10s }
    end
  end

  # GET /test10s/1
  # GET /test10s/1.json
  def show
    @test10 = Test10.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @test10 }
    end
  end

  # GET /test10s/new
  # GET /test10s/new.json
  def new
    @test10 = Test10.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @test10 }
    end
  end

  # GET /test10s/1/edit
  def edit
    @test10 = Test10.find(params[:id])
  end

  # POST /test10s
  # POST /test10s.json
  def create
    @test10 = Test10.new(params[:test10])

    respond_to do |format|
      if @test10.save
        format.html { redirect_to @test10, notice: 'Test10 was successfully created.' }
        format.json { render json: @test10, status: :created, location: @test10 }
      else
        format.html { render action: "new" }
        format.json { render json: @test10.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /test10s/1
  # PUT /test10s/1.json
  def update
    @test10 = Test10.find(params[:id])

    respond_to do |format|
      if @test10.update_attributes(params[:test10])
        format.html { redirect_to @test10, notice: 'Test10 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @test10.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test10s/1
  # DELETE /test10s/1.json
  def destroy
    @test10 = Test10.find(params[:id])
    @test10.destroy

    respond_to do |format|
      format.html { redirect_to test10s_url }
      format.json { head :no_content }
    end
  end
end
