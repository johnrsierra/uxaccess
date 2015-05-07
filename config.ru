use Rack::Static,
  :urls => ["/js", "/css", "/*"],
  :root => "public"

map "/" do
  run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/index.html', File::RDONLY)
  ]
}
end

map "/inicial.html" do
  run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/inicial.html', File::RDONLY)
  ]
}
end

map "/mensajes.html" do
  run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/mensajes.html', File::RDONLY)
  ]
}
end

map "/mapa.html" do
  run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/mapa.html', File::RDONLY)
  ]
}
end

map "/feedback.html" do
  run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/feedback.html', File::RDONLY)
  ]
}
end

map "/survey.html" do
  run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/survey.html', File::RDONLY)
  ]
}
end