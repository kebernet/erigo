//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/net/kebernet/configuration/client/impl/Executor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetKebernetConfigurationClientImplExecutor")
#ifdef RESTRICT_NetKebernetConfigurationClientImplExecutor
#define INCLUDE_ALL_NetKebernetConfigurationClientImplExecutor 0
#else
#define INCLUDE_ALL_NetKebernetConfigurationClientImplExecutor 1
#endif
#undef RESTRICT_NetKebernetConfigurationClientImplExecutor

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetKebernetConfigurationClientImplExecutor_) && (INCLUDE_ALL_NetKebernetConfigurationClientImplExecutor || defined(INCLUDE_NetKebernetConfigurationClientImplExecutor))
#define NetKebernetConfigurationClientImplExecutor_

@protocol JavaUtilConcurrentExecutorService;

@interface NetKebernetConfigurationClientImplExecutor : NSObject

#pragma mark Public

- (instancetype)init;

+ (id<JavaUtilConcurrentExecutorService>)getInstance;

@end

J2OBJC_STATIC_INIT(NetKebernetConfigurationClientImplExecutor)

FOUNDATION_EXPORT void NetKebernetConfigurationClientImplExecutor_init(NetKebernetConfigurationClientImplExecutor *self);

FOUNDATION_EXPORT NetKebernetConfigurationClientImplExecutor *new_NetKebernetConfigurationClientImplExecutor_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetKebernetConfigurationClientImplExecutor *create_NetKebernetConfigurationClientImplExecutor_init();

FOUNDATION_EXPORT id<JavaUtilConcurrentExecutorService> NetKebernetConfigurationClientImplExecutor_getInstance();

J2OBJC_TYPE_LITERAL_HEADER(NetKebernetConfigurationClientImplExecutor)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetKebernetConfigurationClientImplExecutor")