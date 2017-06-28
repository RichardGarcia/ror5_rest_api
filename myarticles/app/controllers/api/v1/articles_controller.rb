module Api
  module v1
    class ArticleController < ApplicationController

      def index
        articles = Article.order('created_at DESC');
        render json: {status: 'SUCCESS', message: 'Articles loaded', data:articles}, status: ok
      end

    end
  end
end
