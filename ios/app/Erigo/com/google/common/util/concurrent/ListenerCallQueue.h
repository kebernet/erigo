//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/util/concurrent/ListenerCallQueue.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonUtilConcurrentListenerCallQueue")
#ifdef RESTRICT_ComGoogleCommonUtilConcurrentListenerCallQueue
#define INCLUDE_ALL_ComGoogleCommonUtilConcurrentListenerCallQueue 0
#else
#define INCLUDE_ALL_ComGoogleCommonUtilConcurrentListenerCallQueue 1
#endif
#undef RESTRICT_ComGoogleCommonUtilConcurrentListenerCallQueue

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonUtilConcurrentListenerCallQueue_) && (INCLUDE_ALL_ComGoogleCommonUtilConcurrentListenerCallQueue || defined(INCLUDE_ComGoogleCommonUtilConcurrentListenerCallQueue))
#define ComGoogleCommonUtilConcurrentListenerCallQueue_

@protocol ComGoogleCommonUtilConcurrentListenerCallQueue_Event;
@protocol JavaUtilConcurrentExecutor;

@interface ComGoogleCommonUtilConcurrentListenerCallQueue : NSObject

#pragma mark Public

- (void)addListenerWithId:(id)listener
withJavaUtilConcurrentExecutor:(id<JavaUtilConcurrentExecutor>)executor;

- (void)dispatch;

- (void)enqueueWithComGoogleCommonUtilConcurrentListenerCallQueue_Event:(id<ComGoogleCommonUtilConcurrentListenerCallQueue_Event>)event;

- (void)enqueueWithComGoogleCommonUtilConcurrentListenerCallQueue_Event:(id<ComGoogleCommonUtilConcurrentListenerCallQueue_Event>)event
                                                           withNSString:(NSString *)label;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(ComGoogleCommonUtilConcurrentListenerCallQueue)

FOUNDATION_EXPORT void ComGoogleCommonUtilConcurrentListenerCallQueue_init(ComGoogleCommonUtilConcurrentListenerCallQueue *self);

FOUNDATION_EXPORT ComGoogleCommonUtilConcurrentListenerCallQueue *new_ComGoogleCommonUtilConcurrentListenerCallQueue_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleCommonUtilConcurrentListenerCallQueue *create_ComGoogleCommonUtilConcurrentListenerCallQueue_init();

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonUtilConcurrentListenerCallQueue)

#endif

#if !defined (ComGoogleCommonUtilConcurrentListenerCallQueue_Event_) && (INCLUDE_ALL_ComGoogleCommonUtilConcurrentListenerCallQueue || defined(INCLUDE_ComGoogleCommonUtilConcurrentListenerCallQueue_Event))
#define ComGoogleCommonUtilConcurrentListenerCallQueue_Event_

@protocol ComGoogleCommonUtilConcurrentListenerCallQueue_Event < JavaObject >

- (void)callWithId:(id)listener;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonUtilConcurrentListenerCallQueue_Event)

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonUtilConcurrentListenerCallQueue_Event)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonUtilConcurrentListenerCallQueue")
