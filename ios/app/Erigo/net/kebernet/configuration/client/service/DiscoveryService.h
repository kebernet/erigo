//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/net/kebernet/configuration/client/service/DiscoveryService.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetKebernetConfigurationClientServiceDiscoveryService")
#ifdef RESTRICT_NetKebernetConfigurationClientServiceDiscoveryService
#define INCLUDE_ALL_NetKebernetConfigurationClientServiceDiscoveryService 0
#else
#define INCLUDE_ALL_NetKebernetConfigurationClientServiceDiscoveryService 1
#endif
#undef RESTRICT_NetKebernetConfigurationClientServiceDiscoveryService

#if !defined (ERSDiscoveryService_) && (INCLUDE_ALL_NetKebernetConfigurationClientServiceDiscoveryService || defined(INCLUDE_ERSDiscoveryService))
#define ERSDiscoveryService_

@protocol ERSDiscoveryService_DeviceListCallback;
@protocol ERSDiscoveryService_ErrorCallback;

@protocol ERSDiscoveryService < JavaObject >

- (void)listenForDevicesWithERSDiscoveryService_DeviceListCallback:(id<ERSDiscoveryService_DeviceListCallback>)callback;

- (void)listKnownDevicesWithERSDiscoveryService_DeviceListCallback:(id<ERSDiscoveryService_DeviceListCallback>)callback;

- (void)setErrorCallbackWithERSDiscoveryService_ErrorCallback:(id<ERSDiscoveryService_ErrorCallback>)callback;

- (void)refresh;

@end

J2OBJC_EMPTY_STATIC_INIT(ERSDiscoveryService)

J2OBJC_TYPE_LITERAL_HEADER(ERSDiscoveryService)

#define NetKebernetConfigurationClientServiceDiscoveryService ERSDiscoveryService

#endif

#if !defined (ERSDiscoveryService_DeviceListCallback_) && (INCLUDE_ALL_NetKebernetConfigurationClientServiceDiscoveryService || defined(INCLUDE_ERSDiscoveryService_DeviceListCallback))
#define ERSDiscoveryService_DeviceListCallback_

@protocol JavaUtilList;

@protocol ERSDiscoveryService_DeviceListCallback < JavaObject >

- (jboolean)onDevicesWithJavaUtilList:(id<JavaUtilList>)devices;

@end

J2OBJC_EMPTY_STATIC_INIT(ERSDiscoveryService_DeviceListCallback)

J2OBJC_TYPE_LITERAL_HEADER(ERSDiscoveryService_DeviceListCallback)

#endif

#if !defined (ERSDiscoveryService_ErrorCallback_) && (INCLUDE_ALL_NetKebernetConfigurationClientServiceDiscoveryService || defined(INCLUDE_ERSDiscoveryService_ErrorCallback))
#define ERSDiscoveryService_ErrorCallback_

@protocol ERSDiscoveryService_ErrorCallback < JavaObject >

- (void)onErrorWithNSString:(NSString *)message;

@end

J2OBJC_EMPTY_STATIC_INIT(ERSDiscoveryService_ErrorCallback)

J2OBJC_TYPE_LITERAL_HEADER(ERSDiscoveryService_ErrorCallback)

#endif

#pragma pop_macro("INCLUDE_ALL_NetKebernetConfigurationClientServiceDiscoveryService")