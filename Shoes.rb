require 'shoes'
Shoes.app(title: "Desktop Background to Screen Saver", width: 600, height: 400, :align => 'center') do
  background white
  stack margin: 1, width: 600, height: 400 do
  border black, strokewidth: 3
    stack margin: 10 do
      stack margin: 10 do
        background gainsboro
        subtitle "Click to Install or Uninstall\n", :align => 'center'
      end
    end
    stack align: 'center'
      flow do
        @s = stack {}
        button 'Click to install', size: 29, :margin_left => '65%' do
          @s.clear { para @out }
        end
        button 'Click to uninstall', size: 29, :margin_left => '185%' do
          @s.clear { para @out }
        end
      end
      flow do
        stack width: 65 do
          @image = image 'app/images/install.png',:margin_left => '33%'
        end
        stack width: 100 do
          @image = image 'app/images/uninstall.png',:margin_left => '260%'
        end
      end
    end
end
