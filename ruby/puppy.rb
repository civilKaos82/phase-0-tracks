#Puppy Class
#Species: Puppus Cutus

#Characteristics:
#Legts: 4
#Tail: 1
#Ear_type: varies
#Cuteness: varies
#Fur_color:varies
#Fur_length:varies

#Behavior:
#play
#sleep
#eat

#In IRB, puppy class:

class Puppy
end
=> nil

Puppy.methods
=> [:new, :allocate, :superclass, :<=>, :module_exec, :class_exec, :<=, :>=,
   :==, :===, :include?, :included_modules, :ancestors, :name,
   :public_instance_methods, :instance_methods, :private_instance_methods,
   :protected_instance_methods, :const_get, :constants, :const_defined?,
   :const_set, :class_variables, :class_variable_get, :remove_class_variable,
   :class_variable_defined?, :class_variable_set, :private_constant,
   :public_constant, :singleton_class?, :deprecate_constant, :freeze,
   :inspect, :module_eval, :const_missing, :prepend, :method_defined?,
   :class_eval, :public_method_defined?, :private_method_defined?, :<,
   :public_class_method, :>, :protected_method_defined?, :private_class_method,
   :to_s, :autoload, :autoload?, :instance_method, :public_instance_method,
   :include, :instance_of?, :public_send, :instance_variable_get,
   :instance_variable_set, :instance_variable_defined?,
   :remove_instance_variable, :private_methods, :kind_of?, :instance_variables,
   :tap, :method, :public_method, :singleton_method, :is_a?, :extend,
   :define_singleton_method, :to_enum, :enum_for, :=~, :!~, :eql?,
   :respond_to?, :display, :object_id, :send, :nil?, :hash, :class,
   :singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint,
   :untrust, :trust, :untrusted?, :methods, :protected_methods, :frozen?,
   :public_methods, :singleton_methods, :!, :!=, :__send__, :equal?,
   :instance_eval, :instance_exec, :__id__]

duchess = Puppy.new
=> #<Puppy:0x00562e22f1e748>

fido = Puppy.new
=> #<Puppy:0x00562e22efcc10>

spot = Puppy.new
=> #<Puppy:0x00562e22eef6f0>

spot.class
=> Puppy

duchess == fido
=> false

fido.instance_of?(Array)
=> false

fido.instance_of?(Puppy)
=> true

spot.play_dead
NoMethodError: undefined method 'play_dead' for #<Puppy:0x00562e22eef6f0>
	from (irb):11
	from /usr/bin/irb:11:in '<main>'

str = String.new
=> ""

str.length
=> 0

str.empty?
=> true

str.empty?
=> true

str += "huh."
=> "huh."

str = "some string"
=> "some string"

greeting = String.new("hello")
=> "hello"

greeting.length
=> 5

greeting.upcase
=> "HELLO"
