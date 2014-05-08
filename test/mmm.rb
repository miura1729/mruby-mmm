class Foo
  include MMMI
  extend MMMC

  def initialize
    @a = 1
  end
end

a = Foo.new
fst = a.inspect
a.move
p a
amov = a.inspect
p a
anew = a.inspect

assert('reuse moved object') do
  fst == amov
end

assert('Do not use reused object') do
  amov != anew
end

