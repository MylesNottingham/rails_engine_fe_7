class ItemFacade
  def items
    RailsService.get_url("/api/v1/items")[:data].map do |item_data|
      Item.new(item_data)
    end
  end

  def item(id)
    Item.new(RailsService.get_url("/api/v1/items/#{id}")[:data])
  end
end
