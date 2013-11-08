class AddDatasourceResult
  attr_accessor :datasource_id

  # :internal => :external
  def self.attribute_map
  {
      :datasource_id => :datasource_id

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if AddDatasourceResult.attribute_map["datasource_id".to_sym] != nil
        name = "datasource_id".to_sym
        value = attributes["datasource_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    AddDatasourceResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

