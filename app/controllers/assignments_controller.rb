class AssignmentsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]
  load_and_authorize_resource
  
  def complete
    @assignment = Assignment.find(params[:id])
    

    old_completions = Completion.where("assignment_id = ? AND user_id = ?", @assignment.id, current_user)

    if old_completions.length == 0

      if @assignment
        @completion = Completion.new({
          :assignment => @assignment,
          :user => current_user
        })
        
        respond_to do |format|
          if @completion.save
            format.html { redirect_to(@assignment, :notice => 'Daily challenge was successfully completed.') }
            format.xml  { head :ok }
          else
            format.html { render :action => "new" }
            format.xml  { render :xml => @assignment.errors, :status => :unprocessable_entity }
          end
        end
      end

    else
      respond_to do |format|
        format.html { redirect_to(@assignment, :notice => 'Daily challenge was successfully completed.') }
        format.xml  { head :ok }
      end
    end

  end

  # GET /assignments
  # GET /assignments.xml
  def index
    # Eager load the challenges
    if can? :manage, Assignment
      @assignments = Assignment.includes(:challenge).find(:all, :order => 'date DESC', :conditions => ["challenges.id != ?", ""])    
    else  
      @assignments = Assignment.includes(:challenge).find(:all, :order => 'date DESC', :conditions => ["date <= ? && challenges.id != ?", Date.today, ""])
    end
  
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @assignments }
    end
  end

  # GET /assignments/1
  # GET /assignments/1.xml
  def show
    @assignment = Assignment.
      includes([:completions, :challenge]).   # Eager load completions and challenge 
      find(params[:id])
    @completions = @assignment.completions
    @completions_size = @assignment.completions.size
    @comments = Comment.find_comments_for_commentable_threaded(@assignment.class.name, @assignment.id)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @assignment }
    end 
  end

  # GET /assignments/new
  # GET /assignments/new.xml
  def new
    @assignment = Assignment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @assignment }
    end
  end

  # GET /assignments/1/edit
  def edit
    @assignment = Assignment.find(params[:id])
  end

  # POST /assignments
  # POST /assignments.xml
  def create
    @assignment = Assignment.new(params[:assignment])

    respond_to do |format|
      if @assignment.save
        format.html { redirect_to(@assignment, :notice => 'Assignment was successfully created.') }
        format.xml  { render :xml => @assignment, :status => :created, :location => @assignment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @assignment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /assignments/1
  # PUT /assignments/1.xml
  def update
    @assignment = Assignment.find(params[:id])

    respond_to do |format|
      if @assignment.update_attributes(params[:assignment])
        format.html { redirect_to(@assignment, :notice => 'Assignment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @assignment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /assignments/1
  # DELETE /assignments/1.xml
  def destroy
    @assignment = Assignment.find(params[:id])
    @assignment.destroy

    respond_to do |format|
      format.html { redirect_to(assignments_url) }
      format.xml  { head :ok }
    end
  end

  
end
