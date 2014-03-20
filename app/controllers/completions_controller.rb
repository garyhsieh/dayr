class CompletionsController < ApplicationController
  # GET /completions
  # GET /completions.xml
  def index
    @completions = Completion.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @completions }
    end
  end

  # GET /completions/1
  # GET /completions/1.xml
  def show
    @completion = Completion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @completion }
    end
  end

  # GET /completions/new
  # GET /completions/new.xml
  def new
    @completion = Completion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @completion }
    end
  end

  # GET /completions/1/edit
  def edit
    @completion = Completion.find(params[:id])
  end

  # POST /completions
  # POST /completions.xml
  def create
    @completion = Completion.new(params[:completion])

    respond_to do |format|
      if @completion.save
        format.html { redirect_to(@completion, :notice => 'Completion was successfully created.') }
        format.xml  { render :xml => @completion, :status => :created, :location => @completion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @completion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /completions/1
  # PUT /completions/1.xml
  def update
    @completion = Completion.find(params[:id])

    respond_to do |format|
      if @completion.update_attributes(params[:completion])
        format.html { redirect_to(@completion, :notice => 'Completion was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @completion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /completions/1
  # DELETE /completions/1.xml
  def destroy
    @completion = Completion.find(params[:id])
    @completion.destroy

    respond_to do |format|
      format.html { redirect_to(completions_url) }
      format.xml  { head :ok }
    end
  end
end
