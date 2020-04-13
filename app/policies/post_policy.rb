class PostPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user_id: @user.try(:id))
    end
  end

  def show 
    user_is_owner_of_record? 
  end

  def new? ; user_is_owner_of_record ; end 
  def update? ; user_is_owner_of_record ; end 
  def destroy? ; user_is_owner_of_record ; end 

  def user_is_owner_of_record
    user == Post.new.user
  end

end
