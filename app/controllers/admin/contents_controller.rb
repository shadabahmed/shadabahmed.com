class Admin::ContentsController < Admin::BaseController
  # GET /admin/contents
  # GET /admin/contents.json
  def index
    @contents = Content.paginate(
      :order => "created_at DESC",
      :page  => params[:page]
    )
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contents }
    end
  end

  # GET /admin/contents/1
  # GET /admin/contents/1.json
  def show
    @content = Content.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content }
    end
  end

  # GET /admin/contents/new
  # GET /admin/contents/new.json
  def new
    @content = Content.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content }
    end
  end

  # POST /admin/contents
  # POST /admin/contents.json
  def create
    @content = Content.new(params[:content])

    respond_to do |format|
      if @content.save
        format.html { redirect_to admin_contents_url, notice: 'Content was successfully created.' }
        format.json { render json: @content, status: :created, location: [:admin,@content] }
      else
        format.html { render action: "new", status: :unprocessable_entity }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/contents/1
  # PUT /admin/contents/1.json
  def update
    @content = Content.find(params[:id])

    respond_to do |format|
      if @content.update_attributes(params[:content])
        format.html { redirect_to admin_contents_url, notice: 'Content was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "show", status: :unprocessable_entity }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/contents/1
  # DELETE /admin/contents/1.json
  def destroy
    @content = Content.find(params[:id])
    undo_item = @content.destroy

    respond_to do |format|
      format.html { redirect_to :action => index , :notice => 'Content was successfully deleted.'}
            format.json {
        render :json => {
          :undo_path    => nil,
          :undo_message => 'Content was successfully deleted.',
          :content      => @content.attributes
        }
      }
    end
  end
end
