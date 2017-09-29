//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/eventbus/EventBus.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonEventbusEventBus")
#ifdef RESTRICT_ComGoogleCommonEventbusEventBus
#define INCLUDE_ALL_ComGoogleCommonEventbusEventBus 0
#else
#define INCLUDE_ALL_ComGoogleCommonEventbusEventBus 1
#endif
#undef RESTRICT_ComGoogleCommonEventbusEventBus

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonEventbusEventBus_) && (INCLUDE_ALL_ComGoogleCommonEventbusEventBus || defined(INCLUDE_ComGoogleCommonEventbusEventBus))
#define ComGoogleCommonEventbusEventBus_

@class ComGoogleCommonEventbusDispatcher;
@class ComGoogleCommonEventbusSubscriberExceptionContext;
@protocol ComGoogleCommonEventbusSubscriberExceptionHandler;
@protocol JavaUtilConcurrentExecutor;

@interface ComGoogleCommonEventbusEventBus : NSObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)identifier;

- (instancetype)initWithComGoogleCommonEventbusSubscriberExceptionHandler:(id<ComGoogleCommonEventbusSubscriberExceptionHandler>)exceptionHandler;

- (NSString *)identifier;

- (void)postWithId:(id)event;

- (void)register__WithId:(id)object;

- (NSString *)description;

- (void)unregisterWithId:(id)object;

#pragma mark Package-Private

- (instancetype)initWithNSString:(NSString *)identifier
  withJavaUtilConcurrentExecutor:(id<JavaUtilConcurrentExecutor>)executor
withComGoogleCommonEventbusDispatcher:(ComGoogleCommonEventbusDispatcher *)dispatcher
withComGoogleCommonEventbusSubscriberExceptionHandler:(id<ComGoogleCommonEventbusSubscriberExceptionHandler>)exceptionHandler;

- (id<JavaUtilConcurrentExecutor>)executor;

- (void)handleSubscriberExceptionWithNSException:(NSException *)e
withComGoogleCommonEventbusSubscriberExceptionContext:(ComGoogleCommonEventbusSubscriberExceptionContext *)context;
#define handleSubscriberExceptionWithJavaLangThrowable handleSubscriberExceptionWithNSException

@end

J2OBJC_STATIC_INIT(ComGoogleCommonEventbusEventBus)

FOUNDATION_EXPORT void ComGoogleCommonEventbusEventBus_init(ComGoogleCommonEventbusEventBus *self);

FOUNDATION_EXPORT ComGoogleCommonEventbusEventBus *new_ComGoogleCommonEventbusEventBus_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleCommonEventbusEventBus *create_ComGoogleCommonEventbusEventBus_init();

FOUNDATION_EXPORT void ComGoogleCommonEventbusEventBus_initWithNSString_(ComGoogleCommonEventbusEventBus *self, NSString *identifier);

FOUNDATION_EXPORT ComGoogleCommonEventbusEventBus *new_ComGoogleCommonEventbusEventBus_initWithNSString_(NSString *identifier) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleCommonEventbusEventBus *create_ComGoogleCommonEventbusEventBus_initWithNSString_(NSString *identifier);

FOUNDATION_EXPORT void ComGoogleCommonEventbusEventBus_initWithComGoogleCommonEventbusSubscriberExceptionHandler_(ComGoogleCommonEventbusEventBus *self, id<ComGoogleCommonEventbusSubscriberExceptionHandler> exceptionHandler);

FOUNDATION_EXPORT ComGoogleCommonEventbusEventBus *new_ComGoogleCommonEventbusEventBus_initWithComGoogleCommonEventbusSubscriberExceptionHandler_(id<ComGoogleCommonEventbusSubscriberExceptionHandler> exceptionHandler) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleCommonEventbusEventBus *create_ComGoogleCommonEventbusEventBus_initWithComGoogleCommonEventbusSubscriberExceptionHandler_(id<ComGoogleCommonEventbusSubscriberExceptionHandler> exceptionHandler);

