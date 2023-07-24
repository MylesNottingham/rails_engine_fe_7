class MerchantFacade
  def merchants
    RailsService.get_url("/api/v1/merchants")[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def merchant(id)
    Merchant.new(RailsService.get_url("/api/v1/merchants/#{id}")[:data])
  end

  def merchant_items(id)
    RailsService.get_url("/api/v1/merchants/#{id}/items")[:data].map do |item_data|
      Item.new(item_data)
    end
  end
end
