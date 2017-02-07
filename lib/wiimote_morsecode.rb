#!/usr/bin/env ruby

# file: wiimote_morsecode.rb

require 'wiimote_sps'
require 'morsecode'

class WiimoteMorseCode < WiimoteSps


  def initialize(device_id: 'wiimote', sps_address: nil, sps_port: 59000, 
                  dash: :minus, dot: :plus)

    super(device_id: device_id, sps_address: sps_address, sps_port: 59000)

    @mc = ''

  end

  def on_btn_b_press(wm)
    @mc[-1] == '4' ? @mc[-1] = '5' : @mc += '4'
  end

  def on_btn_a_press(wm)
    notify MorseCode.new(@mc).to_s
    @mc = ''
  end

  def on_btn_minus_press(wm)
    @mc += '1'
  end

  def on_btn_plus_press(wm)
    @mc += '2'
  end

  def on_btn_home_press(wm)
    @mc = ''
  end

end

if __FILE__ == $0 then

  wm = WiimoteMorseCode.new sps_address: 'sps', dash: :minus, dot: :plus
  wm.activate

end
