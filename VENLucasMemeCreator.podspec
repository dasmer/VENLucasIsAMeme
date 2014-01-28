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
  s.source       = { :git => "https://github.com/Dasmer/VENLucasIsAMeme.git", :tag => "v#{s.version}" }
  s.source_files = 'VENLucasMemeCreator/**/*.{h,m}'
  s.resources    = ["VENLucasMemeCreator/Resources/*.*"]
  s.requires_arc = true
end
