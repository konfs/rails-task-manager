class TasksController < ApplicationController
  def create
    @new_task = Task.new(task_params) # params[:task] take info from html
    @new_task.save

    redirect_to tasks_path(@task) # upon updated, link back to this link
  end

  def new
    @task = Task.new
  end

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to tasks_path(@task) # upon updated, link back to this link
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path(@task) # upon updated, link back to this link
  end

  private
  # task_params is required everytime add or updating the data list in order to get permit
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
