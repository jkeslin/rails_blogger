module ArticlesHelper

	def article_params
	  params.require(:article).permit(:title, :content)
	end

end
