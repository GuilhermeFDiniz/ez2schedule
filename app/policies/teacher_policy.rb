class TeacherPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user: user)
    end
  end

  def create?
    !teacher?
  end

  def update?
    teacher?
  end

  private

  def teacher?
    user.teacher?
  end
end
