class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end
    
    def new
        @task = Task.new
    end
    
    def create
    end
    
    def show
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
        @task.destroy
        redirect_to tasks_path, notice: t('.destroyed')    
    end

    private
        def set_task
            @task = task.find(params[:id])
        end

        def task_params
            params.require(:task).permit(:title, :content)
        end
end

