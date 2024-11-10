# Welcome to Sonic Pi

define :angel do |a,b,c|
  sample :ambi_choir, rate: a
  sleep 0.1
  sample :ambi_choir, rate: b
  sleep 0.1
  sample :ambi_choir, rate: c
  sleep 0.5
end



3.times do
  angel 1, 0.5, 0.25
  angel 2, 1, 0.5
  angel 1.5,1, 0.5
  angel 3,2, 1
  angel 1.5,1, 0.5
  
end

angel 1.5,1, 0.5
angel 1.5,1, 0.5
angel 1.5,1, 0.5


5.times do
  angel 1.5,1, 0.5
  sample :bass_voxy_hit_c , amp: 1
end

1.times do
  print angel 1.5,1, 0.5
  sample :loop_garzul , amp: 1, rate: 0.75
  sleep sample_duration :loop_garzul
  
  5.times do
    sample :bass_voxy_hit_c
    sleep 0.25
  end
  
  3.times do
    sample :loop_weirdo, start: 0.1,finish: 0.25, pitch: 1, amp: 2
    sleep 0.2
  end
  
  3.times do
    sample :loop_weirdo, start: 0.1,finish: 0.25, pitch: 0.75, amp: 2
    sleep 0.2
  end
  
  sample :loop_weirdo, start: 0.1,finish: 0.25, pitch: 0.5
  sleep sample_duration :loop_weirdo, start: 0.1,finish: 0.25, pitch: 0.5
  
  sample :mehackit_robot6
  sleep sample_duration :mehackit_robot6
  
  sample :misc_burp
  sleep sample_duration :misc_burp
  
  sample "/Users/norakravets/Desktop/thankyou.mp3"
end
