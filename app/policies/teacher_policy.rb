class TeacherPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def new?
    teacher?
  end

  def create?
    teacher?
  end

  def edit?
    teacher?
  end

  def update?
    teacher?
  end

  private

  def teacher?
    user.teacher?
  end
end
