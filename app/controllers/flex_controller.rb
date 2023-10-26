class FlexController < ApplicationController
  def home
  end
  def square_result
    @number=params.fetch("number").to_f
    @square=@number*@number
    render({ :template => "square_result"})
  end
  def square_root_result
    @number=params.fetch("user_number").to_f
    @squareroot=Math.sqrt(@number)
    render({ :template => "square_root_result"})
  end
  def payment_result
    @apr=params.fetch("user_apr").to_f
    @years=params.fetch("user_years").to_f
    @pv=params.fetch("user_pv").to_f
    r = @apr/100/12
    @pmt = (@pv * r) / (1 - (1 + r) ** -(@years*12))
    render({ :template => "payment_result"})
  end
  def random_result
    @min=params.fetch("user_min").to_f
    @max=params.fetch("user_max").to_f
    @output=rand(@min...@max)
    render({ :template => "random_result"})
  end
  def square
    render({ :template => "square"})
  end
  def square_root
    render({ :template => "square_root"})
  end
  def payment
    render({ :template => "payment"})
  end
  def random
    render({ :template => "random"})
  end
end
