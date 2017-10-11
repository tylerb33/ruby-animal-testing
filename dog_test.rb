require 'minitest/autorun'
require_relative 'animal'
require_relative 'dog'

class DogTest < Minitest::Test 
    def setup
        @dog = Dog.new("Casi")
    end

    def test_initialize_with_param
        assert_equal "Casi", @dog.name
    end

    def test_if_speed_is_a_number
        @dog.speed = 101
        assert_instance_of Integer, @dog.speed
        @dog.speed = 20.123
        assert_instance_of Float, @dog.speed  
    end

    def test_if_instance_of_dog
        assert_instance_of Dog, @dog
    end

    def test_walk_when_legs_greater_than_zero
        @dog.legs = 1
        current_speed = @dog.speed
        @dog.walk
        assert_equal (current_speed + (0.2 * 1)),
        @dog.speed
    end

    def test_if_legs_is_a_number
        @dog.legs = 2
        assert_instance_of Integer, @dog.legs
        @dog.legs = 2.5
        assert_instance_of Float, @dog.legs
    end


    def test_if_name_is_an_accessible_property
        @dog.name = "Casi"
        assert_match @dog.name, "Casi"
    end

    def test_if_species_is_a_accessible_property
        @dog.species = "Dog"
        assert_match @dog.species, "Dog"
    end

    def test_if_speed_is_a_accessible_property
        @dog.speed = 12
        assert_equal @dog.speed, 12
    end

    def test_if_legs_is_a_accessible_property
        @dog.legs = 2
        assert_equal @dog.legs, 2
    end

    def test_if_name_is_a_string
        assert_instance_of String, @dog.name
    end

    def test_if_species_is_a_string
        assert_instance_of String, @dog.species
    end

    def test_if_speed_is_a_number
        @dog.speed = 101
        assert_instance_of Integer, @dog.speed
        @dog.speed = 20.123
        assert_instance_of Float, @dog.speed
        
    end
    


end