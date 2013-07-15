class EvaluationTermsController < ApplicationController
  # GET /evaluation_terms
  # GET /evaluation_terms.json
  def index
    @evaluation_terms = EvaluationTerm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @evaluation_terms }
    end
  end

  # GET /evaluation_terms/1
  # GET /evaluation_terms/1.json
  def show
    @evaluation_term = EvaluationTerm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @evaluation_term }
    end
  end

  # GET /evaluation_terms/new
  # GET /evaluation_terms/new.json
  def new
    @evaluation_term = EvaluationTerm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @evaluation_term }
    end
  end

  # GET /evaluation_terms/1/edit
  def edit
    @evaluation_term = EvaluationTerm.find(params[:id])
  end

  # POST /evaluation_terms
  # POST /evaluation_terms.json
  def create
    @evaluation_term = EvaluationTerm.new(params[:evaluation_term])

    respond_to do |format|
      if @evaluation_term.save
        format.html { redirect_to @evaluation_term, notice: 'Evaluation term was successfully created.' }
        format.json { render json: @evaluation_term, status: :created, location: @evaluation_term }
      else
        format.html { render action: "new" }
        format.json { render json: @evaluation_term.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /evaluation_terms/1
  # PUT /evaluation_terms/1.json
  def update
    @evaluation_term = EvaluationTerm.find(params[:id])

    respond_to do |format|
      if @evaluation_term.update_attributes(params[:evaluation_term])
        format.html { redirect_to @evaluation_term, notice: 'Evaluation term was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @evaluation_term.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluation_terms/1
  # DELETE /evaluation_terms/1.json
  def destroy
    @evaluation_term = EvaluationTerm.find(params[:id])
    @evaluation_term.destroy

    respond_to do |format|
      format.html { redirect_to evaluation_terms_url }
      format.json { head :no_content }
    end
  end
end
