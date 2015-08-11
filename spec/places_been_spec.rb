require ('rspec')
require ('places_been')

describe(Places) do
  describe("#location") do
    it("let you give a location") do
      new_place = Places.new("Tennesse")
      expect(new_place.location()).to(eq("Tennesse"))
    end
  end
end
