Pod::Spec.new do |spec|
    spec.name                     = 'beyondLinkSDK'
    spec.version                  = '0.1.17'
    spec.homepage                 = 'https://www.touchlab.co'
    spec.source                   = { 
                                      :http => 'https://beyondlink.s3.eu-north-1.amazonaws.com/beyondLinkSDK-0.2.2-edb01826-bb1e-4772-b52f-208bb5c2bc5e.xcframework.zip',
                                      :type => 'zip',
                                      :headers => ["'Accept: application/octet-stream'"]
                                    }
    spec.authors                  = ''
    spec.license                  = 'BSD'
    spec.summary                  = 'KMMBridgeSKIETemplate'
    spec.vendored_frameworks      = 'beyondLinkSDK.xcframework'
            
    spec.ios.deployment_target = '13.5'
            
    spec.libraries = 'c++', 'sqlite3'
    spec.swift_version = "5.0"
end