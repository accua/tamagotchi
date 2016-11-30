require("rspec")
require("tamagotchi")

describe(Tamagotchi) do
  describe("#initialize") do
    it("sets the name and life levels of a new Tamagotchi") do
      my_pet = Tamagotchi.new("Birdie")
      expect(my_pet.name()).to(eq("Birdie"))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(10))
    end
  end

  describe("#is_alive") do
    it("is alive if the food level is above 0") do
      my_pet = Tamagotchi.new("Birdie")
      expect(my_pet.is_alive()).to(eq(true))
    end

    it("is dead if food level is 0") do
      my_pet = Tamagotchi.new("Birdie")
      my_pet.set_food_level(0)
      expect(my_pet.is_alive()).to(eq(false))
    end
  end

  describe("#time_passes") do
    it("decreases the amount of food the Tamagotchi has left by 1") do
      my_pet = Tamagotchi.new("Birdie")
      my_pet.time_passes()
      expect(my_pet.food_level()).to(eq(9))
    end
  end
  describe("#feed") do
    it("increase the amount of the food the Tamagotchi by 1") do
      my_pet = Tamagotchi.new("Birdie")
      my_pet.time_passes()
      my_pet.time_passes()
      my_pet.feed()
      expect(my_pet.food_level()).to(eq(9))
    end
  end
  describe("#sleep") do
    it("increases the amount of sleep the Tamagotchi has") do
      my_pet = Tamagotchi.new("Birdie")
      my_pet.time_passes()
      my_pet.time_passes()
      my_pet.time_passes()
      my_pet.sleep()
      expect(my_pet.sleep_level()).to(eq(8))
    end
  end
  describe("#exercise") do
    it("increases the amount of activity the Tamagotchi has") do
      my_pet = Tamagotchi.new("Birdie")
      my_pet.time_passes()
      my_pet.time_passes()
      my_pet.time_passes()
      my_pet.exercise()
      expect(my_pet.activity_level()).to(eq(8))
    end
  end
  describe("#weight") do
    it("increases and decreases based on activity, feeding, and sleep.") do
      my_pet = Tamagotchi.new("Birdie")
      my_pet.time_passes()
      my_pet.sleep()
      my_pet.feed()
      my_pet.exercise()
      expect(my_pet.weight()).to(eq(99))
    end
  end
end
