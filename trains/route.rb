class Route
  attr_reader :stations
  def initialize(first, last)
    @stations = [first, last]
    print "Поезд движется по маршруту #{stations.first} - #{stations.last}"
  end

  def add_station(station)
    stations.insert(-2, station)
    print "Станция #{station} добавлена в маршрут"
  end

  def del_station(station)
    stations.delete(station)
    print "Станция #{station} удалена из маршрута"
  end

  def show_stations
    puts 'Список станций маршрута поезда: '
    stations.each {|station| puts station}
  end
end
