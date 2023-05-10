Pod::Spec.new do |s|
  s.name                  = 'FeatureA'
  s.version               = '1.0.0'
  s.author                = 'Oswaldo Rubio'
  s.license               = 'commercial'
  s.homepage              = "https://github.com/osrufung/UsingSPMFromCPDemo"
  s.source                = { git: 'https://github.com/osrufung/UsingSPMFromCPDemo' }
  s.summary               = "#{s.name} – Version #{s.version}"
  s.ios.deployment_target = '15.0'
  s.swift_version         = '5.7'
  s.source_files          = "Sources/**/*.swift"
  s.pod_target_xcconfig   = { 'SWIFT_INCLUDE_PATHS' => '$(inherited) ${PODS_BUILD_DIR}/$(CONFIGURATION)$(EFFECTIVE_PLATFORM_NAME)'}
end
