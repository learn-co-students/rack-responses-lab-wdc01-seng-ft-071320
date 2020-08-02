class Application

  def call(env)
    
    answer = Rack::Response.new

      time = Time.now.hour
      # answer.write "#{time}\n"
            
      if time <= 12
        answer.write "Good Morning!"
      else
        answer.write "Good Afternoon!"
      end

      answer.finish
  end

end