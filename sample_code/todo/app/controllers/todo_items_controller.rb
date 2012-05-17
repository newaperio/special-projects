class TodoItemsController < ApplicationController
  # GET /todo_items
  # GET /todo_items.json
  def index
    @todo_items = TodoItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @todo_items }
    end
  end

  # GET /todo_items/1
  # GET /todo_items/1.json
  def show
    @todo_item = TodoItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @todo_item }
    end
  end

  # GET /todo_items/new
  # GET /todo_items/new.json
  def new
    @todo_item = TodoItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @todo_item }
    end
  end

  # GET /todo_items/1/edit
  def edit
    @todo_item = TodoItem.find(params[:id])
  end

  # POST /todo_items
  # POST /todo_items.json
  def create
    @todo_item = TodoItem.new(params[:todo_item])

    respond_to do |format|
      if @todo_item.save
        format.html { redirect_to @todo_item, notice: 'Todo item was successfully created.' }
        format.json { render json: @todo_item, status: :created, location: @todo_item }
      else
        format.html { render action: "new" }
        format.json { render json: @todo_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /todo_items/1
  # PUT /todo_items/1.json
  def update
    @todo_item = TodoItem.find(params[:id])

    respond_to do |format|
      if @todo_item.update_attributes(params[:todo_item])
        format.html { redirect_to @todo_item, notice: 'Todo item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @todo_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todo_items/1
  # DELETE /todo_items/1.json
  def destroy
    @todo_item = TodoItem.find(params[:id])
    @todo_item.destroy

    respond_to do |format|
      format.html { redirect_to todo_items_url }
      format.json { head :no_content }
    end
  end
end
