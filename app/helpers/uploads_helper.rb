# frozen_string_literal: true

module UploadsHelper
  def purchases_total(purchases)
    total =
      purchases.sum { |purchase| purchase.item.price * purchase.quantity }

    number_to_currency(total, unit: "R$", separator: ",", delimiter: "")
  end
end
