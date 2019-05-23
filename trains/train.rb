class Train
  attr_accessor :speed, :car
  attr_reader :name, :type

  def initialize(name, type, car)
    @name = name
    @type = type.downcase
    @car = car
    @speed = 0
    print "Создан #{type} поезд #{name}. Количество вагонов поезда: #{car}"
  end

  def increase_speed(change)
    self.speed += change
    print "Поезд увеличил скорость на #{change}. Текущая скорость поезда: #{@speed}"
  end

  def decrease_speed(change)
    self.speed -= change
    print "Поезд сбавил скорость на #{change}. Текущая скорость поезда: #{@speed}"
  end

  def show_speed
    print "Текущая скорость поезда: #{@speed}"
  end

  def increase_car
    if speed.zero?
      self.car += 1
      print "Количество вагонов в поезде было увеличено на 1. Текущее количество вагонов в поезде: #{@car}"
    else
      print "Невозможно прицепить вагон, поезд находится в движении"
    end
  end

  def decrease_car
    if speed.zero?
      self.car -= 1
      print "Количество вагонов в поезде было уменьшено на 1. Текущее количество вагонов в поезде: #{@car}"
    else
      print "Невозможно отцепить вагон, поезд находится в движении"
    end
  end

  def show_car_quantity
    print "Текущее количество вагонов в поезде: #{@car}"
  end

  def route_train(departure_station, arrival_station)
    @departure_station = departure_station
    @arrival_station = arrival_station
    print "Поезд принял маршрут #{departure_station} - #{arrival_station}"
  end

  def next_station
    route.@stations.each do |station|
      if station == railwaystation.name
        railwaystation.name.departure_train
        route.@stations[railwaystation.name + 1].gets_train
        print "Поезд отправился со станции #{railwaystation.name} на станцию #{route.@stations[railwaystation.name + 1]}"
      end
    end
  end

  def show_stations_around
    route.@stations.do |station|
    if station == railwaystation.name && railwaystation.@trains.include?(@name)
    print "Поезд сейчас находится на станции #{railwaystation.name}. Предыдущая станция маршрута #{route.@stations[railwaystation.name - 1]}, следующая станция маршрута #{route.@stations[railwaystation.name + 1]}"
    end
  end
end
