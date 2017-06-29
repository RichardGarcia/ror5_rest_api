module Api
  module V1
    class ArticlesController < ApplicationController

      # show all articles sort by "created_at" in descending order
      def index
        articles = Article.order('created_at DESC');
        render json: {status: 'SUCCESS', message: 'Articles loaded',
          data: articles}, status: :ok
      end
      # show single article
      def show
        article = Article.find(params[:id]);
        render json: {status: 'SUCCESS', message: 'Article loaded',
          data: article}, status: :ok
      end
      # create an article
      def create
        article = Article.new(article_params)

        if article.save
          render json: {status: 'SUCCESS', message: 'Saved article',
            data: article}, status: :ok
        else
          render json: {status: 'ERROR', message: 'Article not saved',
            data: article.error}, status: :unprocessable_entity
        end

      end

      private
        def article_params
          params.permit(
            :title,
            :body
          )
        end

    end
  end
end
