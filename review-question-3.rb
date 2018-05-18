require 'pry'

# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class

class Photo

    ALL = []

    attr_accessor :user

    def initialize
      ALL << self
    end

    def self.all
      ALL
    end

    def self.user_photos(user)
      self.all.select do |photo|
        photo.user == user
      end
    end

    def make_comment(comment)
      Comment.new(comment)
    end

    def comments
      Comment.all
    end

end

class User
  attr_accessor :name

  def initialize(name)
      @name = name
  end

  def photos
    Photo.user_photos(self)
  end

end

class Comment

  ALL = []

  attr_accessor :comment

  def initialize(comment)
    @comment = comment
    ALL << self
  end

  def self.all
    ALL
  end

end

photo = Photo.new
user = User.new("Sophie")
photo.user = user

puts "\nPhoto user 1 #{photo.user.name}"
# => "Sophie"

puts "User 1 photos #{user.photos}"
# => [<photo 1>]

photo_fun = Photo.new
user = User.new("Alana")
photo_fun.user = user

puts "\nPhoto user 2 #{photo_fun.user.name}"
puts "User 2 photos #{user.photos}"

puts "\nPhoto comments (empty) #{photo.comments}"
# => []

photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
photo.make_comment("really nice photo, I like it very much, makes me hungry!")
puts "\nPhoto comments #{photo.comments}"
# => [<comment1>]

puts "\nPhoto comments #{Comment.all}"
#=> [<comment1>]
