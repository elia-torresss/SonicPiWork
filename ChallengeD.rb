use_bpm 136
use_synth :piano
define :sponge_melody do |x|
  play:E3, amp: x
  sleep 1
  play:B3
  play:E4
  sleep 1
  play:B3
  sleep 1
  play:E4
  sleep 1
end

define :measure_2_8 do
  play:E4
  sleep 1
  play:E5
  play:Gs4
  sleep 2
  play:E5
  play:Gs4
  sleep 1
end

define :measure_3_4_6 do
  play :r
  sleep 1
  play:E5
  play:Gs4
  play:B4
  sleep 1
  play:B4
  sleep 1
  play:E5
  play:Gs4
  sleep 1
end

define :measure_5_7 do
  play:B4
  sleep 0.75
  play:As4
  sleep 0.25
  play:Gs4
  play:B4
  sleep 0.75
  play:Cs5
  sleep 0.25
  play:B4
  sleep 1
  play:Gs4
  play:E5
  sleep 1
end

live_loop:background_notes do
  
  sponge_melody 0.25
  
  sponge_melody 0.5
  
  sponge_melody 0.75
  
  5.times do
    sponge_melody 1
  end
  stop
end

# Measure 1
play :r
sleep 1
play:E4
play:Gs4
sleep 2
play:E5
play:Gs4
sleep 1

# Measure 2
measure_2_8

# Measure 3
measure_3_4_6

# Measure 4
measure_3_4_6

# Measure 5
measure_5_7

# Measure 6
measure_3_4_6

# Measure 7
measure_5_7

# Measure 8
measure_2_8
