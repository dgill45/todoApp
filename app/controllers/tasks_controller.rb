class TasksController < ApplicationController
    #Get all tasks - /tasks
    def index
        tasks = Task.all
        render json: tasks
    end

    #Get a particular task - /tasks/:id
    def show
        task = Task.find(task_params[:id])
        if task
            render json: task
        else
            render json: {error: "Task not found" }, status: :not_found
        end
    end

    #Create a new task - Post /tasks
    def create
        task = Task.create(task_params)
        render json: task
    end

    #Find a task and edit - Patch /tasks/:id
    def update
        task = Task.find(task_params[:id])
        if task
            task.update(task_params)
            render json: task
        else 
            render json: {error: "Task not found" }, status: :not_found
        end
    end

    private

    def task_params
        params.permit(:text, :isCompleted, :id)
    end

end
