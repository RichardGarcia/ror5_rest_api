module Api
  module V1
    class ArticlesController < ApplicationController

      # show all articles sort by "created_at" in descending order
      def index
        articles = Article.order('created_at DESC');
        render json: {status: 'SUCCESS', message: 'Articles loaded', data: articles}, status: :ok
      end
      # show single article
      def show
        article = Article.find(params[:id]);
        render json: {status: 'SUCCESS', message: 'Article loaded', data: article}, status: :ok
      end

    end
  end
end
