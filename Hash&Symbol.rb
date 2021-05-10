=begin 
currencies={'japan'=>'yen','us'=>'dollar','india'=>'rupee'}
puts currencies['japan']
=end

=begin
currensies2={'japan'=>'yen','us'=>'dollar','india'=>'rupee'}
currensies2['italy']='euro'
p currensies2
=end

=begin
currensies3={'japan'=>'yen','us'=>'dollar','india'=>'rupee'}
currensies3.each do |key,value|
    puts "#{key} : #{value}"
end

currensies3.each do |key_value|
    puts "#{key_value[0]} : #{key_value[1]}"
end
=end

=begin
a={'x'=>1,'y'=>2,'z'=>3}
b={'x'=>1,'y'=>2,'z'=>3}
p a==b

c={'y'=>2,'z'=>3,'x'=>1}
p a==c
=end

=begin
currensies4={'japan'=>'yen','us'=>'dollar','india'=>'rupee'}
puts  currensies4.delete('japan'){|key| "Not Found : #{key}"}
p currensies4
=end

=begin
p :apple.class
p 'apple'.class

p :apple.object_id
p :apple.object_id
p :apple.object_id

p 'apple'.object_id
p 'apple'.object_id
p 'apple'.object_id

string="apple"
string.upcase
p string
string.upcase!
p string

symbol=:apple
symbol.upcase! #error
=end

=begin
currencies5={:japan=>'yen',:us=>'dollar',:india=>'rupee'}
p currencies5[:japan]

currencies5[:italy]='euro'
p currencies5
=end

=begin
hash={'abc'=>123,def: 456}
p hash['abc']
p hash[:def]

person={
    name:'Alice',
    age: 20,
    frends: ['Bob','Carol'],
    phones: {home: '1234-0000', mobile: '5678-0000'}
}
p person[:age]
p person[:friends]
p person[:phones][:mobile]
=end

=begin
def buy_burger(menu,drink,potato)
    if drink
    end
    if potato
    end
end

buy_burger('cheese',true,true)
buy_burger('fish',true,false)
=end

=begin
def buy_burger(menu, drink: true, potato: true)
end

buy_burger('cheese',true,true)
buy_burger('fish',drink: true,poato: true)
=end








