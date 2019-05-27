require 'benchmark'

def tiempoMuerto
  10.times.map{ sleep(1)}
end

time = Benchmark.realtime {
  tiempoMuerto
}

puts time