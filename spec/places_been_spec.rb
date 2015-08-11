require ('rspec')
require ('places_been')

describe(Places) do
  describe('#location') do
    it('returns location input') do
      new_place = Places.new("Tennesse")
      expect(new_place.location()).to(eq("Tennesse"))
    end
  end
end
