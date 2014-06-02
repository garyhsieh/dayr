class CommentsController < ApplicationController
  def create
     @comment = Comment.new(params[:comment])
     

     if @comment.commentable_type == AdviceMessage.name


       respond_to do |format|
         if @comment.save
           format.html { redirect_to(advice_message_path(@comment.commentable_id), :notice => 'Thanks for Commenting') }
           format.xml  { head :ok }
         else
           format.html { redirect_to(advice_message_path(@comment.commentable_id)) }
           format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
         end
       end

    elsif @comment.commentable_type == Discussion.name

     respond_to do |format|
       if @comment.save
         format.html { redirect_to(discussion_path(@comment.commentable_id), :notice => 'Thanks for Commenting') }
         format.xml  { head :ok }
       else
         format.html { redirect_to(discussion_path(@comment.commentable_id)) }
         format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
       end
     end

    else

      respond_to do |format|
       if @comment.save
         format.html { redirect_to(assignment_path(@comment.commentable_id), :notice => 'Thanks for Commenting') }
         format.xml  { head :ok }
       else
         format.html { redirect_to(assignment_path(@comment.commentable_id)) }
         format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
       end
     end

    end
     
   end
   
   def new
#      @comment = Comment.new(:parent_id => params[:parent_id])
#      @assignment = Assignment.find(params[:assignment_id])
#      @comments = @comment.parent.self_and_descendants
      #@children_comments = Comment.find_comments_for_root_commentable(@challenge.class.name, @challenge.id, params[:parent_id])
      @comment = Comment.new

      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @comment }
      end
   end
  
end
