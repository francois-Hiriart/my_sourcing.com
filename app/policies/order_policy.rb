class OrderPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    record.user == user
  end

  def destroy?
    create?
  end

  def edit?
    true
  end

  def update?
    edit?
  end

end
