Pod::Spec.new do |s|
s.name         = "MBProgressHUD-YF"
s.version      = "0.0.1"
s.summary      = "An iOS activity indicator view."
s.description  = <<-DESC
MBProgressHUD is an iOS drop-in class that displays a translucent HUD
with an indicator and/or labels while work is being done in a background thread.
The HUD is meant as a replacement for the undocumented, private UIKit UIProgressHUD
with some additional features.
DESC
s.homepage     = "https://github.com/BigShow1949/MBProgressHUD-YF.git"
s.license      = { :type => 'MIT', :file => 'LICENSE' }
s.author       = { "BigShow1949" => "1029883589@qq.com" }
s.source       = { :git => "https://github.com/BigShow1949/MBProgressHUD-YF.git", :tag => "#{s.version}" }
s.ios.deployment_target = '6.0'
s.source_files = "MBProgressHUD+YF/Tool/**/*.{h,m}"
s.frameworks   = "CoreGraphics", "QuartzCore", "UIKit"
s.requires_arc = true
end
