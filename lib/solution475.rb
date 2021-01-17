# @param {Integer} house
# @param {Integer[]} heaters
# @return {Integer}
def find_heater(house, heaters_sorted)
  left = 0
  right = heaters_sorted.length() - 1
  while left <= right do
    mid = (left + right) / 2
    if heaters_sorted[mid] == house
      return mid
    elsif heaters_sorted[mid] < house
      left = mid + 1
    else
      right = mid - 1
    end
  end
  left
end

# @param {Integer[]} houses
# @param {Integer[]} heaters
# @return {Integer}
def find_radius(houses, heaters)
  heaters_sorted = heaters.sort

  houses.sort.map do |house|
    heater_index = find_heater(house, heaters_sorted)
    left_dist_fn = lambda { house - heaters_sorted[heater_index - 1] }
    right_dist_fn = lambda { heaters_sorted[heater_index] - house }
    if heater_index == 0
      right_dist_fn.()
    elsif heater_index == heaters_sorted.length()
      left_dist_fn.()
    else
      [left_dist_fn.(), right_dist_fn.()].min
    end
    end.max
end
