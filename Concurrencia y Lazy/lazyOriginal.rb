require 'benchmark'

def generarNumeros(cantidad)
  1.upto(100000000).map { |value| value *2  }.first(cantidad)
end

time = Benchmark.realtime{
  puts generarNumeros(100)
}

puts time