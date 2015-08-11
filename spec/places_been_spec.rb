require ('rspec')
require ('places_been')

describe(Places) do
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
end
