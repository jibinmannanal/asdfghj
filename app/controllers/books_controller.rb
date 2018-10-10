class BooksController < ApplicationController
  layout 'admin'
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user
  def index
    @books = Book.order('created_at').paginate(:page => params[:page], :per_page => 10)
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
    @book=Book.find(params[:id])

  end

  # GET /contacts/new
  def new
    @book = Book.new
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  # POST /contacts.json
  def create

    authors=params[:book][:author_book_ids]
    @book = Book.new(book_params.except(:author_book_ids))
        respond_to do |format|
      if @book.save
        if authors.present?
        authors.each do |a|
          @book.authors << Author.find(a)
        end
        end
        format.html { redirect_to @book, notice: 'Contact was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    authors=params[:book][:author_book_ids]

    respond_to do |format|
      if @book.update(book_params.except(:author_book_ids))
        @book.authors.delete_all
        if authors.present?
        authors.each do |a|
          @book.authors << Author.find(a)
        end
        end
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_path, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_book
    @book = Book.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def book_params
    params.require(:book).permit(:image, :name, :description, :price, :isbn, :status,author_book_ids:[])

  end





end
