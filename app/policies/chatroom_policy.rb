class ChatroomPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
    def resolve
      scope.all
    end
  end

  def show?
    record.user_id == user.id || record.teacher_id = user.id
  end

  def create?
    record.user_id == user.id || record.teacher_id = user.id
  end
end
