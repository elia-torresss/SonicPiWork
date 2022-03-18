# Stranger Things Main Theme
use_bpm 160
use_synth :saw
i=0

sound=[:c2, :e2, :g2, :b2, :c3, :b2, :g2, :e2, :c3, :e3, :g3, :b3, :c4, :b3, :g3, :e3, :c4, :e4, :g4, :b4, :c5, :b4, :g4, :e4, :c5, :e5, :g5, :b5, :c6, :b5, :g5, :e5]

define :notes do |n|
  play n
  i= i+1
  sleep 0.5
end
live_loop :strange do
  32.times do
    notes sound[i]
  end
  i=0
end
