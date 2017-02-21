# Diamond_test.rb
require 'minitest/autorun'
require_relative 'diamond'

class Diamond_Test < Minitest::Test
	def test_init_void_return_A
    	diamond = Diamond.new("")
    	assert_equal diamond.create_diamond, ""
  	end
	def test_init_a_return_A
    	diamond = Diamond.new('a')
    	assert_equal diamond.create_diamond, "A\n"
  	end
  	def test_init_A_return_A
    	diamond = Diamond.new('A')
    	assert_equal diamond.create_diamond, "A\n"
  	end
  	def test_init_b_return_diamond_B
    	diamond = Diamond.new('b')
    	assert_equal diamond.create_diamond, " A\nB B\n A\n"
  	end
  	def test_init_B_return_diamond_B
    	diamond = Diamond.new('B')
    	assert_equal diamond.create_diamond, " A\nB B\n A\n"
  	end
  	def test_init_B_and_call_create_diamond_twice
    	diamond = Diamond.new('B')
    	assert_equal diamond.create_diamond, " A\nB B\n A\n"
    	assert_equal diamond.create_diamond, " A\nB B\n A\n"
  	end
  	def test_init_Z_return_diamond_Z
    	diamond = Diamond.new('Z')
    	expected_output = <<-EOF
                         A
                        B B
                       C   C
                      D     D
                     E       E
                    F         F
                   G           G
                  H             H
                 I               I
                J                 J
               K                   K
              L                     L
             M                       M
            N                         N
           O                           O
          P                             P
         Q                               Q
        R                                 R
       S                                   S
      T                                     T
     U                                       U
    V                                         V
   W                                           W
  X                                             X
 Y                                               Y
Z                                                 Z
 Y                                               Y
  X                                             X
   W                                           W
    V                                         V
     U                                       U
      T                                     T
       S                                   S
        R                                 R
         Q                               Q
          P                             P
           O                           O
            N                         N
             M                       M
              L                     L
               K                   K
                J                 J
                 I               I
                  H             H
                   G           G
                    F         F
                     E       E
                      D     D
                       C   C
                        B B
                         A
    	EOF
    	assert_equal diamond.create_diamond, expected_output
  	end
  	def test_multi_letter_return_diamond_of_first_letter
    	diamond = Diamond.new("Afkjvsfkvnvvsdfjnvskdfn")
    	assert_equal diamond.create_diamond, "A\n"
  	end
end