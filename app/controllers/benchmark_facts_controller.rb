class BenchmarkFactsController < ApplicationController
  # GET /benchmark_facts
  # GET /benchmark_facts.json
  def index
    @benchmark_facts = BenchmarkFact.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @benchmark_facts }
    end
  end

  # GET /benchmark_facts/1
  # GET /benchmark_facts/1.json
  def show
    @benchmark_fact = BenchmarkFact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @benchmark_fact }
    end
  end

  # GET /benchmark_facts/new
  # GET /benchmark_facts/new.json
  def new
    @benchmark_fact = BenchmarkFact.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @benchmark_fact }
    end
  end

  # GET /benchmark_facts/1/edit
  def edit
    @benchmark_fact = BenchmarkFact.find(params[:id])
  end

  # POST /benchmark_facts
  # POST /benchmark_facts.json
  def create
    @benchmark_fact = BenchmarkFact.new(params[:benchmark_fact])

    respond_to do |format|
      if @benchmark_fact.save
        format.html { redirect_to @benchmark_fact, notice: 'Benchmark fact was successfully created.' }
        format.json { render json: @benchmark_fact, status: :created, location: @benchmark_fact }
      else
        format.html { render action: "new" }
        format.json { render json: @benchmark_fact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /benchmark_facts/1
  # PUT /benchmark_facts/1.json
  def update
    @benchmark_fact = BenchmarkFact.find(params[:id])

    respond_to do |format|
      if @benchmark_fact.update_attributes(params[:benchmark_fact])
        format.html { redirect_to @benchmark_fact, notice: 'Benchmark fact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @benchmark_fact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /benchmark_facts/1
  # DELETE /benchmark_facts/1.json
  def destroy
    @benchmark_fact = BenchmarkFact.find(params[:id])
    @benchmark_fact.destroy

    respond_to do |format|
      format.html { redirect_to benchmark_facts_url }
      format.json { head :no_content }
    end
  end
end
