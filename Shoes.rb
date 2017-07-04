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
          @out = File.expand_path(File.dirname(__FILE__))
          @out = 'Install was clicked, filepath for Shoes.rb in Shoes.jar' + @out
          @s.clear { para @out }
          load 'shoes-app/app/install_driver.rb'
        end
        button 'Click to uninstall', size: 29, :margin_left => '185%' do
          @out = File.expand_path(File.dirname(__FILE__))
          @out = 'Uninstall was clicked, filepath for Shoes.rb in Shoes.jar' + @out
          @s.clear { para @out }
          load 'shoes-app/app/uninstall_driver.rb'
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
