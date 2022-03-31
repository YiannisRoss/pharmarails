class ItemsController < ApplicationController
  def index
    @items = Item.search(params[:search]).order('created_at DESC') if params[:search]
  end

  def new
    @item = Item.new
  end

  def edit
    @item = Item.all.find(params[:id])
  end

  def update
    @item = Item.all.find(params[:id])

    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @item = Item.all.find(params[:id])
  end

  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to items_path, notice: 'item was successfully saved.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html do
          redirect_to items_path, alert: "item creation failed, #{@item.errors.full_messages.first}",
                                  status: :unprocessable_entity
        end
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def item_params
    params.require(:item).permit(:serial_number, :unit, :lot_number, :expiration_date, :product_code,
                                 :product_title, :status, :status_updated_at)
  end
end
