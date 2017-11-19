
Pod::Spec.new do |s|

    s.name = 'KZ_PieChartView'
    s.version = '0.1'
    s.summary = 'iOS Pie Chart.'
    s.homepage = 'https://github.com/KieronZhang/KZ_PieChartView'
    s.license = {:type => 'MIT', :file => 'LICENSE'}
    s.author = {'KieronZhang.' => 'https://github.com/KieronZhang'}
    s.platform = :ios, '8.0'
    s.source = {:git => 'https://github.com/KieronZhang/KZ_PieChartView.git', :tag => s.version, :submodules => true}
    s.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}
    s.frameworks = 'UIKit', 'Foundation'
    s.vendored_frameworks = 'KZ_PieChartView/KZ_PieChartViewFramework.framework'
    s.requires_arc = true

end
