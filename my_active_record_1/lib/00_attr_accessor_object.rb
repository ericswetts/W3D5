class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |name|
      define_method(name) do
        p "defining a getter"
        instance_variable_get("@#{name}")
      end

      define_method("#{name}=") do |value|
        p "defining a setter"
        instance_variable_set("@#{name}", value)
      end


  end
end
end


# def self.my_attr_accessor=(*names, value)
#   names.each do |name|
#     p "defining_a_setter"
#     define_method(name) do
#       instance_variable_set(name)
#     end
#
# end
