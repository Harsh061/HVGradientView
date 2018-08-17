Pod::Spec.new do |s|
          #1.
          s.name               = "HVGradientView"
          #2.
          s.version            = "1.0.0"
          #3.  
          s.summary         = "This pod helps you add gradient effect to any view"
          #4.
          s.homepage        = "https://github.com/Harsh061/HVGradientView.git"
          #5.
          s.license              = "MIT"
          #6.
          s.author               = "Harshit"
          #7.
          s.platform            = :ios, "10.0"
          #8.
          s.source              = { :git => "https://github.com/Harsh061/HVGradientView.git", :tag => "1.0.0" }
          #9.
          s.source_files     = "HVGradientView", "HVGradientView/**/*.{h,m,swift}"
    end