class Plugins::Ecommerce::CartDecorator < Draper::Decorator
  delegate_all
  def the_sub_total
    "#{h.current_site.current_unit}#{sprintf('%.2f', object.sub_total)}"
  end

  def the_total_discounts
    "#{h.current_site.current_unit}#{sprintf('%.2f', object.total_discounts)}"
  end

  def the_total_amount
    "#{h.current_site.current_unit}#{sprintf('%.2f', object.total_amount)}"
  end
  alias_method :the_price, :the_total_amount

  def the_tax_total
    "#{h.current_site.current_unit}#{sprintf('%.2f', object.tax_total)}"
  end

  def the_weight_total
    "#{h.current_site.current_weight} #{sprintf('%.2f', object.weight_total)}"
  end

  def the_total_shipping
    "#{h.current_site.current_unit}#{sprintf('%.2f', object.total_shipping)}"
  end
end
