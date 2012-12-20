class BenchmarkSetsController < ApplicationController
  # GET /benchmark_sets
  # GET /benchmark_sets.json
  def index
    @benchmark_sets = BenchmarkSet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @benchmark_sets }
    end
  end

  # GET /benchmark_sets/1
  # GET /benchmark_sets/1.json
  def show
    @benchmark_set = BenchmarkSet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @benchmark_set }
    end
  end

  # GET /benchmark_sets/new
  # GET /benchmark_sets/new.json
  def new
    @benchmark_set = BenchmarkSet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @benchmark_set }
    end
  end

  # GET /benchmark_sets/1/edit
  def edit
    @benchmark_set = BenchmarkSet.find(params[:id])
  end

  # POST /benchmark_sets
  # POST /benchmark_sets.json
  def create
    @benchmark_set = BenchmarkSet.new(params[:benchmark_set])

    respond_to do |format|
      if @benchmark_set.save
        format.html { redirect_to @benchmark_set, notice: 'Benchmark set was successfully created.' }
        format.json { render json: @benchmark_set, status: :created, location: @benchmark_set }
      else
        format.html { render action: "new" }
        format.json { render json: @benchmark_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /benchmark_sets/1
  # PUT /benchmark_sets/1.json
  def update
    @benchmark_set = BenchmarkSet.find(params[:id])

    respond_to do |format|
      if @benchmark_set.update_attributes(params[:benchmark_set])
        format.html { redirect_to @benchmark_set, notice: 'Benchmark set was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @benchmark_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /benchmark_sets/1
  # DELETE /benchmark_sets/1.json
  def destroy
    @benchmark_set = BenchmarkSet.find(params[:id])
    @benchmark_set.destroy

    respond_to do |format|
      format.html { redirect_to benchmark_sets_url }
      format.json { head :no_content }
    end
  end
end
