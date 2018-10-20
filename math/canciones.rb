fich= <<FIN 
/jazz/j00132.mp3  | 3:45 | Fats     Waller     | Ain't Misbehavin' 
/jazz/j00319.mp3  | 2:58 | Louis    Armstrong  | Wonderful World 
/bgrass/bg0732.mp3| 4:09 | Strength in Numbers | Texas Red
FIN

puts fich

class SongList
  def initialize
    @songs = Array.new
  end

  def append(aSong)
    @songs.push(aSong)
    self
  end

  def deleteFirst
    @songs.shift
  end

  def deleteLast
    @songs.pop
  end
end




