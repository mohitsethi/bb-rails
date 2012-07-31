class TodosController < ApplicationController
  # GET /todos
  # GET /todos.json
  def index
=begin
    @todos = Todo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @todos }
    end
=end
    render :json => Todo.all
  end

  # GET /todos/1
  # GET /todos/1.json
  def show
=begin  
    @todo = Todo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @todo }
    end
=end
    render :json => Todo.find(params[:id])
  end

  # GET /todos/new
  # GET /todos/new.json
  def new
    @todo = Todo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @todo }
    end
  end

  # GET /todos/1/edit
  def edit
    @todo = Todo.find(params[:id])
  end

  # POST /todos
  # POST /todos.json
  def create
=begin  
    @todo = Todo.new(params[:todo])

    respond_to do |format|
      if @todo.save
        format.html { redirect_to @todo, notice: 'Todo was successfully created.' }
        format.json { render json: @todo, status: :created, location: @todo }
      else
        format.html { render action: "new" }
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
    end
=end
    todo = Todo.create! params
    render :json => todo
  end

  # PUT /todos/1
  # PUT /todos/1.json
  def update
=begin  
    @todo = Todo.find(params[:id])

    respond_to do |format|
      if @todo.update_attributes(params[:todo])
        format.html { redirect_to @todo, notice: 'Todo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
    end
=end
    @todo = Todo.find(params[:id])
    @todo.update_attrubutes! params
    render :json => todo
  end

  # DELETE /todos/1
  # DELETE /todos/1.json
  def destroy
=begin  
    @todo = Todo.find(params[:id])
    @todo.destroy

    respond_to do |format|
      format.html { redirect_to todos_url }
      format.json { head :no_content }
    end
=end
    @todo = Todo.find(params[:id])
    todo.destroy

    render :json => todo
  end
end
