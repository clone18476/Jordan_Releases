class JordanReleases::CLI
  def call
    puts "\nWelcome SneakerHead\n"
    puts "\nPlease enter a month\n"
    get_available_months
    get_user_month
    choosen_month
    #get user input, ask for a month
    #get sneaker releases for that month
    #get user input, select from info provided for specific release date
    end

    def get_available_months
      #this info will be scraped from the website
      @months = ["January 2021", "February 2021", "March 2021", "April 2021", "May 2021", "June 2021",
                "July 2021", "August 2021", "September 2021", "October 2021", "November 2021", "December 2021"]
    end

    def get_user_month
      puts "Choose a month to see releases"
      @months.each.with_index(1) { |month, index| puts "#{index} #{month}"}
    end

    def choosen_month
      choosen_month = gets.strip
      binding.pry
    #  if choosen_month.to_i <= @months.length && < 0
    end

    def valid_month?(input, data)
      input.to_i <= data.length && input.to_i > 0
    end

end
