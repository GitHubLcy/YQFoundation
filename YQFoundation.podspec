

Pod::Spec.new do |s|

  s.name         = "YQFoundation"
  s.version      = "0.1.6"
  s.summary      = "iOS 基础库"

  s.description  = <<-DESC
		   iOS 基础库,持续更新
                   DESC

  s.homepage     = "https://github.com/GitHubLcy/YQFoundation.git"

  s.license      = "MIT"

  s.author             = { "SpringSunLcy" => "13391550973@163.com" }

  s.platform     = :ios, "9.0"
  s.ios.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/GitHubLcy/YQFoundation.git", :tag => "#{s.version}" }

  s.source_files  = "YQFoundation/Classes/*.{h,m}"

  s.subspec 'UI' do |ssUI|
    ssUI.source_files = 'YQFoundation/Classes/UI/*.{h,m}'
  end
  s.subspec 'Category' do |ssCA|
    ssCA.source_files = 'YQFoundation/Classes/Catetory/*.{h,m}'
  end

end
