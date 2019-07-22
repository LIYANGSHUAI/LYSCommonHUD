Pod::Spec.new do |s|
s.name         = "LYSCommonHUD"
s.version      = "0.0.1"
s.summary      = "对MBProgressHUD进行简单的封装"
s.description  = <<-DESC
对MBProgressHUD进行简单的封装
对MBProgressHUD进行简单的封装
DESC
s.homepage     = "https://github.com/LIYANGSHUAI/LYSCommonHUD"
s.platform       = :ios
s.license      = "MIT"
s.author             = { "LIYANGSHUAI" => "liyangshuai163@163.com" }
s.source       = { :git => "https://github.com/LIYANGSHUAI/LYSCommonHUD.git", :tag => "0.0.1" }
s.source_files  = "LYSCommonHUD/*.{h,m}"
s.dependency "MBProgressHUD", "~> 1.1.0"
end
