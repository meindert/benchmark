class BenchmarkRunsController < ApplicationController
  # GET /benchmark_runs
  # GET /benchmark_runs.json
  def index
    @benchmark_runs = BenchmarkRun.all
    @benchmark_run = BenchmarkRun.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @benchmark_runs }
    end
  end

  # GET /benchmark_runs/1
  # GET /benchmark_runs/1.json
  def show
    @benchmark_run = BenchmarkRun.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @benchmark_run }
    end
  end

  # GET /benchmark_runs/new
  # GET /benchmark_runs/new.json
  def new
    @benchmark_run = BenchmarkRun.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @benchmark_run }
    end
  end

  # GET /benchmark_runs/1/edit
  def edit
    @benchmark_run = BenchmarkRun.find(params[:id])
  end

  # POST /benchmark_runs
  # POST /benchmark_runs.json
  def create
    @benchmark_run = BenchmarkRun.new(params[:benchmark_run])

    respond_to do |format|
      if @benchmark_run.save

        BenchmarkRun.import(params[:file])
        # redirect_to benchmark_runs_path, notice: "Products imported."
        format.html { redirect_to @benchmark_run, notice: 'Benchmark run was successfully created.' }
        format.json { render json: @benchmark_run, status: :created, location: @benchmark_run }
      else
        format.html { render action: "new" }
        format.json { render json: @benchmark_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /benchmark_runs/1
  # PUT /benchmark_runs/1.json
  def update
    @benchmark_run = BenchmarkRun.find(params[:id])

    respond_to do |format|
      if @benchmark_run.update_attributes(params[:benchmark_run])
        format.html { redirect_to @benchmark_run, notice: 'Benchmark run was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @benchmark_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /benchmark_runs/1
  # DELETE /benchmark_runs/1.json
  def destroy
    @benchmark_run = BenchmarkRun.find(params[:id])
    @benchmark_run.destroy

    respond_to do |format|
      format.html { redirect_to benchmark_runs_url }
      format.json { head :no_content }
    end
  end


  def import
    BenchmarkRun.import(params[:file])
    redirect_to benchmark_runs_path, notice: "Products imported."
  end
end

