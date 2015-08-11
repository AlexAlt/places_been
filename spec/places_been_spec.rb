require ('rspec')
require ('places_been')

describe(Places) do
  before() do
    Places.clear()
  end

  describe("#location") do
    it("let you give a location") do
      new_place = Places.new("Tennesse")
      expect(new_place.location()).to(eq("Tennesse"))
    end
  end

  describe('.all') do
    it('creates empty array to store locations') do
      expect(Places.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves locations into array') do
      new_place = Places.new("Canada")
      new_place.save()
      expect(Places.all()).to(eq([new_place]))
    end
  end

  describe('.clear') do
    it('clears the array containing all locations') do
      Places.clear()
      expect(Places.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns the id of a place') do
      new_place = Places.new("London")
      new_place.save()
      expect(new_place.id()).to(eq(1))
    end
  end

  describe('.find_delete') do
    it('finds the specified place by its id number then deletes') do
      new_place = Places.new("London")
      new_place.save()
      Places.find_delete(1)
      expect(Places.all()).to(eq([]))
    end
  end
end
