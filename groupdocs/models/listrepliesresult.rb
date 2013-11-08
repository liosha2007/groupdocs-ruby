class ListRepliesResult
  attr_accessor :annotation_guid, :replies

  # :internal => :external
  def self.attribute_map
  {
      :annotation_guid => :annotationGuid, :replies => :replies

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ListRepliesResult.attribute_map["annotation_guid".to_sym] != nil
        name = "annotation_guid".to_sym
        value = attributes["annotationGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ListRepliesResult.attribute_map["replies".to_sym] != nil
        name = "replies".to_sym
        value = attributes["replies"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push AnnotationReplyInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    ListRepliesResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

