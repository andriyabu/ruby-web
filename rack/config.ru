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

        # or just one line code :
        [200,{"Content-Type" => "text/html"},["<html> <body> <h1 style='color: blue'> Yay my first html in ruby </h1> </body> </html>"]]
    end
end


# or using lambda
# application = lambda do |env|
#     [200, {"Content-Type" => "text/html"},["Yai.. this is my first html :)"]]
# end

# run application
run Application.new 