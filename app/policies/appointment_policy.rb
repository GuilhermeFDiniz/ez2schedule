class AppointmentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    record.user == user || record.teacher.user == user
  end

  def create?
    true
  end

  def update?
    record.user == user || record.teacher.user == user
  end

  def destroy?
    record.user == user || record.teacher.user == user
  end

  def review?
    record.user == user
  end

  def update_review?
    record.user == user
  end

end
