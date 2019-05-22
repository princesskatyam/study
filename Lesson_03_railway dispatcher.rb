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
    @first_station = first_station
    @last_station = last_station
    station_list = [first_station, last_station]
    print "Поезд движется по маршруту #{first_station} - #{last_station}"
  end

  def add_station(add_station_name)
    station_list.(lenght-1) << add_station_name
    print "Станция #{add_station_name} добавлена в маршрут"
  end

  def del_station(del_station_name)
    station_list.delete(del_station_name)
    print "Станция #{del_station_name} удалена из маршрута"
  end

  def show_station_list
    print 'Список станций маршрута поезда: '
    station_list.each {|station| puts station}
  end

end

class Train
  attr_accessor :speed
  def initialize(train_type,carriage_quantity)
    @train_type = train_type
    @carriage_quantity = carriage_quantity
    speed = 0
  end
end
