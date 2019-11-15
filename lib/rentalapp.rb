class RentalApp

    attr_reader :car , :transaction
    attr_accessor :driver

    
    def run
        @prompt = TTY::Prompt.new
        greet
        log_name = login_signup
        enter_age(log_name)
        enter_yrs_drive(log_name)
        enter_accident(log_name)
        main_menu
        
    end

    def greet
        puts "Welcome to TeslaRenters"
    end

    def login_signup
        puts "Get your Tesla in a matter of minutes!"
        name = @prompt.ask("Enter your name to get started")

        @driver = Driver.find_or_create_by(name: name)


    end

    def enter_age(log_name)

        get_age = @prompt.ask("Enter your age")
        log_name.age = get_age
        log_name.save

    end

    def enter_yrs_drive(log_name)
        get_yrs_drive = @prompt.ask("Enter your years of active driving")
        log_name.yrs_drive = get_yrs_drive
        log_name.save
    end

    def enter_accident(log_name)
        
        get_accident = @prompt.ask("Enter your number of past accidents")
        log_name.accident = get_accident
        log_name.save
    end

    def main_menu
        menu_choice = @prompt.select("What do you want to do?",["Rent a car", "My Cars", "Exit"])
            if menu_choice == "Rent a car"
                choose_car_model
            elsif menu_choice == "My Cars"
                user_cars
            end
    end
    def choose_car_model
        selected_model = @prompt.select("pick model type", ["S","Y","3","X","Roadster"])
        
        if selected_model == "S"
           s_cars = Car.all.select do |car|
               car.model == "S" 
            end
            
            car_years  = []
            s_cars.each do |av_car|
                car_years << av_car.year
            end
             year_selected = @prompt.select("Pick a year", car_years)
             
        elsif selected_model == "Y"
            s_cars = Car.all.select do |car|
                car.model == "Y" 
                end
                car_years  = []
                s_cars.each do |av_car|
                    car_years << av_car.year
                end
                year_selected = @prompt.select("Pick a year", car_years)
        elsif selected_model == "3"
            s_cars = Car.all.select do |car|
                car.model == "3" 
                end
                car_years  = []
                s_cars.each do |av_car|
                    car_years << av_car.year
                end
                year_selected = @prompt.select("Pick a year", car_years)
        elsif selected_model == "X"
            s_cars = Car.all.select do |car|
                car.model == "X" 
                end
                car_years  = []
                s_cars.each do |av_car|
                    car_years << av_car.year
                end
                year_selected = @prompt.select("Pick a year", car_years)
        elsif selected_model == "Roadster"
            s_cars = Car.all.select do |car|
                car.model == "Roadster" 
                end
                car_years  = []
                s_cars.each do |av_car|
                    car_years << av_car.year
                end
                year_selected = @prompt.select("Pick a year", car_years)
        end

        choose_car_year(year_selected)
    end

    def choose_car_year(year)
        
        @s_year = Car.find do |car|
            car.year == year           
        end
        # binding.pry        
             car_price = @s_year.price
                puts "$#{car_price} is the price per day"
                pay_rental(car_price)
                
            
                
            # found_car = Car.find_by(price: car_price, year: @s_year)
        
            # binding.pry
            # chosen_car = found_car.each do |f_car|
            #     f_car.id
            # end

    end

    def my_cars_menu
        yes_no = @prompt.select("Would you like to Cancel a reservation?", ["yes","no"])
        
        if yes_no == "yes"
           canceled_car = @prompt.select("Select the reservation to cancel.", @driver_cars)
            drop_car(canceled_car)
        elsif yes_no == "no"
            main_menu
        end
    end

    def drop_car(canceled)
        # canceled_car = @prompt.select("Select the reservation to cancel.", @driver_cars)

        cancellation = Transaction.find(canceled.id).destroy
        cancellation.save
        puts "Your reservation has been canceled."
        main_menu
    end

    def user_cars
        # binding.pry
        @driver_cars = @driver.transactions.each do |tra|
            puts "Paid: #{tra.paid},Driver ID:#{tra.driver_id}, Car ID: #{tra.car_id}, Transaction: #{tra.id}"
            
        end
        yes_no = @prompt.select("Would you like to do something else?", ["yes","no"])

            if yes_no == "yes"
                my_cars_menu

            elsif yes_no == "no"
                puts "Have a good day, please come again!"    
            end

    end 

    # def choose_car_color(@s_year)

    # end

    # def select_
 
    
    def pay_rental(price_to_pay)
        yes_no = @prompt.select("Would you like to rent this Tesla?", ["yes","no"])
        

        if yes_no == "yes"
            t = Transaction.create(paid: price_to_pay, driver_id: @driver.id, car_id: @s_year.id)
            puts "Thank you!"
            main_menu

        elsif yes_no == "no"
            puts "Have a good day, please come again!"
            main_menu
        end
    end

    # def check_transaction
       
    # end
    # def find_driver(car)

    #     Driver.all 
    #     # transaction_instance = Transaction.all.select do |transaction|
    #     #     transaction.car_id == car.id 
    #     # end 
    #     # Driver.all.select do |driver|
    #     #     driver.id == transaction_instance.driver_id
    #     # end 
    # end

    # def show_drivers(driver)
    #     driver.
    
    # end
    # def menu
    #     puts "What would you like to do today?"
    #     puts "1.Rent a Car\n 2.Check transactions\n 3.Exit"
    #        select_choice = gets.chomp

    #     if select_choice == 1
    #         car_mod = choose_car_model
    #         price_to_pay = choose_car_year(car_mod)
    #         pay_rental(price_to_pay)

    #     elsif select_choice == 2
    #         check_transaction

    #     elsif select_choice == 3
    #         puts "Have a good day, please come again!"
    #     end
    # end
end