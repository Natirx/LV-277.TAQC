require_relative 'header_component_atomic.rb'
require_relative '../../../data/product.rb'
require_relative '../../../data/product_repository.rb'
require_relative '../product_page/product_page_bl.rb'
require_relative '../product_page/product_page_atomic.rb'




class HeaderComponentBusiness

  attr_reader :header_component_atomic

  def initialize(header_component_atomic)
    @header_component_atomic = header_component_atomic
  end


  def choose_desktop_product_by_category(product)

    case  product.category

    when ProductRepository.desktop_pc.category
      choose_desktop_pc

    when ProductRepository.desktop_mac.category

      header_component_atomic.choose_desktop_mac
    else
      header_component_atomic.choose_desktop_mac
    end
    LoggerWrapper.logger.info "Mac product chosen"
    ProductPageBusiness.new(ProductPageAtomic.new(@header_component_atomic.header_component.driver))
  end

end
