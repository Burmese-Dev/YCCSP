# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

def yccsp_pods
    pod 'RxSwift', '~> 5'
    pod 'Alamofire', '~> 5.2'
    pod 'SwiftyJSON', '~> 4.0'
end

target 'YCCSP' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  # Pods for YCCSP
  yccsp_pods
  target 'YCCSPTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'YCCSPUITests' do
    # Pods for testing
  end

end

target 'YCCSP-UAT' do
   yccsp_pods
end
