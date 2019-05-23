class RailwayStation
  attr_accessor :name
  attr_reader :trains

  def initialize(name)
    @name = name
    @trains = []
    print "Построена станция #{name}"
  end

  def gets_train(train)
    @trains << train
    print "На станцию #{name} прибыл поезд #{train.name}"
  end

  def departure_train(train)
    @trains.delete(train)
    print "Поезд #{train} отправлен со станции #{name}"
  end

  def show_trains
    puts 'Список поездов на станции:'
    @trains.each { |train| puts train }
  end

  def show_trains_type(type)
    puts "Список поездов типа #{type}, находящихся на станции #{name}"
    quantity = 0
    @trains.each do |train|
      if type == train.type
        puts "#{train.name}"
        quantity += 1
      end
    end
    puts "Количество поездов на станции: #{quantity}"
  end
end
