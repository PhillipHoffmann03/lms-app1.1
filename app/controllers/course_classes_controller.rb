class CourseClassesController < ApplicationController
  before_action :set_course_class, only: %i[ show edit update destroy ]

  # GET /course_classes or /course_classes.json
  def index
    @course_classes = CourseClass.all
  end

  # GET /course_classes/1 or /course_classes/1.json
  def show
  end

  # GET /course_classes/new
  def new
    @course_class = CourseClass.new
  end

  # GET /course_classes/1/edit
  def edit
  end

  # POST /course_classes or /course_classes.json
  def create
    @course_class = CourseClass.new(course_class_params)

    respond_to do |format|
      if @course_class.save
        format.html { redirect_to course_class_url(@course_class), notice: "Course class was successfully created." }
        format.json { render :show, status: :created, location: @course_class }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @course_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_classes/1 or /course_classes/1.json
  def update
    respond_to do |format|
      if @course_class.update(course_class_params)
        format.html { redirect_to course_class_url(@course_class), notice: "Course class was successfully updated." }
        format.json { render :show, status: :ok, location: @course_class }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @course_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_classes/1 or /course_classes/1.json
  def destroy
    @course_class.destroy!

    respond_to do |format|
      format.html { redirect_to course_classes_url, notice: "Course class was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_class
      @course_class = CourseClass.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_class_params
      params.require(:course_class).permit(:course_id, :teacher_id, :name, :description, :schedule, :room)
    end
end
