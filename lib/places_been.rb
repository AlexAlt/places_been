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

  define_singleton_method(:clear) do
    @@all = []
  end

  define_method(:remove) do
    @@all.delete(self)
  end
end
