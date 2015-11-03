class DatasetsController < ApplicationController
  before_action :set_dataset, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction

  has_scope :scope_one, :scope_two, :scope_three, :scope_four, :scope_five

  def id
    return params[:id]
  end

  # GET /datasets
  # GET /datasets.json
  def index
    @datasets = Dataset.all.where("created_at is not null").order("created_at desc")
  end

  # GET /datasets/1
  # GET /datasets/1.json
  def show
    # Apply scopes
    @record = apply_scopes(@record).search(params[:search]).where(sort_column + " is not null").order(sort_column + " " + sort_direction)

    # Set up pagination
    @record_items = @record.paginate(:page => params[:page])

    # Render view
    render 'datasets/show/' + id + '/index'
  end

  # GET /datasets/new
  def new
    if user_signed_in?
      @dataset = Dataset.new
    else
      redirect_to root_path
    end
  end

  # GET /datasets/1/edit
  def edit
    if !user_signed_in?
      redirect_to datasets_path
    end
  end

  # POST /datasets
  # POST /datasets.json
  def create
    if user_signed_in?
      @dataset = Dataset.new(dataset_params)  
      @dataset.id = Dataset.maximum(:id).next
      blank_fields = params[:dataset][:fields] == ''

      puts "blank fields: ", blank_fields

      # Make sure the Fields field is filled out
      if blank_fields
        @dataset.errors.add(:fields, "can't be blank")
      # Make sure a file is attached
      elsif !@dataset.file.queued_for_write[:original].nil?
        # Create new record in DB for the dataset
        # And copy base assets to new folder
        if !@dataset.errors.any?
          system('rm shell/new-record-fields.txt')
          system('echo ' + params[:dataset][:fields] + ' >> shell/new-record-fields.txt')
          system('sh shell/new-record.sh ' + @dataset.id.to_s)
        end
      end

      respond_to do |format|
        if !blank_fields
          if @dataset.save
            format.html { redirect_to @dataset, notice: 'Dataset was successfully created.' }
            format.json { render :show, status: :created, location: @dataset }
          end
        else
          puts "correct format"
          format.html { render :new }
          format.json { render json: @dataset.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to datasets_path
    # Close if user is signed in
    end
  # Close create
  end

  # PATCH/PUT /datasets/1
  # PATCH/PUT /datasets/1.json
  def update
    if user_signed_in?
      respond_to do |format|
        if @dataset.update(dataset_params)
          format.html { redirect_to @dataset, notice: 'Dataset was successfully updated.' }
          format.json { render :show, status: :ok, location: @dataset }
        else
          format.html { render :edit }
          format.json { render json: @dataset.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to datasets_path
    end
  end

  # DELETE /datasets/1
  # DELETE /datasets/1.json
  def destroy
    if user_signed_in?
      system('sh shell/destroy-record.sh ' + @dataset.id.to_s)

      @dataset.destroy
      respond_to do |format|
        format.html { redirect_to datasets_url, notice: 'Dataset was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      redirect_to datasets_path
    end
  end

  private
    # Never trust parameters from the scary internet
    # Only allow the white list through.
    def dataset_params
      params.require(:dataset).permit(:dataset_name, :description, :fields, :default_sort_column, :default_sort_direction, :file)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_dataset
      @dataset = Dataset.find(id)
      @id = id

      # Query data from the DB and set it to a global variable
      @record = RecordTasks.set_record_number(id)
    end

    # Sort columns asc, desc
    def sort_column
      if !@dataset.default_sort_column.nil? &&  @dataset.default_sort_column != ""
        default_column = @dataset.default_sort_column
      else
        default_column = @record.column_names[1]
      end

      @record.column_names.include?(params[:sort]) ? params[:sort] : default_column
    end
    
    def sort_direction
      if !@dataset.default_sort_direction.nil?
        default_direction = @dataset.default_sort_direction
      else
        default_direction = "asc"
      end

      %w[asc desc].include?(params[:direction]) ? params[:direction] : default_direction
    end
end
