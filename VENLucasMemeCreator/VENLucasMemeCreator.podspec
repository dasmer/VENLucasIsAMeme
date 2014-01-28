Pod::Spec.new do |s|
  s.name         = "VENLucasMemeCreator"
  s.version      = "0.1.0"
  s.summary      = "LucasUsesVenmo -- Meme generator for iOS"
  s.description  = <<-DESC
                   LucasUsesVenmo -- Meme generator for iOS
                   DESC

  s.homepage     = "https://github.com/Dasmer/VENLucasIsAMeme"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Dasmer Singh" => "@dasmer" }
  s.platform     = :ios, '5.0'
  s.source_files = '**/*.{h,m}'
  s.resources    = ["Resources/*.*"]
  s.requires_arc = true
end
