class ReviewsController < ApplicationController
  before_action :set_review, only: %i[show edit update destroy]

  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
    @planet = Planet.find(params[:planet_id])
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @planet = Planet.find(params[:planet_id])
    @review.planet = @planet
    @review.save
    redirect_to review_path(@review), notice: "Your review was successfully created."
  end

  def destroy
    @review.destroy
    redirect_to reviews_path, notice: "Your review was successfully deleted."
  end

  def edit
    authorize @review
  end

  def update
    authorize @review
    if @review.update(review_params)
      redirect_to root_path, notice: "Your review was successfully changed."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
   params.require(:review).permit(:planet_id, :user_id, :name, :content, :rating)
  end
end
