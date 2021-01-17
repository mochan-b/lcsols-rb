require_relative '../lib/solution475'

describe "solution475" do
  context "Binary Search" do
    it "[1,2,3] 2 = 1" do
      nums = [1, 2, 3]
      x = 2
      result = find_heater(x, nums)
      expect(result).to eq 1
    end
  end

  context "Basic Algorithm" do
    it "[1,2,3], [2] = 1" do
      houses = [1, 2, 3]
      heaters = [2]
      result = find_radius(houses, heaters)
      expect(result).to eq 1
    end

    it "[1,3,2], [2] = 1" do
      houses = [1, 3, 2]
      heaters = [2]
      result = find_radius(houses, heaters)
      expect(result).to eq 1
    end

    it "[1,2,3,4], [1,4] = 1" do
      houses = [1, 2, 3, 4]
      heaters = [1, 4]
      result = find_radius(houses, heaters)
      expect(result).to eq 1
    end

    it "[1,5], [2] = 3" do
      houses = [1, 5]
      heaters = [2]
      result = find_radius(houses, heaters)
      expect(result).to eq 3
    end

    it "[1,5], [10] = 9" do
      houses = [1, 5]
      heaters = [10]
      result = find_radius(houses, heaters)
      expect(result).to eq 9
    end

    it "unsorted heaters" do
      houses = [282475249, 622650073, 984943658, 144108930, 470211272, 101027544, 457850878, 458777923]
      heaters = [823564440, 115438165, 784484492, 74243042, 114807987, 137522503, 441282327, 16531729, 823378840, 143542612]
      result = find_radius(houses, heaters)
      expect(result).to eq 161834419
    end

    it "[474833169,264817709,998097157,817129560],[197493099,404280278,893351816,505795335]" do
      houses = [474833169, 264817709, 998097157, 817129560]
      heaters = [197493099, 404280278, 893351816, 505795335]
      result = find_radius(houses, heaters)
      expect(result).to eq 104745341
    end
  end
end

