class Places

  @@all = []

  define_method(:initialize) do |location|
    @location = location
  end

  define_method(:location) do
    @location
  end

  define_singleton_method(:all) do
    @@all
  end

  define_method(:save) do
    @@all.push(self)
  end

end
