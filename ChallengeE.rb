#comment
# TEMPO & SYNTH
use_bpm 180
use_synth :chipbass

# VARIABLES TO STORE SAMPLES
intro = "C:/Users/elia_torres/Downloads/mario_sounds-20220223T193357Z-001/mario_sounds/mario_intro.wav"
mush = "C:/Users/elia_torres/Downloads/mario_sounds-20220223T193357Z-001/mario_sounds/mushroom.wav"
jump = "C:/Users/elia_torres/Downloads/mario_sounds-20220223T193357Z-001/mario_sounds/coin.wav"
coin = "C:/Users/elia_torres/Downloads/mario_sounds-20220223T193357Z-001/mario_sounds/jump.wav"
pipe = "C:/Users/elia_torres/Downloads/mario_sounds-20220223T193357Z-001/mario_sounds/pipe.wav"


define :intro_1 do
  play :e4
  sleep 0.5
  play :e4
  sleep 1
  play :e4
  
  sleep 1
  play :c4
  sleep 0.5
  play :e4
  sleep 1
  play :g4
  sleep 2
  play :g3
  sleep 2
end

# INTRO
sample intro
sleep 8

intro_1

# PART ONE
live_loop :part_One do
  4.times do
    play :c4
    sleep 1.5
    play :g3
    sleep 1.5
    play :e3
    sleep 1.5
    play :a3
    sleep 1
    play :b3
    sleep 1
    play :bb3
    sleep 0.5
    play :a3
    sleep 1
  end
  stop
end
live_loop :crazy do
  4.times do
    sample coin
    sleep 2
    sample jump
    sleep 1
    sample jump
    sleep 1
    sample pipe
    sleep 4
    
  end
  stop
end

sleep 32
#PART TWO
play :g3
sleep 2/3.0 #0.666666...
play :e4
sleep 2/3.0 #0.666666...
play :g4
sleep 2/3.0 #0.666666...
play :a4
sleep 1
play :f4
sleep 0.5
play :g4
sleep 1
play :e4
sleep 1
play :c4
sleep 0.5
play :d4
sleep 0.5
play :b3
sleep 1
sample mush
