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
end
