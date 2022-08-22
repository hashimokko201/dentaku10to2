require 'sinatra'

set :environment, :production

get '/' do
  erb :index
end


post '/push' do
  #puts "10進数を入力してください、2進数に変換します。"
  int = params[:num].chomp.to_i
  s = []
  until(int == 0) do
    s.push(int%2)
    int = int/2
  end

  rs = s.reverse

  "#{rs.join}
  <br>
  <br>
  <a href='/'>Back</a>"
end
