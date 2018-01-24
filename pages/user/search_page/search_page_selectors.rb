class SearchPageSelectors

  ITEMS_FOUND = {xpath: "//*[@class='caption']/h4/a"}
  LIST_VIEW_BUTTON = {css: "#list-view"}
  GRID_VIEW_BUTTON = {css: "#grid-view"}
  SUCCESS_SEARCH = {xpath: "//*[@class='caption']/h4/a"}
  SEARCH_CATEGORY = {css: "[name = 'category_id']"}
  SEARCH_SUBCATEGORY = {css: ".checkbox-inline > input[name = 'sub_category']"}
  SEARCH_DESCRIPTION = {css: ".checkbox-inline > input[name = 'description']"}
  SEARCH_CRITERIA_BUTTON = {css: "#button-search"}
  SEARCH_VALUE = {css: "#content > h1"}
  EMPTY_SEARCH = {xpath: "//input[@id='button-search']/following-sibling::p"}

end