FOUNDATION_EXPORT void ComGoogleCommonEventbusEventBus_initWithNSString_withJavaUtilConcurrentExecutor_withComGoogleCommonEventbusDispatcher_withComGoogleCommonEventbusSubscriberExceptionHandler_(ComGoogleCommonEventbusEventBus *self, NSString *identifier, id<JavaUtilConcurrentExecutor> executor, ComGoogleCommonEventbusDispatcher *dispatcher, id<ComGoogleCommonEventbusSubscriberExceptionHandler> exceptionHandler);

FOUNDATION_EXPORT ComGoogleCommonEventbusEventBus *new_ComGoogleCommonEventbusEventBus_initWithNSString_withJavaUtilConcurrentExecutor_withComGoogleCommonEventbusDispatcher_withComGoogleCommonEventbusSubscriberExceptionHandler_(NSString *identifier, id<JavaUtilConcurrentExecutor> executor, ComGoogleCommonEventbusDispatcher *dispatcher, id<ComGoogleCommonEventbusSubscriberExceptionHandler> exceptionHandler) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleCommonEventbusEventBus *create_ComGoogleCommonEventbusEventBus_initWithNSString_withJavaUtilConcurrentExecutor_withComGoogleCommonEventbusDispatcher_withComGoogleCommonEventbusSubscriberExceptionHandler_(NSString *identifier, id<JavaUtilConcurrentExecutor> executor, ComGoogleCommonEventbusDispatcher *dispatcher, id<ComGoogleCommonEventbusSubscriberExceptionHandler> exceptionHandler);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonEventbusEventBus)

#endif

#if !defined (ComGoogleCommonEventbusEventBus_LoggingHandler_) && (INCLUDE_ALL_ComGoogleCommonEventbusEventBus || defined(INCLUDE_ComGoogleCommonEventbusEventBus_LoggingHandler))
#define ComGoogleCommonEventbusEventBus_LoggingHandler_

#define RESTRICT_ComGoogleCommonEventbusSubscriberExceptionHandler 1
#define INCLUDE_ComGoogleCommonEventbusSubscriberExceptionHandler 1
#include "com/google/common/eventbus/SubscriberExceptionHandler.h"

@class ComGoogleCommonEventbusSubscriberExceptionContext;

@interface ComGoogleCommonEventbusEventBus_LoggingHandler : NSObject < ComGoogleCommonEventbusSubscriberExceptionHandler >

#pragma mark Public

- (void)handleExceptionWithNSException:(NSException *)exception
withComGoogleCommonEventbusSubscriberExceptionContext:(ComGoogleCommonEventbusSubscriberExceptionContext *)context;
#define handleExceptionWithJavaLangThrowable handleExceptionWithNSException

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(ComGoogleCommonEventbusEventBus_LoggingHandler)

inline ComGoogleCommonEventbusEventBus_LoggingHandler *ComGoogleCommonEventbusEventBus_LoggingHandler_get_INSTANCE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT ComGoogleCommonEventbusEventBus_LoggingHandler *ComGoogleCommonEventbusEventBus_LoggingHandler_INSTANCE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonEventbusEventBus_LoggingHandler, INSTANCE, ComGoogleCommonEventbusEventBus_LoggingHandler *)

FOUNDATION_EXPORT void ComGoogleCommonEventbusEventBus_LoggingHandler_init(ComGoogleCommonEventbusEventBus_LoggingHandler *self);

FOUNDATION_EXPORT ComGoogleCommonEventbusEventBus_LoggingHandler *new_ComGoogleCommonEventbusEventBus_LoggingHandler_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleCommonEventbusEventBus_LoggingHandler *create_ComGoogleCommonEventbusEventBus_LoggingHandler_init();

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonEventbusEventBus_LoggingHandler)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonEventbusEventBus")