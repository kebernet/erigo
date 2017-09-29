//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/net/kebernet/configuration/client/service/CompositeDiscoveryService.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "java/lang/Runnable.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/List.h"
#include "java/util/concurrent/CopyOnWriteArrayList.h"
#include "java/util/concurrent/ExecutorService.h"
#include "java/util/concurrent/Executors.h"
#include "java/util/concurrent/Future.h"
#include "java/util/function/Consumer.h"
#include "java/util/logging/Level.h"
#include "java/util/logging/Logger.h"
#include "java/util/stream/Stream.h"
#include "javax/annotation/Nonnull.h"
#include "javax/annotation/meta/When.h"
#include "net/kebernet/configuration/client/service/CompositeDiscoveryService.h"
#include "net/kebernet/configuration/client/service/DiscoveryService.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface ERSCompositeDiscoveryService () {
 @public
  IOSObjectArray *internal_;
  JavaUtilConcurrentCopyOnWriteArrayList *listeners_;
}

@end

J2OBJC_FIELD_SETTER(ERSCompositeDiscoveryService, internal_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(ERSCompositeDiscoveryService, listeners_, JavaUtilConcurrentCopyOnWriteArrayList *)

inline JavaUtilLoggingLogger *ERSCompositeDiscoveryService_get_LOGGER();
static JavaUtilLoggingLogger *ERSCompositeDiscoveryService_LOGGER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ERSCompositeDiscoveryService, LOGGER, JavaUtilLoggingLogger *)

inline id<JavaUtilConcurrentExecutorService> ERSCompositeDiscoveryService_get_defaultExecutor();
static id<JavaUtilConcurrentExecutorService> ERSCompositeDiscoveryService_defaultExecutor;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ERSCompositeDiscoveryService, defaultExecutor, id<JavaUtilConcurrentExecutorService>)

__attribute__((unused)) static IOSObjectArray *ERSCompositeDiscoveryService__Annotations$0();

@interface ERSCompositeDiscoveryService_$Lambda$2 : NSObject < JavaUtilFunctionConsumer > {
 @public
  ERSCompositeDiscoveryService *this$0_;
  id<JavaUtilList> val$result_;
}

- (void)acceptWithId:(id<ERSDiscoveryService_DeviceListCallback>)callback;

@end

J2OBJC_EMPTY_STATIC_INIT(ERSCompositeDiscoveryService_$Lambda$2)

__attribute__((unused)) static void ERSCompositeDiscoveryService_$Lambda$2_initWithERSCompositeDiscoveryService_withJavaUtilList_(ERSCompositeDiscoveryService_$Lambda$2 *self, ERSCompositeDiscoveryService *outer$, id<JavaUtilList> capture$0);

