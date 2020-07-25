class RelationshipsController < ApplicationController

	# def create
	# 	follow = current_user.active_relationships.build(followed_id: params[:user_id])
	# 	follow.save
	# 	redirect_back(fallback_location: user_relationships_path)
	# end

	# def destroy
	# 	follow = current_user.active_relationships.find_by(followed_id: params[:user_id])
	# 	follow.destroy
	# 	redirect_back(fallback_location: user_relationships_path)
	# end

	def create
  	current_user.follow(params[:user_id])
  	redirect_back(fallback_location: user_relationships_path)
	end

	def destroy
  	current_user.unfollow(params[:user_id])
  	redirect_back(fallback_location: user_relationships_path)
	end

end
