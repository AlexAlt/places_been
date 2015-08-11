class Places
  @@all = []

  define_method(:initialize) do |location|
    @location = location
    @id = location
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

  define_method(:id) do
    @id
  end

  define_singleton_method(:find_delete) do |identification|
    found_place = nil
    @@all.each() do |place|
      if place.id().eql?(identification)
        found_place = place
      end
    end
    found_place
    @@all.delete(found_place)
    @@all
  end
end




  # define_method(:remove) do
  #   if @@all.include?(self)
  #     @@all.delete(self)
  #   end
  # end
