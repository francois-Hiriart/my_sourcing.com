class OrderPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.buyer?
        scope.where(user_id: user.id)
      else
        scope.where(products: {user_id: user.id})
      end
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
    record.user == user
  end

  def propose_price?
    return false unless user.supplier? && order.product.user_id == user.id
  end

  def validate?
    return false unless user.supplier? && order.product.user_id == user.id
  end

  def confirm_shipping?
    return false unless user.supplier? && order.product.user_id == user.id
  end
end
