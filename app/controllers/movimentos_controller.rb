class MovimentosController < ApplicationController
  # GET /movimentos
  # GET /movimentos.xml
  def index
    @movimentos = Movimento.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @movimentos }
    end
  end

  # GET /movimentos/1
  # GET /movimentos/1.xml
  def show
    @movimento = Movimento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @movimento }
    end
  end

  # GET /movimentos/new
  # GET /movimentos/new.xml
  def new
    @movimento = Movimento.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @movimento }
    end
  end

  # GET /movimentos/1/edit
  def edit
    @movimento = Movimento.find(params[:id])
  end

  # POST /movimentos
  # POST /movimentos.xml
  def create
    @movimento = Movimento.new(params[:movimento])

    respond_to do |format|
      if @movimento.save
        format.html { redirect_to(@movimento, :notice => 'Movimento was successfully created.') }
        format.xml  { render :xml => @movimento, :status => :created, :location => @movimento }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @movimento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /movimentos/1
  # PUT /movimentos/1.xml
  def update
    @movimento = Movimento.find(params[:id])

    respond_to do |format|
      if @movimento.update_attributes(params[:movimento])
        format.html { redirect_to(@movimento, :notice => 'Movimento was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @movimento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /movimentos/1
  # DELETE /movimentos/1.xml
  def destroy
    @movimento = Movimento.find(params[:id])
    @movimento.destroy

    respond_to do |format|
      format.html { redirect_to(movimentos_url) }
      format.xml  { head :ok }
    end
  end
  
end
