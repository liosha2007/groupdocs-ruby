class SignatureTemplateResourcesResult
  attr_accessor :documents, :recipients

  # :internal => :external
  def self.attribute_map
  {
      :documents => :documents, :recipients => :recipients

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureTemplateResourcesResult.attribute_map["documents".to_sym] != nil
        name = "documents".to_sym
        value = attributes["documents"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push SignatureTemplateDocumentInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if SignatureTemplateResourcesResult.attribute_map["recipients".to_sym] != nil
        name = "recipients".to_sym
        value = attributes["recipients"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push SignatureTemplateRecipientInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    SignatureTemplateResourcesResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

