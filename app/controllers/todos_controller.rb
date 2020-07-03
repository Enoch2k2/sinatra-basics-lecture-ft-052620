class TodosController < ApplicationController

  get '/todos' do
    @todos = Todo.all
    erb :'todos/index'
  end
  
  get '/todos/new' do
    # @todo = Todo.new
    erb :'todos/new'
  end

  post '/todos' do
    @todo = Todo.new(params)
    if @todo.save
      redirect '/todos'
    else
      erb :'todos/new'
    end
  end

  get '/todos/:id' do
    set_todo
    erb :'todos/show'
  end

  private
    def set_todo
      @todo = Todo.find_by_id(params[:id])
    end

end