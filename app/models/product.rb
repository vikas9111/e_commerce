class Product < ApplicationRecord
  #serialize :description, JSON
  mount_uploaders :product_images, FileUploader
  belongs_to :category

  def self.input_fields_for_product_type(category_name)
    default_inputs = ['brand', 'model_number', 'type', 'size']
    case category_name
    when "electronics"
      default_inputs << ['os', 'processor', 'memory', 'display', 'connectivity', 'battery', 'camera', 'colors', 'weight', 'ports_and_interfaces', 'accessories', ]
    when "clothing"
      default_inputs << []
    when "toys"
      default_inputs << []
    else
      default_inputs << ['']
    end
  end
end
