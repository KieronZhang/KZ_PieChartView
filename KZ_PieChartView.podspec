
Pod::Spec.new do |s|

    s.name = 'KZ_PieChartView'
    s.version = '0.1.2'
    s.summary = 'iOS Pie Chart.'
    s.homepage = 'https://github.com/KieronZhang/KZ_PieChartView'
    s.license = {:type => 'MIT', :file => 'LICENSE'}
    s.author = {'KieronZhang' => 'https://github.com/KieronZhang'}

    s.source = {:git => 'https://github.com/KieronZhang/KZ_PieChartView.git', :tag => s.version, :submodules => true}
    s.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}
    s.requires_arc = true

    s.ios.frameworks = 'Foundation', 'UIKit'

    s.ios.deployment_target = '8.0'

    s.ios.vendored_frameworks = 'KZ_PieChartView/KZ_PieChartView_iOS.framework'

end
