class HeaderMenu

  # attr_reader :item_name
  #
  # def initialize(item_name)
  #   @item_name = item_name
  #   # @subitem_name = subitem_name
  # end
  #
  # def get_item_name
  #   @item_name
  # end

  attr_reader :item_name, :subitem_name

  def initialize(item_name, *subitem_name)
    @item_name = item_name
    @subitem_name = subitem_name
  end

  def get_item_name
    @item_name
  end

  def get_subitem_name
    @subitem_name
  end

end