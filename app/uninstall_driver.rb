

`say "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd );"echo "    application uninstalled, script location:'$DIR'"`
p = File.dirname(__FILE__)
q = File.expand_path(File.dirname(__FILE__))
`say "#{p} and finally #{q}"`
puts p
