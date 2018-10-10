class AnswersController < ApplicationController
  layout 'admin'
  before_action :logged_in_user
  before_action :set_answer, only: [:show, :edit, :update, :destroy]

  def index
    @answers = Answer.order('created_at').paginate(:page => params[:page], :per_page => 10)
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
    @answer=Answer.find(params[:id])

  end

  # GET /contacts/new
  def new
    @answer = Answer.new
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  # POST /contacts.json
  def create


    @answer = Answer.new(answer_params)
    respond_to do |format|
      if @answer.save

        format.html { redirect_to @answer, notice: 'PDF was successfully created.' }
        format.json { render :show, status: :created, location: @answer}
      else
        format.html { render :new }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update


    respond_to do |format|
      if @answer.update(answer_params)

        format.html { redirect_to @answer, notice: 'PDF was successfully updated.' }
        format.json { render :show, status: :ok, location: @answer }
      else
        format.html { render :edit }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @answer.destroy
    respond_to do |format|
      format.html { redirect_to answers_url, notice: 'PDF was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_answer
    @answer = Answer.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def answer_params
    params.require(:answer).permit(:pdf, :title, :status)
  end
end










