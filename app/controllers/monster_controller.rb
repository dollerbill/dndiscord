class MonsterController < ApplicationController
  def list
    @monsters = Monster.all
  end

  def show
    @monster = Monster.find(params[:id])
  end

  def new
    @monster = Monster.new
    @stats = Stat.new
  end

  def create
    @monster = Monster.new(monster_params)

    if @monster.save
      redirect_to :action => 'list'
    else
      @subjects = Subject.all
      render :action => 'new'
    end

  end

  def monster_params
    #params.require(:monsters).permit(:name, :status, :alive, :attack, :xp_awarded)
    params.require(:name)
    params.require(:status)
    params.require(:alive)
    params.require(:attack)
    params.require(:xp_awarded)

  end

  def edit
    @monster = Monster.find(params[:id])
    @subjects = Subject.all
  end

  def update
    @monster = Monster.find(params[:id])

    if @monster.update_attributes(book_param)
      redirect_to :action => 'show', :id => @monster
    else
      @subjects = Subject.all
      render :action => 'edit'
    end
  end

  def delete
    Monster.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
