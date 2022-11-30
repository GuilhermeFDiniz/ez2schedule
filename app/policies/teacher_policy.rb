class TeacherPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def edit?
    false
  end

  def new?
    false
  end

  def update?
    false
  end

  def create?
    false
  end
end
