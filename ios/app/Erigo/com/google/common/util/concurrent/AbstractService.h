//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/util/concurrent/AbstractService.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonUtilConcurrentAbstractService")
#ifdef RESTRICT_ComGoogleCommonUtilConcurrentAbstractService
#define INCLUDE_ALL_ComGoogleCommonUtilConcurrentAbstractService 0
#else
#define INCLUDE_ALL_ComGoogleCommonUtilConcurrentAbstractService 1
#endif
#undef RESTRICT_ComGoogleCommonUtilConcurrentAbstractService

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonUtilConcurrentAbstractService_) && (INCLUDE_ALL_ComGoogleCommonUtilConcurrentAbstractService || defined(INCLUDE_ComGoogleCommonUtilConcurrentAbstractService))
#define ComGoogleCommonUtilConcurrentAbstractService_

#define RESTRICT_ComGoogleCommonUtilConcurrentService 1
#define INCLUDE_ComGoogleCommonUtilConcurrentService 1
#include "com/google/common/util/concurrent/Service.h"

@class ComGoogleCommonUtilConcurrentService_Listener;
@class ComGoogleCommonUtilConcurrentService_State;
@class JavaUtilConcurrentTimeUnit;
@protocol JavaUtilConcurrentExecutor;

@interface ComGoogleCommonUtilConcurrentAbstractService : NSObject < ComGoogleCommonUtilConcurrentService >

#pragma mark Public

- (void)addListenerWithComGoogleCommonUtilConcurrentService_Listener:(ComGoogleCommonUtilConcurrentService_Listener *)listener
                                      withJavaUtilConcurrentExecutor:(id<JavaUtilConcurrentExecutor>)executor;

- (void)awaitRunning;

- (void)awaitRunningWithLong:(jlong)timeout
withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit;

- (void)awaitTerminated;

- (void)awaitTerminatedWithLong:(jlong)timeout
 withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit;

- (NSException *)failureCause;

- (jboolean)isRunning;

- (id<ComGoogleCommonUtilConcurrentService>)startAsync;

- (ComGoogleCommonUtilConcurrentService_State *)state;

- (id<ComGoogleCommonUtilConcurrentService>)stopAsync;

- (NSString *)description;

#pragma mark Protected

- (instancetype)init;

- (void)doStart;

- (void)doStop;

- (void)notifyFailedWithNSException:(NSException *)cause;
#define notifyFailedWithJavaLangThrowable notifyFailedWithNSException

- (void)notifyStarted;

- (void)notifyStopped;

@end

J2OBJC_STATIC_INIT(ComGoogleCommonUtilConcurrentAbstractService)

FOUNDATION_EXPORT void ComGoogleCommonUtilConcurrentAbstractService_init(ComGoogleCommonUtilConcurrentAbstractService *self);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonUtilConcurrentAbstractService)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonUtilConcurrentAbstractService")
