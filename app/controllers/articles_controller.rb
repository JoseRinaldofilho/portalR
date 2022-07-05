class ArticlesController < ApplicationController
  # busca os artigos e renderiza a view index
  def index
    @articles = Article.all
  end
  # busca o artigo com o id passado e renderiza a view show
  def show
    @article = Article.find(params[:id])
  end
  # renderiza a view new
  def new
    @article = Article.new
  end
  # renderiza a view edit create 
  def create
    @article = Article.new(title: "...", body: "...")

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
     end
  end
  # renderiza a view edit update
  def edit
    @article = Article.find(params[:id])
  end 

end











