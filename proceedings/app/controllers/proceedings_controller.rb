class ProceedingsController < ApplicationController

  # GET /proceedings
  # GET /proceedings.xml
  def index
    @proceedings = Proceeding.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @proceedings }
    end
  end

  # GET /proceedings/1
  # GET /proceedings/1.xml
  def show
    @proceeding = Proceeding.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @proceeding }
    end
  end

  # GET /proceedings/new
  # GET /proceedings/new.xml
  def new
    @proceeding = Proceeding.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @proceeding }
    end
  end

  # GET /proceedings/1/edit
  def edit
    @proceeding = Proceeding.find(params[:id])
  end

  # POST /proceedings
  # POST /proceedings.xml
  def create
    @proceeding = Proceeding.new(params[:proceeding])

    respond_to do |format|
      if @proceeding.save
        format.html { redirect_to(@proceeding, :notice => 'Raksts tika veiksmīgi izveidots.') }
        format.xml  { render :xml => @proceeding, :status => :created, :location => @proceeding }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @proceeding.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /proceedings/1
  # PUT /proceedings/1.xml
  def update
    @proceeding = Proceeding.find(params[:id])

    respond_to do |format|
      if @proceeding.update_attributes(params[:proceeding])
        format.html { redirect_to(@proceeding, :notice => 'Izmaiņas tika veiksmīgi saglabātas.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @proceeding.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /proceedings/1
  # DELETE /proceedings/1.xml
  def destroy
    @proceeding = Proceeding.find(params[:id])
    @proceeding.destroy

    respond_to do |format|
      format.html { redirect_to(proceedings_url) }
      format.xml  { head :ok }
    end
  end
end