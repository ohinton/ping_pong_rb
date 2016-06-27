class Fixnum
  define_method(:ping_pong) do
    numbers = (1..self)
    ping_pongs = []
    numbers.each() do |number|
      if number.%(15).==(0)
        ping_pongs.push("pingpong")
      elsif number.%(5).==(0)
        ping_pongs.push("pong")
      elsif number.%(3).==(0)
        ping_pongs.push("ping")
      else
        ping_pongs.push(number)
      end
    end
    ping_pongs
  end
end