__attribute__((unused)) static ERSCompositeDiscoveryService_$Lambda$2 *new_ERSCompositeDiscoveryService_$Lambda$2_initWithERSCompositeDiscoveryService_withJavaUtilList_(ERSCompositeDiscoveryService *outer$, id<JavaUtilList> capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static ERSCompositeDiscoveryService_$Lambda$2 *create_ERSCompositeDiscoveryService_$Lambda$2_initWithERSCompositeDiscoveryService_withJavaUtilList_(ERSCompositeDiscoveryService *outer$, id<JavaUtilList> capture$0);

@interface ERSCompositeDiscoveryService_$Lambda$1 : NSObject < ERSDiscoveryService_DeviceListCallback > {
 @public
  ERSCompositeDiscoveryService *this$0_;
}

- (jboolean)onDevicesWithJavaUtilList:(id<JavaUtilList>)result;

@end

J2OBJC_EMPTY_STATIC_INIT(ERSCompositeDiscoveryService_$Lambda$1)

__attribute__((unused)) static void ERSCompositeDiscoveryService_$Lambda$1_initWithERSCompositeDiscoveryService_(ERSCompositeDiscoveryService_$Lambda$1 *self, ERSCompositeDiscoveryService *outer$);

__attribute__((unused)) static ERSCompositeDiscoveryService_$Lambda$1 *new_ERSCompositeDiscoveryService_$Lambda$1_initWithERSCompositeDiscoveryService_(ERSCompositeDiscoveryService *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static ERSCompositeDiscoveryService_$Lambda$1 *create_ERSCompositeDiscoveryService_$Lambda$1_initWithERSCompositeDiscoveryService_(ERSCompositeDiscoveryService *outer$);

@interface ERSCompositeDiscoveryService_$Lambda$4 : NSObject < JavaUtilFunctionConsumer > {
 @public
  JavaUtilArrayList *target$_;
}

- (void)acceptWithId:(id<JavaUtilList>)a;

@end

J2OBJC_EMPTY_STATIC_INIT(ERSCompositeDiscoveryService_$Lambda$4)

__attribute__((unused)) static void ERSCompositeDiscoveryService_$Lambda$4_initWithJavaUtilArrayList_(ERSCompositeDiscoveryService_$Lambda$4 *self, JavaUtilArrayList *outer$);

__attribute__((unused)) static ERSCompositeDiscoveryService_$Lambda$4 *new_ERSCompositeDiscoveryService_$Lambda$4_initWithJavaUtilArrayList_(JavaUtilArrayList *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static ERSCompositeDiscoveryService_$Lambda$4 *create_ERSCompositeDiscoveryService_$Lambda$4_initWithJavaUtilArrayList_(JavaUtilArrayList *outer$);

@interface ERSCompositeDiscoveryService_$Lambda$3 : NSObject < ERSDiscoveryService_DeviceListCallback > {
 @public
  IOSObjectArray *val$results_;
  jint val$index_;
  id<ERSDiscoveryService_DeviceListCallback> val$callback_;
}

- (jboolean)onDevicesWithJavaUtilList:(id<JavaUtilList>)result;

@end

J2OBJC_EMPTY_STATIC_INIT(ERSCompositeDiscoveryService_$Lambda$3)

__attribute__((unused)) static void ERSCompositeDiscoveryService_$Lambda$3_initWithJavaUtilListArray_withInt_withERSDiscoveryService_DeviceListCallback_(ERSCompositeDiscoveryService_$Lambda$3 *self, IOSObjectArray *capture$0, jint capture$1, id<ERSDiscoveryService_DeviceListCallback> capture$2);

__attribute__((unused)) static ERSCompositeDiscoveryService_$Lambda$3 *new_ERSCompositeDiscoveryService_$Lambda$3_initWithJavaUtilListArray_withInt_withERSDiscoveryService_DeviceListCallback_(IOSObjectArray *capture$0, jint capture$1, id<ERSDiscoveryService_DeviceListCallback> capture$2) NS_RETURNS_RETAINED;

__attribute__((unused)) static ERSCompositeDiscoveryService_$Lambda$3 *create_ERSCompositeDiscoveryService_$Lambda$3_initWithJavaUtilListArray_withInt_withERSDiscoveryService_DeviceListCallback_(IOSObjectArray *capture$0, jint capture$1, id<ERSDiscoveryService_DeviceListCallback> capture$2);

@interface ERSCompositeDiscoveryService_$Lambda$6 : NSObject < JavaUtilFunctionConsumer >

- (void)acceptWithId:(id<ERSDiscoveryService>)d;

@end

J2OBJC_STATIC_INIT(ERSCompositeDiscoveryService_$Lambda$6)

inline ERSCompositeDiscoveryService_$Lambda$6 *ERSCompositeDiscoveryService_$Lambda$6_get_instance();
static ERSCompositeDiscoveryService_$Lambda$6 *ERSCompositeDiscoveryService_$Lambda$6_instance;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ERSCompositeDiscoveryService_$Lambda$6, instance, ERSCompositeDiscoveryService_$Lambda$6 *)

__attribute__((unused)) static void ERSCompositeDiscoveryService_$Lambda$6_init(ERSCompositeDiscoveryService_$Lambda$6 *self);

__attribute__((unused)) static ERSCompositeDiscoveryService_$Lambda$6 *new_ERSCompositeDiscoveryService_$Lambda$6_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ERSCompositeDiscoveryService_$Lambda$6 *create_ERSCompositeDiscoveryService_$Lambda$6_init();

@interface ERSCompositeDiscoveryService_$Lambda$5 : NSObject < JavaLangRunnable > {
 @public
  ERSCompositeDiscoveryService *this$0_;
}

- (void)run;

@end

J2OBJC_EMPTY_STATIC_INIT(ERSCompositeDiscoveryService_$Lambda$5)

__attribute__((unused)) static void ERSCompositeDiscoveryService_$Lambda$5_initWithERSCompositeDiscoveryService_(ERSCompositeDiscoveryService_$Lambda$5 *self, ERSCompositeDiscoveryService *outer$);

__attribute__((unused)) static ERSCompositeDiscoveryService_$Lambda$5 *new_ERSCompositeDiscoveryService_$Lambda$5_initWithERSCompositeDiscoveryService_(ERSCompositeDiscoveryService *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static ERSCompositeDiscoveryService_$Lambda$5 *create_ERSCompositeDiscoveryService_$Lambda$5_initWithERSCompositeDiscoveryService_(ERSCompositeDiscoveryService *outer$);

J2OBJC_INITIALIZED_DEFN(ERSCompositeDiscoveryService)

@implementation ERSCompositeDiscoveryService

- (instancetype)initWithERSDiscoveryServiceArray:(IOSObjectArray *)internal {
  ERSCompositeDiscoveryService_initWithERSDiscoveryServiceArray_(self, internal);
  return self;
}

- (void)listenForDevicesWithERSDiscoveryService_DeviceListCallback:(id<ERSDiscoveryService_DeviceListCallback>)callback {
  [((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(listeners_)) addWithId:callback];
}

- (void)listKnownDevicesWithERSDiscoveryService_DeviceListCallback:(id<ERSDiscoveryService_DeviceListCallback>)callback {
  IOSObjectArray *results = [IOSObjectArray newArrayWithLength:((IOSObjectArray *) nil_chk(internal_))->size_ type:JavaUtilList_class_()];
  for (jint i = 0; i < internal_->size_; i++) {
    jint index = i;
    [((id<ERSDiscoveryService>) nil_chk(IOSObjectArray_Get(internal_, i))) listKnownDevicesWithERSDiscoveryService_DeviceListCallback:new_ERSCompositeDiscoveryService_$Lambda$3_initWithJavaUtilListArray_withInt_withERSDiscoveryService_DeviceListCallback_(results, index, callback)];
  }
}

- (void)setErrorCallbackWithERSDiscoveryService_ErrorCallback:(id<ERSDiscoveryService_ErrorCallback>)callback {
  {
    IOSObjectArray *a__ = internal_;
    id<ERSDiscoveryService> const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    id<ERSDiscoveryService> const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      id<ERSDiscoveryService> d = *b__++;
      [((id<ERSDiscoveryService>) nil_chk(d)) setErrorCallbackWithERSDiscoveryService_ErrorCallback:callback];
    }
  }
}

- (void)refresh {
  (void) [((id<JavaUtilConcurrentExecutorService>) nil_chk(ERSCompositeDiscoveryService_defaultExecutor)) submitWithJavaLangRunnable:new_ERSCompositeDiscoveryService_$Lambda$5_initWithERSCompositeDiscoveryService_(self)];
  [((JavaUtilLoggingLogger *) nil_chk(ERSCompositeDiscoveryService_LOGGER)) infoWithNSString:@"Refresh started."];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x81, -1, 0, -1, -1, -1, 1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithERSDiscoveryServiceArray:);
  methods[1].selector = @selector(listenForDevicesWithERSDiscoveryService_DeviceListCallback:);
  methods[2].selector = @selector(listKnownDevicesWithERSDiscoveryService_DeviceListCallback:);
  methods[3].selector = @selector(setErrorCallbackWithERSDiscoveryService_ErrorCallback:);
  methods[4].selector = @selector(refresh);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "LOGGER", "LJavaUtilLoggingLogger;", .constantValue.asLong = 0, 0x1a, -1, 7, -1, -1 },
    { "defaultExecutor", "LJavaUtilConcurrentExecutorService;", .constantValue.asLong = 0, 0x1a, -1, 8, -1, -1 },
    { "internal_", "[LERSDiscoveryService;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "listeners_", "LJavaUtilConcurrentCopyOnWriteArrayList;", .constantValue.asLong = 0, 0x12, -1, -1, 9, -1 },
  };
  static const void *ptrTable[] = { "[LERSDiscoveryService;", (void *)&ERSCompositeDiscoveryService__Annotations$0, "listenForDevices", "LERSDiscoveryService_DeviceListCallback;", "listKnownDevices", "setErrorCallback", "LERSDiscoveryService_ErrorCallback;", &ERSCompositeDiscoveryService_LOGGER, &ERSCompositeDiscoveryService_defaultExecutor, "Ljava/util/concurrent/CopyOnWriteArrayList<Lnet/kebernet/configuration/client/service/DiscoveryService$DeviceListCallback;>;" };
  static const J2ObjcClassInfo _ERSCompositeDiscoveryService = { "CompositeDiscoveryService", "net.kebernet.configuration.client.service", ptrTable, methods, fields, 7, 0x1, 5, 4, -1, -1, -1, -1, -1 };
  return &_ERSCompositeDiscoveryService;
}

+ (void)initialize {
  if (self == [ERSCompositeDiscoveryService class]) {
    ERSCompositeDiscoveryService_LOGGER = JavaUtilLoggingLogger_getLoggerWithNSString_([ERSCompositeDiscoveryService_class_() getCanonicalName]);
    ERSCompositeDiscoveryService_defaultExecutor = JavaUtilConcurrentExecutors_newWorkStealingPool();
    J2OBJC_SET_INITIALIZED(ERSCompositeDiscoveryService)
  }
}

@end

void ERSCompositeDiscoveryService_initWithERSDiscoveryServiceArray_(ERSCompositeDiscoveryService *self, IOSObjectArray *internal) {
  NSObject_init(self);
  self->listeners_ = new_JavaUtilConcurrentCopyOnWriteArrayList_init();
  self->internal_ = internal;
  {
    IOSObjectArray *a__ = internal;
    id<ERSDiscoveryService> const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    id<ERSDiscoveryService> const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      id<ERSDiscoveryService> devices = *b__++;
      [((id<ERSDiscoveryService>) nil_chk(devices)) listenForDevicesWithERSDiscoveryService_DeviceListCallback:new_ERSCompositeDiscoveryService_$Lambda$1_initWithERSCompositeDiscoveryService_(self)];
    }
  }
}

ERSCompositeDiscoveryService *new_ERSCompositeDiscoveryService_initWithERSDiscoveryServiceArray_(IOSObjectArray *internal) {
  J2OBJC_NEW_IMPL(ERSCompositeDiscoveryService, initWithERSDiscoveryServiceArray_, internal)
}

ERSCompositeDiscoveryService *create_ERSCompositeDiscoveryService_initWithERSDiscoveryServiceArray_(IOSObjectArray *internal) {
  J2OBJC_CREATE_IMPL(ERSCompositeDiscoveryService, initWithERSDiscoveryServiceArray_, internal)
}

IOSObjectArray *ERSCompositeDiscoveryService__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ERSCompositeDiscoveryService)

@implementation ERSCompositeDiscoveryService_$Lambda$2

- (void)acceptWithId:(id<ERSDiscoveryService_DeviceListCallback>)callback {
  if (![((id<ERSDiscoveryService_DeviceListCallback>) nil_chk(callback)) onDevicesWithJavaUtilList:val$result_]) {
    [((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(this$0_->listeners_)) removeWithId:callback];
  }
}

- (id<JavaUtilFunctionConsumer>)andThenWithJavaUtilFunctionConsumer:(id<JavaUtilFunctionConsumer>)arg0 {
  return JavaUtilFunctionConsumer_andThenWithJavaUtilFunctionConsumer_(self, arg0);
}

@end

void ERSCompositeDiscoveryService_$Lambda$2_initWithERSCompositeDiscoveryService_withJavaUtilList_(ERSCompositeDiscoveryService_$Lambda$2 *self, ERSCompositeDiscoveryService *outer$, id<JavaUtilList> capture$0) {
  self->this$0_ = outer$;
  self->val$result_ = capture$0;
  NSObject_init(self);
}

ERSCompositeDiscoveryService_$Lambda$2 *new_ERSCompositeDiscoveryService_$Lambda$2_initWithERSCompositeDiscoveryService_withJavaUtilList_(ERSCompositeDiscoveryService *outer$, id<JavaUtilList> capture$0) {
  J2OBJC_NEW_IMPL(ERSCompositeDiscoveryService_$Lambda$2, initWithERSCompositeDiscoveryService_withJavaUtilList_, outer$, capture$0)
}

ERSCompositeDiscoveryService_$Lambda$2 *create_ERSCompositeDiscoveryService_$Lambda$2_initWithERSCompositeDiscoveryService_withJavaUtilList_(ERSCompositeDiscoveryService *outer$, id<JavaUtilList> capture$0) {
  J2OBJC_CREATE_IMPL(ERSCompositeDiscoveryService_$Lambda$2, initWithERSCompositeDiscoveryService_withJavaUtilList_, outer$, capture$0)
}

@implementation ERSCompositeDiscoveryService_$Lambda$1

- (jboolean)onDevicesWithJavaUtilList:(id<JavaUtilList>)result {
  [((id<JavaUtilStreamStream>) nil_chk([((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(this$0_->listeners_)) parallelStream])) forEachWithJavaUtilFunctionConsumer:new_ERSCompositeDiscoveryService_$Lambda$2_initWithERSCompositeDiscoveryService_withJavaUtilList_(this$0_, result)];
  return true;
}

@end

void ERSCompositeDiscoveryService_$Lambda$1_initWithERSCompositeDiscoveryService_(ERSCompositeDiscoveryService_$Lambda$1 *self, ERSCompositeDiscoveryService *outer$) {
  self->this$0_ = outer$;
  NSObject_init(self);
}

ERSCompositeDiscoveryService_$Lambda$1 *new_ERSCompositeDiscoveryService_$Lambda$1_initWithERSCompositeDiscoveryService_(ERSCompositeDiscoveryService *outer$) {
  J2OBJC_NEW_IMPL(ERSCompositeDiscoveryService_$Lambda$1, initWithERSCompositeDiscoveryService_, outer$)
}

ERSCompositeDiscoveryService_$Lambda$1 *create_ERSCompositeDiscoveryService_$Lambda$1_initWithERSCompositeDiscoveryService_(ERSCompositeDiscoveryService *outer$) {
  J2OBJC_CREATE_IMPL(ERSCompositeDiscoveryService_$Lambda$1, initWithERSCompositeDiscoveryService_, outer$)
}

@implementation ERSCompositeDiscoveryService_$Lambda$4

- (void)acceptWithId:(id<JavaUtilList>)a {
  [target$_ addAllWithJavaUtilCollection:a];
}

- (id<JavaUtilFunctionConsumer>)andThenWithJavaUtilFunctionConsumer:(id<JavaUtilFunctionConsumer>)arg0 {
  return JavaUtilFunctionConsumer_andThenWithJavaUtilFunctionConsumer_(self, arg0);
}

@end

void ERSCompositeDiscoveryService_$Lambda$4_initWithJavaUtilArrayList_(ERSCompositeDiscoveryService_$Lambda$4 *self, JavaUtilArrayList *outer$) {
  self->target$_ = outer$;
  NSObject_init(self);
}

ERSCompositeDiscoveryService_$Lambda$4 *new_ERSCompositeDiscoveryService_$Lambda$4_initWithJavaUtilArrayList_(JavaUtilArrayList *outer$) {
  J2OBJC_NEW_IMPL(ERSCompositeDiscoveryService_$Lambda$4, initWithJavaUtilArrayList_, outer$)
}

ERSCompositeDiscoveryService_$Lambda$4 *create_ERSCompositeDiscoveryService_$Lambda$4_initWithJavaUtilArrayList_(JavaUtilArrayList *outer$) {
  J2OBJC_CREATE_IMPL(ERSCompositeDiscoveryService_$Lambda$4, initWithJavaUtilArrayList_, outer$)
}

@implementation ERSCompositeDiscoveryService_$Lambda$3

- (jboolean)onDevicesWithJavaUtilList:(id<JavaUtilList>)result {
  (void) IOSObjectArray_Set(nil_chk(val$results_), val$index_, result);
  {
    IOSObjectArray *a__ = val$results_;
    id<JavaUtilList> const *b__ = a__->buffer_;
    id<JavaUtilList> const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      id<JavaUtilList> check = *b__++;
      if (check == nil) {
        return false;
      }
    }
  }
  JavaUtilArrayList *total = new_JavaUtilArrayList_init();
  [((id<JavaUtilStreamStream>) nil_chk(JavaUtilArrays_streamWithNSObjectArray_(val$results_))) forEachWithJavaUtilFunctionConsumer:new_ERSCompositeDiscoveryService_$Lambda$4_initWithJavaUtilArrayList_(total)];
  [((id<ERSDiscoveryService_DeviceListCallback>) nil_chk(val$callback_)) onDevicesWithJavaUtilList:total];
  return false;
}

@end

void ERSCompositeDiscoveryService_$Lambda$3_initWithJavaUtilListArray_withInt_withERSDiscoveryService_DeviceListCallback_(ERSCompositeDiscoveryService_$Lambda$3 *self, IOSObjectArray *capture$0, jint capture$1, id<ERSDiscoveryService_DeviceListCallback> capture$2) {
  self->val$results_ = capture$0;
  self->val$index_ = capture$1;
  self->val$callback_ = capture$2;
  NSObject_init(self);
}

ERSCompositeDiscoveryService_$Lambda$3 *new_ERSCompositeDiscoveryService_$Lambda$3_initWithJavaUtilListArray_withInt_withERSDiscoveryService_DeviceListCallback_(IOSObjectArray *capture$0, jint capture$1, id<ERSDiscoveryService_DeviceListCallback> capture$2) {
  J2OBJC_NEW_IMPL(ERSCompositeDiscoveryService_$Lambda$3, initWithJavaUtilListArray_withInt_withERSDiscoveryService_DeviceListCallback_, capture$0, capture$1, capture$2)
}

ERSCompositeDiscoveryService_$Lambda$3 *create_ERSCompositeDiscoveryService_$Lambda$3_initWithJavaUtilListArray_withInt_withERSDiscoveryService_DeviceListCallback_(IOSObjectArray *capture$0, jint capture$1, id<ERSDiscoveryService_DeviceListCallback> capture$2) {
  J2OBJC_CREATE_IMPL(ERSCompositeDiscoveryService_$Lambda$3, initWithJavaUtilListArray_withInt_withERSDiscoveryService_DeviceListCallback_, capture$0, capture$1, capture$2)
}

J2OBJC_INITIALIZED_DEFN(ERSCompositeDiscoveryService_$Lambda$6)

@implementation ERSCompositeDiscoveryService_$Lambda$6

- (void)acceptWithId:(id<ERSDiscoveryService>)d {
  [((JavaUtilLoggingLogger *) nil_chk(JreLoadStatic(ERSCompositeDiscoveryService, LOGGER))) infoWithNSString:JreStrcat("$$", @"Starting refresh on ", [[((id<ERSDiscoveryService>) nil_chk(d)) java_getClass] getCanonicalName])];
  @try {
    [d refresh];
  }
  @catch (JavaLangException *e) {
    [JreLoadStatic(ERSCompositeDiscoveryService, LOGGER) logWithJavaUtilLoggingLevel:JreLoadStatic(JavaUtilLoggingLevel, WARNING) withNSString:nil withNSException:e];
  }
}

- (id<JavaUtilFunctionConsumer>)andThenWithJavaUtilFunctionConsumer:(id<JavaUtilFunctionConsumer>)arg0 {
  return JavaUtilFunctionConsumer_andThenWithJavaUtilFunctionConsumer_(self, arg0);
}

+ (void)initialize {
  if (self == [ERSCompositeDiscoveryService_$Lambda$6 class]) {
    ERSCompositeDiscoveryService_$Lambda$6_instance = new_ERSCompositeDiscoveryService_$Lambda$6_init();
    J2OBJC_SET_INITIALIZED(ERSCompositeDiscoveryService_$Lambda$6)
  }
}

@end

void ERSCompositeDiscoveryService_$Lambda$6_init(ERSCompositeDiscoveryService_$Lambda$6 *self) {
  NSObject_init(self);
}

ERSCompositeDiscoveryService_$Lambda$6 *new_ERSCompositeDiscoveryService_$Lambda$6_init() {
  J2OBJC_NEW_IMPL(ERSCompositeDiscoveryService_$Lambda$6, init)
}

ERSCompositeDiscoveryService_$Lambda$6 *create_ERSCompositeDiscoveryService_$Lambda$6_init() {
  J2OBJC_CREATE_IMPL(ERSCompositeDiscoveryService_$Lambda$6, init)
}

@implementation ERSCompositeDiscoveryService_$Lambda$5

- (void)run {
  [((id<JavaUtilStreamStream>) nil_chk(JavaUtilArrays_streamWithNSObjectArray_(this$0_->internal_))) forEachWithJavaUtilFunctionConsumer:JreLoadStatic(ERSCompositeDiscoveryService_$Lambda$6, instance)];
}

@end

void ERSCompositeDiscoveryService_$Lambda$5_initWithERSCompositeDiscoveryService_(ERSCompositeDiscoveryService_$Lambda$5 *self, ERSCompositeDiscoveryService *outer$) {
  self->this$0_ = outer$;
  NSObject_init(self);
}

ERSCompositeDiscoveryService_$Lambda$5 *new_ERSCompositeDiscoveryService_$Lambda$5_initWithERSCompositeDiscoveryService_(ERSCompositeDiscoveryService *outer$) {
  J2OBJC_NEW_IMPL(ERSCompositeDiscoveryService_$Lambda$5, initWithERSCompositeDiscoveryService_, outer$)
}

ERSCompositeDiscoveryService_$Lambda$5 *create_ERSCompositeDiscoveryService_$Lambda$5_initWithERSCompositeDiscoveryService_(ERSCompositeDiscoveryService *outer$) {
  J2OBJC_CREATE_IMPL(ERSCompositeDiscoveryService_$Lambda$5, initWithERSCompositeDiscoveryService_, outer$)
}