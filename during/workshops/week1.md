---
layout: default
---

## Week 1 Workshop (2015-09-03)

### Classes and Objects

Based on instructions from [Problem of the Day](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/albums_and_artists)


#### Create an Album class that can store name, number in stock, and price.
  * create file called `album.rb`
  * write `initialize` method with parameters for object
  * write `name` method for object  

  *Solution:*


    class Album
      def initialize(name, stock, price)
        @name = name
        @stock = stock
        @price = price
      end

      def name
        @name
      end
    end

#### Write methods in the Album Class to:
  * Sell copies of an album in stock
  * Increase the number of albums in stock
  * Get a count of how many copies of an album you have in stock  

  *Solution:*


    def sell(amount)
      @stock -= amount
    end  

    def buy(amount)
      @stock += amount
    end  

    def stock
      @stock
    end

#### Create a new Artist class (once you know his/her name) that can assign an album to an Artist's catalog
  * create file called `artist.rb`
  * write `initialize` method with parameters for object
  * write methods for object  

  *Solution:*


    Class Artist
      def initialize(name)
        @name = name
        @albums = []
      end

      def albums
        @albums
      end

      def add_album(new_album)
        @albums << new_album
      end
    end

#### Put a discount percentage on an album. Get the current price of an album. Put a discount percentage on an artist's entire catalog.
  * write `price` and `discount` methods for Album  

  *Solution:*


    def price
      @price
    end

    def discount(ratio)
      @price -= ratio * @price
    end

  * write `discount` method for Artist  

  *Solution:*


    def discount(ratio)
      @albums.each do |album|
        album.discount(ratio)
      end
    end

#### Files Associated with Workshop
* [artist.rb](w1-4/artist.rb)
* [album.rb](w1-4/album.rb)
* [code.rb](w1-4/artist_code.rb)
* [All 3 Side-by-side](w1-4/screenshot2.png)


##### Notes
* Start with Artist next time instead of starting with Album.
