class AdviceMessagesController < ApplicationController
  before_filter :authenticate_user!, :only => :complete
  load_and_authorize_resource


  # GET /advice_messages
  # GET /advice_messages.json
  def index
    @advice_messages = AdviceMessage.where(user_id: current_user)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @advice_messages }
    end
  end

  # GET /advice_messages/1
  # GET /advice_messages/1.json
  def show
    @advice_message = AdviceMessage.find(params[:id])

    if @advice_message.user_id == current_user.id

      @comments = Comment.find_comments_for_commentable_threaded(@advice_message.class.name, @advice_message.id)

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @advice_message }
      end

    else
      redirect_to advice_messages_path

    end

  end

  # GET /advice_messages/new
  # GET /advice_messages/new.json
  def new
    @advice_message = AdviceMessage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @advice_message }
    end
  end

  # GET /advice_messages/1/edit
  def edit
    @advice_message = AdviceMessage.find(params[:id])
  end

  # POST /advice_messages
  # POST /advice_messages.json
  def create
    @advice_message = AdviceMessage.new(params[:advice_message])

    @body = @advice_message.user.username.to_s + " asked: " + @advice_message.subject.to_s + " \r\n\r\n " + @advice_message.question.to_s
    CommentMailer.advice_message_email(@body).deliver!

    respond_to do |format|
      if @advice_message.save
        format.html { redirect_to @advice_message, notice: 'Advice message was successfully created.' }
        format.json { render json: @advice_message, status: :created, location: @advice_message }
      else
        format.html { render action: "new" }
        format.json { render json: @advice_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /advice_messages/1
  # PUT /advice_messages/1.json
  def update
    @advice_message = AdviceMessage.find(params[:id])

    respond_to do |format|
      if @advice_message.update_attributes(params[:advice_message])
        format.html { redirect_to @advice_message, notice: 'Advice message was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @advice_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advice_messages/1
  # DELETE /advice_messages/1.json
  def destroy
    @advice_message = AdviceMessage.find(params[:id])
    @advice_message.destroy

    respond_to do |format|
      format.html { redirect_to advice_messages_url }
      format.json { head :ok }
    end
  end
end
