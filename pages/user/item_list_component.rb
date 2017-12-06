require_relative 'header_component.rb'

class ItemListComponent < HeaderComponent

  def initialize driver
    @driver = driver
  end

  # page object get webelements
  CONTINUE_BUTTON = {:css =>"Your shopping cart is empty!"}
  CHECKOUT_BUTTON = {:css =>"a.btn.btn-primary"}
  COUPON_BUTTON = {:xpath =>".//a[starts-with(.,'Use Coupon')]"}
  GIFT_BUTTON = {:xpath => ".//a[starts-with(.,'Use Gift')]"}
  TOTAL_PRICE = {:xpath => ".//td[preceding-sibling::td[starts-with(.,'Total:')]]"}
  TABLE_TR = {:css => ".table-responsive tbody tr td"}
  TABLE_HEAD = {:css => ".table-responsive thead tr td"}

  def table_head
    @driver.find_elements TABLE_HEAD
  end

  def table_tr
    @driver.find_elements TABLE_TR
  end

  def continue_button
    @driver.find_element CONTINUE_BUTTON
  end

  def checkout_button
    @drvier.find_element CHECKOUT_BUTTON
  end

  def coupon_button
    @driver.find_element COUPON_BUTTON
  end

  def total_price
    @driver.find_element TOTAL_PRICE
  end

  # page object get text


  # page object atomic set text

  # page object atomic set clear


  # page object atomic set click
  @@table_head = []

  def get_table_head
    table_head.each do |head|
      @@table_head << head.text
    end
  end

  def get_table_body_with_titles
    @@table_tr = []
    i = 0
    table_tr.each do |row|
      i =0 if i == 6
      @@table_tr << [@@table_head[i] , row.text] if row.text != ''
      i += 1
    end
    p @@table_tr
  end

  def get_items_from_table
    @@hash = Hash[@@table_tr.group_by(&:first).map{ |k,a| [k,a.map(&:last)] }]
  end

  def click_item_press_display
    get_table_head
    p @@table_head
    sleep 2
    get_table_body_with_titles
    @@hash = Hash[@@table_tr.group_by(&:first).map{ |k,a| [k,a.map(&:last)] }]
    p @@hash
    @@hash["Product Name"]
  end
end
