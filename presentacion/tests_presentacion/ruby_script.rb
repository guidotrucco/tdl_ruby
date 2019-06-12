###### HELLO WORLD

puts 'Hello World'


###### TODO ES UN OBJETO

-199.abs
'Teoria de Lenguajes'.length
'Presentacion de ruby'.index('u')
"Aguante RUBY".downcase.split('').uniq.sort.join

###### IMPRIMIR VARIABLES

puts "Variable: #{var}" #puts 'Variable: #{var}' NO FUNCIONA 


###### LEER DE STDIN

nombre = gets.chomp

"Hola #{nombre}"


###### COLLECCIONES 


col = [ 1, 'HOLA', [2, 3], nil, 'CHAU' ]

col.flatten
col.reverse
col.append
col.uniq


###### HASH

hash = Hash.new 
#es lo mismo a 
hash = {}

yo = {:nombre => "Hernan Tain", :padron => 98070 }

yo.each_pair do |k, v|
	puts "#{k}: #{v}"
end

hash.delete :nombre

hash.delete_if {|key, value| value == '98070'}

#### CONTROL 


if rand(100).even?
  puts "es par"
else
  puts "es impar"
end

#### FUNCIONES ANONIMAS

lambda {|arg| puts arg}



### ITERADORES

array = [1, 'hola', 95.07]

arrray.each{|elemento| puts elemento}

(10..15).each {|num| puts num}

[1,3,5].inject(10) {|sum, element| sum + element}

(1..10).collect {|x| x*x}

(1..5).map(&:to_f)  # => [1.0, 2.0, 3.0, 4.0, 5.0]