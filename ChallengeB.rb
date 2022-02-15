live_loop :snare do
  12.times do
    sample :drum_snare_soft
    sleep 2
  end
  stop
end

live_loop :heavy do
  16.times do
    sample :drum_heavy_kick, amp: 2
    sleep 1
  end
  stop
end

live_loop :cymbal do
  8.times do
    sample :drum_cymbal_closed
    sleep 0.5
  end
  stop
end

sleep 24

live_loop :ride do
  8.times do
    sample :drum_cymbal_hard
    sleep 1
  end
  stop
end

live_loop :crash do
  1.times do
    sample :drum_splash_hard
    sleep 3
    sample :drum_splash_hard
    sleep 1
    sample :drum_splash_hard
    sleep 1
  end
  stop
end

sleep 6

live_loop :cow do
  2.times do
    sample :drum_cowbell
    sleep 1
  end
  stop
end

sleep 2

live_loop :my_snare  do
  6.times do
    sample :drum_snare_soft
    sleep 2
  end
  stop
end

live_loop :my_kick  do
  12.times do
    sample :drum_heavy_kick, amp: 2
    sleep 1
  end
  stop
end

live_loop :my_cymbal  do
  24.times do
    sample :drum_cymbal_closed
    sleep 0.5
  end
  stop
end
