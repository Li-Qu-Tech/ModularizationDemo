Pod::Spec.new do |s|
	s.name             = 'Login'
	s.version          = '0.0.1'
	s.summary          = '登录组件'

	s.description      = <<-DESC
	TODO: Add long description of the pod here.
	DESC

	s.homepage         = 'https://gitee.com/xxx'
    # s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'xxx' => 'xxxxx@qq.com' }
    s.source           = { :git => 'https://gitee.com/xxx/Login.git', :tag => s.version.to_s }

    s.ios.deployment_target = '9.0'
    
    s.source_files = 'Login/Login/*.{h,m}'

    s.subspec 'Controller' do |ss|
    	ss.source_files = 'Login/Login/Controller/*.{h,m}'

    end

    s.subspec 'Router' do |ss|
    	ss.source_files = 'Login/Login/Router/*.{h,m}'
    end

    s.subspec 'View' do |ss|
    	ss.source_files = 'Login/Login/View/*.{h,m}'
    end

    s.dependency 'CTMediator'

    s.prefix_header_contents = <<-EOS

    #ifdef __OBJC__
    #import <Foundation/Foundation.h>
    #import <UIKit/UIKit.h>
    #endif

	EOS
end
