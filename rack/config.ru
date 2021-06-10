class Application
    def call(env)
        # status = 200
        # headers = {"Content-Type" => "text/html"}
        # body = ["
        #     <html> 
        #     <body>
        #     <h1 style='color: red'>
        #     Yay.. my first html
        #     </h1>
        #     </body>
        #     </html>"]

        # [status,headers,body]
        p inspect_env(env) #print env information
        # or just one line code :
        [200,{"Content-Type" => "text/html"},["<html> <body> <h1 style='color: blue'> Yay my first html in ruby </h1> </body> </html>"]]
    end

    def inspect_env(env)
        puts format("Request Headers", request_headers(env))
        puts
        puts format("Server Info"), server_info(env)
        puts
        puts format("Rack Info", rack_info(env))
    end

    def request_headers(env)
        env.select {|key,kalue| key.include?("HTTP_")}
    end

    def server_info(env)
        env.reject {|key, value| key.include?("HTTP_") or key.include?("rack.")}
    end

    def rack_info(env)
        env.select {|key,value| key.include?("rack.")}
    end

    def format_pairs(pairs)
        pairs.map {|key, value| ' '+[key, value.inspect].join(': ')}
    end
end


# or using lambda
# application = lambda do |env|
#     [200, {"Content-Type" => "text/html"},["Yai.. this is my first html :)"]]
# end

# run application
run Application.new 