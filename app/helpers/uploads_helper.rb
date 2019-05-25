# frozen_string_literal: true

module UploadsHelper
  def purchases_total(purchases)
    total = 0
    purchases.each { |purchase| total += purchase.item.price * purchase.quantity }
    number_to_currency(total, unit: "R$", separator: ",", delimiter: "")
  end
end
