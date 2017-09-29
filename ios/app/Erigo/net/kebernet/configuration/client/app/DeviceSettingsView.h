//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/net/kebernet/configuration/client/app/DeviceSettingsView.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetKebernetConfigurationClientAppDeviceSettingsView")
#ifdef RESTRICT_NetKebernetConfigurationClientAppDeviceSettingsView
#define INCLUDE_ALL_NetKebernetConfigurationClientAppDeviceSettingsView 0
#else
#define INCLUDE_ALL_NetKebernetConfigurationClientAppDeviceSettingsView 1
#endif
#undef RESTRICT_NetKebernetConfigurationClientAppDeviceSettingsView

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ERADeviceSettingsView_) && (INCLUDE_ALL_NetKebernetConfigurationClientAppDeviceSettingsView || defined(INCLUDE_ERADeviceSettingsView))
#define ERADeviceSettingsView_

@class ERMSettings;
@protocol ERADeviceSettingsView_CancelCallback;
@protocol ERADeviceSettingsView_SaveCallback;
@protocol ERADeviceSettingsView_SettingsChangedCallback;
@protocol JavaUtilCollection;

@protocol ERADeviceSettingsView < JavaObject >

- (void)showLoading;

- (void)hideLoading;

- (void)setDeviceNameWithNSString:(NSString *)name;

- (void)setSettingsWithERMSettings:(ERMSettings *)settings
            withJavaUtilCollection:(id<JavaUtilCollection>)values;

- (void)setSettingChangedCallbackWithERADeviceSettingsView_SettingsChangedCallback:(id<ERADeviceSettingsView_SettingsChangedCallback>)callback;

- (void)setSaveCallbackWithERADeviceSettingsView_SaveCallback:(id<ERADeviceSettingsView_SaveCallback>)callback;

- (void)setCancelCallbackWithERADeviceSettingsView_CancelCallback:(id<ERADeviceSettingsView_CancelCallback>)callback;

- (void)showErrorWithNSString:(NSString *)s;

@end

J2OBJC_EMPTY_STATIC_INIT(ERADeviceSettingsView)

J2OBJC_TYPE_LITERAL_HEADER(ERADeviceSettingsView)

#define NetKebernetConfigurationClientAppDeviceSettingsView ERADeviceSettingsView

#endif

#if !defined (ERADeviceSettingsView_SettingsChangedCallback_) && (INCLUDE_ALL_NetKebernetConfigurationClientAppDeviceSettingsView || defined(INCLUDE_ERADeviceSettingsView_SettingsChangedCallback))
#define ERADeviceSettingsView_SettingsChangedCallback_

@protocol ERADeviceSettingsView_SettingsChangedCallback < JavaObject >

- (void)onSettingChangedWithNSString:(NSString *)name
                        withNSString:(NSString *)value;

@end

J2OBJC_EMPTY_STATIC_INIT(ERADeviceSettingsView_SettingsChangedCallback)

J2OBJC_TYPE_LITERAL_HEADER(ERADeviceSettingsView_SettingsChangedCallback)

#endif

#if !defined (ERADeviceSettingsView_SaveCallback_) && (INCLUDE_ALL_NetKebernetConfigurationClientAppDeviceSettingsView || defined(INCLUDE_ERADeviceSettingsView_SaveCallback))
#define ERADeviceSettingsView_SaveCallback_

@protocol ERADeviceSettingsView_SaveCallback < JavaObject >

- (void)onSaveClicked;

@end

J2OBJC_EMPTY_STATIC_INIT(ERADeviceSettingsView_SaveCallback)

J2OBJC_TYPE_LITERAL_HEADER(ERADeviceSettingsView_SaveCallback)

#endif

#if !defined (ERADeviceSettingsView_CancelCallback_) && (INCLUDE_ALL_NetKebernetConfigurationClientAppDeviceSettingsView || defined(INCLUDE_ERADeviceSettingsView_CancelCallback))
#define ERADeviceSettingsView_CancelCallback_

@protocol ERADeviceSettingsView_CancelCallback < JavaObject >

- (void)onCancelClicked;

@end

J2OBJC_EMPTY_STATIC_INIT(ERADeviceSettingsView_CancelCallback)

J2OBJC_TYPE_LITERAL_HEADER(ERADeviceSettingsView_CancelCallback)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetKebernetConfigurationClientAppDeviceSettingsView")