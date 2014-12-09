#CODE ALONG & LAB WORK 

#Create a Robot Factor
# 

require 'pry'
require 'pry-byebug'
 
#State & Object Factory: factory that creates and instiantes the robots
#Behavior: Collection of class methods, instance methods, instance variable, local variables, constants etc., 
 
class Robot
 
  #getter && setter methods for each attribute
  attr_accessor  :name, :type, :origin
 
  #instance variables are available through the class. @name is an instance variable 
  def initialize(name, type, origin)
  end
 
  #instance method
  def fly
  end
 
  def laser_master
  end
 
 
 def self.make_robots(number_of_robots)
 end

 def self.random_robot_make
 end

 def to_s
 end
 
private
 
#usually used within instance && class methods.
def add_wings_and_take_off
end

def add_laser_training
end

 
end

robot = Robot.new("Celeste", "Android", "Trinidad")
 
# Robot.random_robot_maker
# Robot.make_robots(20)
 
# happy_robot = Robot.random_robot_maker
# happy_robot.fly
# happy_robot.laser_master 