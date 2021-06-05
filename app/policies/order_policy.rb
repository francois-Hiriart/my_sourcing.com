class OrderPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.buyer?
        scope.where(user_id: user.id)
      else
        scope.from_user(user)
      end
    end
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
