Shoes.app do
  @o = oval :top => 0, :left =>0,
            :radius => 40
 
  stack :margin => 40 do
   @status = para "One moment..."
   title "Dancing With a Circle"
   subtitle "How graceful and round."
   download "http://www.google.com/search?q=shoes" do |goog|
     @status.text = "Headers: " + goog.response.headers.inspect
   end
  end

  motion do |x, y|
    @o.move width - x, height - y
  end
end

