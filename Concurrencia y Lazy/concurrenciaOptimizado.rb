require 'benchmark'

def tiempoMuertoOptimizado
  threads = 10.times.map { Thread.new { sleep(1.0) } }
  threads.each(&:join)
end

time = Benchmark.realtime {
  tiempoMuertoOptimizado
}
puts time