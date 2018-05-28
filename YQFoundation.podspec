

Pod::Spec.new do |s|

  s.name         = "YQFoundation"
  s.version      = "0.1.1"
  s.summary      = "iOS 基础库"

  s.description  = <<-DESC
		   iOS 基础库,持续更新
                   DESC

  s.homepage     = "https://github.com/GitHubLcy/YQFoundation.git"

  s.license      = "MIT"

  s.author             = { "SpringSunLcy" => "13391550973@163.com" }

  s.platform     = :ios, "8.0"
  s.ios.deployment_target = "8.0"

  s.source       = { :git => "https://github.com/GitHubLcy/YQFoundation.git", :tag => "#{s.version}" }

  s.source_files  = "YQFoundation/YQFoundation/Classes/*.{h,m}"
  s.exclude_files = "Classes/Exclude"

end
