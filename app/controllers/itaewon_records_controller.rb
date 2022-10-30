class ItaewonRecordsController < ApplicationController
  before_action :set_itaewon_record, only: %i[ show edit update destroy ]

  # GET /itaewon_records or /itaewon_records.json
  def index
    @itaewon_records = ItaewonRecord.all
  end

  # GET /itaewon_records/1 or /itaewon_records/1.json
  def show
  end

  # GET /itaewon_records/new
  def new
    @itaewon_record = ItaewonRecord.new
  end

  # GET /itaewon_records/1/edit
  def edit
  end

  # POST /itaewon_records or /itaewon_records.json
  def create
    @itaewon_record = ItaewonRecord.new(itaewon_record_params)

    respond_to do |format|
      if @itaewon_record.save
        format.html { redirect_to itaewon_record_url(@itaewon_record), notice: "Itaewon record was successfully created." }
        format.json { render :show, status: :created, location: @itaewon_record }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @itaewon_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /itaewon_records/1 or /itaewon_records/1.json
  def update
    respond_to do |format|
      if @itaewon_record.update(itaewon_record_params)
        format.html { redirect_to itaewon_record_url(@itaewon_record), notice: "Itaewon record was successfully updated." }
        format.json { render :show, status: :ok, location: @itaewon_record }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @itaewon_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itaewon_records/1 or /itaewon_records/1.json
  def destroy
    @itaewon_record.destroy

    respond_to do |format|
      format.html { redirect_to itaewon_records_url, notice: "Itaewon record was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_itaewon_record
      @itaewon_record = ItaewonRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def itaewon_record_params
      params.require(:itaewon_record).permit(:lat, :lng, :name, :url, :when)
    end
end
