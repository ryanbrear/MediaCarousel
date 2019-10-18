  Pod::Spec.new do |spec|
  spec.name         = "MediaCarousel"
  spec.version      = "1.0.0"
  spec.summary      = "A UIcomponent modeled after a collection view that allows you to display cells with an image and a title."
  spec.description  = <<-DESC

    "A UIcomponent modeled after a collection view that allows you to display cells with an image and a title."

                   DESC
  spec.homepage     = "https://github.com/ryanbrear/MediaCarousel"
  spec.license      = "MIT"
  spec.author             = { "Ryan Brear" => "ryanbrear@glucode.com" }
  spec.platform     = :ios, "12.0"
  s.source       = { :git => "https://github.com/ryanbrear/MediaCarousel.git", :tag => "1.0.0" }
  # spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.source_files = "MediaCarousel"
  spec.exclude_files = "Classes/Exclude"
  s.swift_version = "5.0"
end
