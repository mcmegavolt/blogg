require_dependency "blogg/application_controller"

module Blogg
  class PostsController < ApplicationController

    respond_to :html
    inherit_resources

    load_and_authorize_resource
    skip_authorize_resource :only => [:index, :show]

    def destroy
      destroy!(:notice => "Blog post was successfully deleted.")
    end

    def update
      update!(:notice => "Blog post was successfully updated.")
    end

    def create
      @post = Post.new(params[:post])
      @post.author = current_user
      create!(:notice => "Blog post was successfully created.")
    end

  end
end
