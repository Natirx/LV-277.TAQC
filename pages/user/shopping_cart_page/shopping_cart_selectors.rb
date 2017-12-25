class ShoppingCartSelectors
  CONTINUE_BUTTON = {css: "Your shopping cart is empty!"}
  CHECKOUT_BUTTON = {css: "a.btn.btn-primary"}
  COUPON_BUTTON = {xpath: ".//a[starts-with(.,'Use Coupon')]"}
  GIFT_BUTTON = {xpath:  ".//a[starts-with(.,'Use Gift')]"}
  TOTAL_PRICE = {xpath:  ".//td[preceding-sibling::td[starts-with(.,'Total:')]]"}
  TABLE_BODY = {css:  ".table-responsive .table tr"}
  TD = {css:  "td"}
  INPUT = {css:  "input"}
  UPDATE_BUTTON = {css: "button[data-original-title = 'Update']"}
  REMOVE_BUTTON = {css: "button[data-original-title='Remove']"}
end