#includes the parser and the robots
class Application

  def start


    parser = Parser.new
    input = gets.chomp
    input_arr = input.split(' ')
    last_x = input_arr[0]
    last_y = input_arr[1]
    input1 = gets.chomp
    input1_arr = input1.split(' ')
    robot1 = Robot.new(input1_arr[0].to_i,input1_arr[1].to_i,input1_arr[2])
    input2 = gets.chomp
    input2_arr = input2.split(' ')

    input2_arr.each do |i|
      cmd = parser.parse(i,robot1)
      temp = cmd.execute(robot1)
    end

    input3 = gets.chomp
    input3_arr = input3.split(' ')
    robot2 = Robot.new(input3_arr[0].to_i,input3_arr[1].to_i,input3_arr[2])
    input4 = gets.chomp
    input4_arr = input4.split(' ')

    input4_arr.each do |i|
      cmd = parser.parse(i,robot2)
      temp = cmd.execute(robot2)
    end

    puts robot1.getCords.to_s + robot1.getDirxn
    puts robot2.getCords.to_s + robot2.getDirxn

  end

  def start_test
    parser = Parser.new
    input = Kernel.gets.chomp
  end

end
