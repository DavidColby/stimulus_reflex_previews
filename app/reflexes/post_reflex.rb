class PostReflex < ApplicationReflex  
  def preview
    morph '#preview-title', post_params[:title]
    morph '#preview-body', ApplicationController.helpers.to_markdown(post_params[:body])
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
