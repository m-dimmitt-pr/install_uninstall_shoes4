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

          script_content = File.read(File.join(__FILE__, "../app/aerial_desktop_install.sh"))
          output_path = File.join(Dir.tmpdir, "scripty.sh")

          File.write(output_path, script_content)
          File.chmod(0755, output_path)
          # @out = `#{output_path}`
          # @out = '        ' + @out
          # @s.clear { para @out }
          para `#{output_path}`
          File.delete(output_path)

        end
        button 'Click to uninstall', size: 29, :margin_left => '185%' do

          script_content = File.read(File.join(__FILE__, "../app/aerial_desktop_uninstall.sh"))
          output_path = File.join(Dir.tmpdir, "scripty.sh")

          File.write(output_path, script_content)
          File.chmod(0755, output_path)
          @out = `#{output_path}`
          @out = '        ' + @out
          @s.clear { para @out }
          File.delete(output_path)
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
