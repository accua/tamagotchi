class Tamagotchi
  define_method(:initialize) do |name, food_level = 10, sleep_level = 10, activity_level = 10, weight = 100|
    @name = name
    @food_level = food_level
    @sleep_level = sleep_level
    @activity_level = activity_level
    @weight = weight
  end

  define_method(:name) do
    @name
  end

  define_method(:food_level) do
      if @food_level > 10
        "Your Tamagotchi is full"
        @food_level = 10
      else
        @food_level
      end
  end

  define_method(:sleep_level) do
    @sleep_level
  end

  define_method(:activity_level) do
    @activity_level
  end

  define_method(:weight) do
    @weight
  end

  define_method(:set_food_level) do |hunger|
    @food_level = hunger
  end

  define_method(:is_alive) do
    if @food_level > 0
      true
    else
      false
    end
  end

  define_method(:time_passes) do
    @food_level -= 1
    @sleep_level -= 1
    @activity_level -= 1
    @weight -= 2
  end

  define_method(:feed) do
    @food_level += 1
    @weight += 8
  end

  define_method(:sleep) do
    @sleep_level += 1
    @weight += 3
  end

  define_method(:exercise) do
    @activity_level += 1
    @sleep_level -= 1
    @weight -= 10
  end
end
