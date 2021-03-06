class GetDatasourceResult
  attr_accessor :datasource

  # :internal => :external
  def self.attribute_map
  {
      :datasource => :datasource

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetDatasourceResult.attribute_map["datasource".to_sym] != nil
        name = "datasource".to_sym
        value = attributes["datasource"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    GetDatasourceResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

