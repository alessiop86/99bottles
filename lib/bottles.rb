#Bottles = Class.new do #anonymous class definition
#:: is the scope resolution

#about 40 mins


class Bottles

  def song
    return verses(99,0)
  end

  def verses(a, b)
    s = ''
    #for i in b..a
    while a >= b
      if s != ''
        s +="\n"
      end
      s << verse(a)
      a = a - 1
    end
    return s
  end

  def verse(n)
    return case n
    when 3..99
      """%s bottles of beer on the wall, %s bottles of beer.
Take one down and pass it around, %s bottles of beer on the wall.
""" % [n, n, n-1]
    when 2
      """2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.
"""
    when 1
      """1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
"""
    when 0
      <<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
      VERSE
    else
      """hi"
    end
  end
end

#print Bottles.new.verses(4, 1)
