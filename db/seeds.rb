Car.destroy_all
Driver.destroy_all
Transaction.destroy_all


tsb17 = Car.create({model: "S",year: 2017, miles: 500,color: "Black",price: 400})
txr15 = Car.create({model: "X",year: 2015, miles: 2000,color: "Red",price: 300})
tsb19 = Car.create({model: "S",year: 2019, miles: 0,color: "Black",price: 1000})
trr20 = Car.create({model: "Roadster",year: 2020, miles: 0,color: "Red",price: 1500})
txr16 = Car.create({model: "X",year: 2016, miles: 300,color: "Red",price: 300})
tsb14 = Car.create({model: "S",year: 2014, miles: 600,color: "Black",price: 600})
t3r17 = Car.create({model: "3",year: 2017, miles: 10_000,color: "Red",price: 350})
t3b16 = Car.create({model: "3",year: 2016, miles: 20_000,color: "Black",price: 250})
tyw20 = Car.create({model: "Y",year: 2020, miles: 0,color: "White",price: 500})
tsw18 = Car.create({model: "S",year: 2018, miles: 1000,color: "White",price: 800})
t3b19 = Car.create({model: "3",year: 2019, miles: 0,color: "Black",price: 500})
tss17 = Car.create({model: "S",year: 2015, miles: 800,color: "Silver",price: 600})
tsw17 = Car.create({model: "S",year: 2016, miles: 350,color: "White",price: 500})
tsb13 = Car.create({model: "S",year: 2013, miles: 5000,color: "Black",price: 250})
txs17 = Car.create({model: "X",year: 2017, miles: 9000,color: "Silver",price: 250})

kobe = Driver.create({name: "Kobe",age: 41,yrs_drive: 22, accident: 2})
lebron = Driver.create({name: "Lebron",age: 34,yrs_drive: 14, accident: 0})
Driver.create({name: "Serena",age: 38,yrs_drive: 20, accident: 3})
Driver.create({name: "Russell",age: 31,yrs_drive: 7, accident: 5})
Driver.create({name: "Gabby",age: 23,yrs_drive: 2, accident: 1})
Driver.create({name: "Venus",age: 39,yrs_drive: 24, accident: 1})
Driver.create({name: "Mike",age: 56,yrs_drive: 40, accident: 3})
Driver.create({name: "Simone",age: 22,yrs_drive: 13, accident: 0})
Driver.create({name: "Steph",age: 31,yrs_drive: 9, accident: 1})
Driver.create({name: "Kawhi",age: 28,yrs_drive: 11, accident: 0})
Driver.create({name: "Kyrie",age: 27,yrs_drive: 9, accident: 3})

t_1=Transaction.create({paid:400 ,driver_id: 3,car_id: 4,})
t_2=Transaction.create({paid: 800,driver_id: 5,car_id: 8,})
t_3=Transaction.create({paid: 800,driver_id: 4,car_id: 8,})
t_4=Transaction.create({paid: 350,driver_id: 7,car_id: 9,})
t_5=Transaction.create({paid: 550,driver_id: 4,car_id: 6,})



