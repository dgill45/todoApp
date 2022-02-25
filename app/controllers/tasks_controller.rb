class TasksController < ApplicationController
    def index
        tasks = Task.all
        render json: tasks
    end

    def show
        task = Task.find(task_params[:id])
        if task
            render json: task
        else
            render json: {error: "Task not found" }, status: :not_found
        end
    end

    def create
        task = Task.create(task_params)
        render json: task
    end
    

    private

    def task_params
        params.permit(:text, :isCompleted, :id)
    end

end
