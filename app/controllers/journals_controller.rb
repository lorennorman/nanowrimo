class JournalsController < ApplicationController
  before_filter :find_book
  
  # GET /journals
  # GET /journals.xml
  def index
    @journals = @book.journals

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @journals }
    end
  end

  # GET /journals/1
  # GET /journals/1.xml
  def show
    @journal = @book.journals.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @journal }
    end
  end

  # GET /journals/new
  # GET /journals/new.xml
  def new
    @journal = Journal.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @journal }
    end
  end

  # GET /journals/1/edit
  def edit
    @journal = @book.journals.find(params[:id])
  end

  # POST /journals
  # POST /journals.xml
  def create
    @journal = @book.journals.new(params[:journal])

    respond_to do |format|
      if @journal.save
        flash[:notice] = 'Journal was successfully created.'
        format.html { redirect_to( @book ) }
        format.xml  { render :xml => @journal, :status => :created, :location => @journal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @journal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /journals/1
  # PUT /journals/1.xml
  def update
    @journal = @book.journals.find(params[:id])

    respond_to do |format|
      if @journal.update_attributes(params[:journal])
        flash[:notice] = 'Journal was successfully updated.'
        format.html { redirect_to([@book, @journal]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @journal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /journals/1
  # DELETE /journals/1.xml
  def destroy
    @journal = @book.journals.find(params[:id])
    @journal.destroy

    respond_to do |format|
      format.html { redirect_to( @book ) }
      format.xml  { head :ok }
    end
  end
  
  private
    def find_book
      @book = Book.find(params[:book_id])
    end
end
