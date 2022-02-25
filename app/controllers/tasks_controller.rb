class TasksController < ApplicationController
    #GET all tasks - /tasks
    def index
        tasks = Task.all
        render json: tasks
    end

    #GET a particular task - /tasks/:id
    def show
        task = Task.find(task_params[:id])
        if task
            render json: task
        else
            render json: {error: "Task not found" }, status: :not_found
        end
    end

    #Create a new task - POST /tasks
    def create
        task = Task.create(task_params)
        render json: task
    end

    #Find a task and edit - PATCH /tasks/:id
    def update
        task = Task.find(task_params[:id])
        if task
            task.update(task_params)
            render json: task
        else 
            render json: {error: "Task not found" }, status: :not_found
        end
    end

    #Find a task and delete it - DELETE /tasks/:id
    def destroy
        task = Task.find(task_params[:id])
        if task
            task.destroy
            head :no_content
        else
            render json: {error: "Task not found" }, status: :not_found
        end
    end

    private

    def task_params
        params.permit(:text, :isCompleted, :id)
    end

end
