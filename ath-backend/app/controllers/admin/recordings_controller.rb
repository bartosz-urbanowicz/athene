class Admin::RecordingsController < Admin::BaseController
  def index
    @recordings = Recording.all
  end

  def new
    @recording = Recording.new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
  end
end
