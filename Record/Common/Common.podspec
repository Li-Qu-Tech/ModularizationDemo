Pod::Spec.new do |s|
	s.name             = 'Common'
	s.version          = '0.0.1'
	s.summary          = '公共组件'

	s.description      = <<-DESC
	TODO: Add long description of the pod here.
	DESC

	s.homepage         = 'https://gitee.com/xxx'
    # s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'xxx' => 'xxxxx@qq.com' }
    s.source           = { :git => 'https://gitee.com/xxx/Common.git', :tag => s.version.to_s }

    s.ios.deployment_target = '9.0'
    
    s.source_files = 'Common/Common/*.{h,m}'

    s.subspec 'Catagory' do |ss|
    	ss.source_files = 'Common/Common/Catagory/*.{h,m}'

        ss.subspec 'UIButton' do |sss|
            sss.source_files = 'Common/Common/Catagory/UIButton/*.{h,m}'            
        end
    end


    s.prefix_header_contents = <<-EOS

    #ifdef __OBJC__
    #import <Foundation/Foundation.h>
    #import <UIKit/UIKit.h>
    #endif

	EOS
end
