class RailwayStation

  def initialize(station_name)
    @station_name = station_name
    train_list = {}
    print "Построена станция #{station_name}"
  end

  def gets_train(train_name, train_type)
    train_list[train_name] = train_type
    print "На станцию #{station_name} прибыл поезд #{train_name}"
  end

  def departure_train(train_name)
    train_list.delete(train_name)
    print "Поезд #{train_name} отправлен со станции #{station_name}"
  end

  def show_trains_list
    train_list.each { |train_name, train_type| puts "Список поездов на станции: #{train_name}" }
  end

  def show_trains_type
    p = 0
    g = 0
    train_list.each do |train_name, train_type|
      if train_type.downcase == 'пассажирский'
        p += 1
      else
        g += 1
      end
      print "На станции #{p} пассажирских поездов и #{g} грузовых"
  end

end

class Route

  def initialize(first_station, last_station)
    $first_station = first_station
    $last_station = last_station
    $station_list = [first_station, last_station]
    print "Поезд движется по маршруту #{$first_station} - #{$last_station}"
  end

  def add_station(add_station_name)
    $station_list.(lenght-1) << add_station_name
    print "Станция #{add_station_name} добавлена в маршрут"
  end

  def del_station(del_station_name)
    $station_list.delete(del_station_name)
    print "Станция #{del_station_name} удалена из маршрута"
  end

  def show_station_list
    print 'Список станций маршрута поезда: '
    $station_list.each {|station| puts station}
  end

end

class Train

  attr_accessor :speed, :carriage_quantity
  def initialize(train_name, train_type,carriage_quantity)
    @train_name = train_name
    @train_type = train_type.downcase
    @carriage_quantity = carriage_quantity
    speed = 0
    print "Создан #{train_type} поезд #{train_name}. Количество вагонов поезда: #{carriage_quantity}"
  end

  def decrease_speed(d_speed)
    self.speed -= d_speed
    print "Поезд сбавил скорость на #{d_speed}. Текущая скорость поезда: #{speed}"
  end

  def increase_speed(in_speed)
    self.speed += in_speed
    print "Поезд увеличил скорость на #{in_speed}. Текущая скорость поезда: #{speed}"
  end

  def show_speed
    print "Текущая скорость поезда: #{speed}"
  end

  def decrease_carriage
    if speed.zero?
      self.carriage_quantity -= 1
      print "Количество вагонов в поезде было уменьшено на 1. Текущее количество вагонов в поезде: #{carriage_quantity}"
    else print "Невозможно отцепить вагон, поезд находится в движении"
    end
  end

  def increase_carriage
      if speed.zero?
        self.carriage_quantity += 1
        print "Количество вагонов в поезде было увеличено на 1. Текущее количество вагонов в поезде: #{carriage_quantity}"
      else print "Невозможно прицепить вагон, поезд находится в движении"
      end
  end

      def show_carriage_quantity
        print "Текущее количество вагонов в поезде: #{carriage_quantity}"
      end

  def itinerary_train(departure_station, arrival_station)
    @departure_station = departure_station
    @arrival_station = arrival_station
    print "Поезд принял маршрут #{departure_station} - #{arrival_station}"
  end

end
