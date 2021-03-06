//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/util/concurrent/AbstractTransformFuture.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/Function.h"
#include "com/google/common/base/Preconditions.h"
#include "com/google/common/util/concurrent/AbstractFuture.h"
#include "com/google/common/util/concurrent/AbstractTransformFuture.h"
#include "com/google/common/util/concurrent/AsyncFunction.h"
#include "com/google/common/util/concurrent/Futures.h"
#include "com/google/common/util/concurrent/ListenableFuture.h"
#include "com/google/common/util/concurrent/MoreExecutors.h"
#include "java/lang/Error.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/annotation/Annotation.h"
#include "java/lang/reflect/UndeclaredThrowableException.h"
#include "java/util/concurrent/CancellationException.h"
#include "java/util/concurrent/ExecutionException.h"
#include "java/util/concurrent/Executor.h"
#include "javax/annotation/Nullable.h"

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonUtilConcurrentAbstractTransformFuture__Annotations$0();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonUtilConcurrentAbstractTransformFuture__Annotations$1();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonUtilConcurrentAbstractTransformFuture__Annotations$2();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonUtilConcurrentAbstractTransformFuture__Annotations$3();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonUtilConcurrentAbstractTransformFuture__Annotations$4();

@interface ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture : ComGoogleCommonUtilConcurrentAbstractTransformFuture

- (instancetype)initWithComGoogleCommonUtilConcurrentListenableFuture:(id<ComGoogleCommonUtilConcurrentListenableFuture>)inputFuture
                       withComGoogleCommonUtilConcurrentAsyncFunction:(id<ComGoogleCommonUtilConcurrentAsyncFunction>)function;

- (id<ComGoogleCommonUtilConcurrentListenableFuture>)doTransformWithId:(id<ComGoogleCommonUtilConcurrentAsyncFunction>)function
                                                                withId:(id)input;

- (void)setResultWithId:(id<ComGoogleCommonUtilConcurrentListenableFuture>)result;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture)

__attribute__((unused)) static void ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture_initWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonUtilConcurrentAsyncFunction_(ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture *self, id<ComGoogleCommonUtilConcurrentListenableFuture> inputFuture, id<ComGoogleCommonUtilConcurrentAsyncFunction> function);

__attribute__((unused)) static ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture *new_ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture_initWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonUtilConcurrentAsyncFunction_(id<ComGoogleCommonUtilConcurrentListenableFuture> inputFuture, id<ComGoogleCommonUtilConcurrentAsyncFunction> function) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture *create_ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture_initWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonUtilConcurrentAsyncFunction_(id<ComGoogleCommonUtilConcurrentListenableFuture> inputFuture, id<ComGoogleCommonUtilConcurrentAsyncFunction> function);

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture__Annotations$0();

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture)

@interface ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture : ComGoogleCommonUtilConcurrentAbstractTransformFuture

- (instancetype)initWithComGoogleCommonUtilConcurrentListenableFuture:(id<ComGoogleCommonUtilConcurrentListenableFuture>)inputFuture
                                      withComGoogleCommonBaseFunction:(id<ComGoogleCommonBaseFunction>)function;

- (id)doTransformWithId:(id<ComGoogleCommonBaseFunction>)function
                 withId:(id)input;

- (void)setResultWithId:(id)result;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture)

__attribute__((unused)) static void ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture_initWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonBaseFunction_(ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture *self, id<ComGoogleCommonUtilConcurrentListenableFuture> inputFuture, id<ComGoogleCommonBaseFunction> function);

__attribute__((unused)) static ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture *new_ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture_initWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonBaseFunction_(id<ComGoogleCommonUtilConcurrentListenableFuture> inputFuture, id<ComGoogleCommonBaseFunction> function) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture *create_ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture_initWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonBaseFunction_(id<ComGoogleCommonUtilConcurrentListenableFuture> inputFuture, id<ComGoogleCommonBaseFunction> function);

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture__Annotations$0();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture__Annotations$1();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture__Annotations$2();

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture)

@implementation ComGoogleCommonUtilConcurrentAbstractTransformFuture

+ (id<ComGoogleCommonUtilConcurrentListenableFuture>)createWithComGoogleCommonUtilConcurrentListenableFuture:(id<ComGoogleCommonUtilConcurrentListenableFuture>)input
                                                              withComGoogleCommonUtilConcurrentAsyncFunction:(id<ComGoogleCommonUtilConcurrentAsyncFunction>)function {
  return ComGoogleCommonUtilConcurrentAbstractTransformFuture_createWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonUtilConcurrentAsyncFunction_(input, function);
}

+ (id<ComGoogleCommonUtilConcurrentListenableFuture>)createWithComGoogleCommonUtilConcurrentListenableFuture:(id<ComGoogleCommonUtilConcurrentListenableFuture>)input
                                                              withComGoogleCommonUtilConcurrentAsyncFunction:(id<ComGoogleCommonUtilConcurrentAsyncFunction>)function
                                                                              withJavaUtilConcurrentExecutor:(id<JavaUtilConcurrentExecutor>)executor {
  return ComGoogleCommonUtilConcurrentAbstractTransformFuture_createWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonUtilConcurrentAsyncFunction_withJavaUtilConcurrentExecutor_(input, function, executor);
}

+ (id<ComGoogleCommonUtilConcurrentListenableFuture>)createWithComGoogleCommonUtilConcurrentListenableFuture:(id<ComGoogleCommonUtilConcurrentListenableFuture>)input
                                                                             withComGoogleCommonBaseFunction:(id<ComGoogleCommonBaseFunction>)function {
  return ComGoogleCommonUtilConcurrentAbstractTransformFuture_createWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonBaseFunction_(input, function);
}

+ (id<ComGoogleCommonUtilConcurrentListenableFuture>)createWithComGoogleCommonUtilConcurrentListenableFuture:(id<ComGoogleCommonUtilConcurrentListenableFuture>)input
                                                                             withComGoogleCommonBaseFunction:(id<ComGoogleCommonBaseFunction>)function
                                                                              withJavaUtilConcurrentExecutor:(id<JavaUtilConcurrentExecutor>)executor {
  return ComGoogleCommonUtilConcurrentAbstractTransformFuture_createWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonBaseFunction_withJavaUtilConcurrentExecutor_(input, function, executor);
}

- (instancetype)initWithComGoogleCommonUtilConcurrentListenableFuture:(id<ComGoogleCommonUtilConcurrentListenableFuture>)inputFuture
                                                               withId:(id)function {
  ComGoogleCommonUtilConcurrentAbstractTransformFuture_initWithComGoogleCommonUtilConcurrentListenableFuture_withId_(self, inputFuture, function);
  return self;
}

- (void)run {
  id<ComGoogleCommonUtilConcurrentListenableFuture> localInputFuture = inputFuture_;
  id localFunction = function_;
  if ([self isCancelled] | (localInputFuture == nil) | (localFunction == nil)) {
    return;
  }
  inputFuture_ = nil;
  function_ = nil;
  id sourceResult;
  @try {
    sourceResult = ComGoogleCommonUtilConcurrentFutures_getDoneWithJavaUtilConcurrentFuture_(localInputFuture);
  }
  @catch (JavaUtilConcurrentCancellationException *e) {
    [self cancelWithBoolean:false];
    return;
  }
  @catch (JavaUtilConcurrentExecutionException *e) {
    [self setExceptionWithNSException:[e getCause]];
    return;
  }
  @catch (JavaLangRuntimeException *e) {
    [self setExceptionWithNSException:e];
    return;
  }
  @catch (JavaLangError *e) {
    [self setExceptionWithNSException:e];
    return;
  }
  id transformResult;
  @try {
    transformResult = [self doTransformWithId:localFunction withId:sourceResult];
  }
  @catch (JavaLangReflectUndeclaredThrowableException *e) {
    [self setExceptionWithNSException:[e getCause]];
    return;
  }
  @catch (NSException *t) {
    [self setExceptionWithNSException:t];
    return;
  }
  [self setResultWithId:transformResult];
}

- (id)doTransformWithId:(id)function
                 withId:(id)result {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)setResultWithId:(id)result {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)afterDone {
  [self maybePropagateCancellationWithJavaUtilConcurrentFuture:inputFuture_];
  self->inputFuture_ = nil;
  self->function_ = nil;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LComGoogleCommonUtilConcurrentListenableFuture;", 0x8, 0, 1, -1, 2, -1, -1 },
    { NULL, "LComGoogleCommonUtilConcurrentListenableFuture;", 0x8, 0, 3, -1, 4, -1, -1 },
    { NULL, "LComGoogleCommonUtilConcurrentListenableFuture;", 0x8, 0, 5, -1, 6, -1, -1 },
    { NULL, "LComGoogleCommonUtilConcurrentListenableFuture;", 0x8, 0, 7, -1, 8, -1, -1 },
    { NULL, NULL, 0x0, -1, 9, -1, 10, -1, -1 },
    { NULL, "V", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x400, 11, 12, 13, 14, 15, 16 },
    { NULL, "V", 0x400, 17, 18, -1, 19, -1, 20 },
    { NULL, "V", 0x14, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(createWithComGoogleCommonUtilConcurrentListenableFuture:withComGoogleCommonUtilConcurrentAsyncFunction:);
  methods[1].selector = @selector(createWithComGoogleCommonUtilConcurrentListenableFuture:withComGoogleCommonUtilConcurrentAsyncFunction:withJavaUtilConcurrentExecutor:);
  methods[2].selector = @selector(createWithComGoogleCommonUtilConcurrentListenableFuture:withComGoogleCommonBaseFunction:);
  methods[3].selector = @selector(createWithComGoogleCommonUtilConcurrentListenableFuture:withComGoogleCommonBaseFunction:withJavaUtilConcurrentExecutor:);
  methods[4].selector = @selector(initWithComGoogleCommonUtilConcurrentListenableFuture:withId:);
  methods[5].selector = @selector(run);
  methods[6].selector = @selector(doTransformWithId:withId:);
  methods[7].selector = @selector(setResultWithId:);
  methods[8].selector = @selector(afterDone);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "inputFuture_", "LComGoogleCommonUtilConcurrentListenableFuture;", .constantValue.asLong = 0, 0x0, -1, -1, 21, 22 },
    { "function_", "LNSObject;", .constantValue.asLong = 0, 0x0, -1, -1, 23, 24 },
  };
  static const void *ptrTable[] = { "create", "LComGoogleCommonUtilConcurrentListenableFuture;LComGoogleCommonUtilConcurrentAsyncFunction;", "<I:Ljava/lang/Object;O:Ljava/lang/Object;>(Lcom/google/common/util/concurrent/ListenableFuture<TI;>;Lcom/google/common/util/concurrent/AsyncFunction<-TI;+TO;>;)Lcom/google/common/util/concurrent/ListenableFuture<TO;>;", "LComGoogleCommonUtilConcurrentListenableFuture;LComGoogleCommonUtilConcurrentAsyncFunction;LJavaUtilConcurrentExecutor;", "<I:Ljava/lang/Object;O:Ljava/lang/Object;>(Lcom/google/common/util/concurrent/ListenableFuture<TI;>;Lcom/google/common/util/concurrent/AsyncFunction<-TI;+TO;>;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture<TO;>;", "LComGoogleCommonUtilConcurrentListenableFuture;LComGoogleCommonBaseFunction;", "<I:Ljava/lang/Object;O:Ljava/lang/Object;>(Lcom/google/common/util/concurrent/ListenableFuture<TI;>;Lcom/google/common/base/Function<-TI;+TO;>;)Lcom/google/common/util/concurrent/ListenableFuture<TO;>;", "LComGoogleCommonUtilConcurrentListenableFuture;LComGoogleCommonBaseFunction;LJavaUtilConcurrentExecutor;", "<I:Ljava/lang/Object;O:Ljava/lang/Object;>(Lcom/google/common/util/concurrent/ListenableFuture<TI;>;Lcom/google/common/base/Function<-TI;+TO;>;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture<TO;>;", "LComGoogleCommonUtilConcurrentListenableFuture;LNSObject;", "(Lcom/google/common/util/concurrent/ListenableFuture<+TI;>;TF;)V", "doTransform", "LNSObject;LNSObject;", "LJavaLangException;", "(TF;TI;)TT;", (void *)&ComGoogleCommonUtilConcurrentAbstractTransformFuture__Annotations$0, (void *)&ComGoogleCommonUtilConcurrentAbstractTransformFuture__Annotations$1, "setResult", "LNSObject;", "(TT;)V", (void *)&ComGoogleCommonUtilConcurrentAbstractTransformFuture__Annotations$2, "Lcom/google/common/util/concurrent/ListenableFuture<+TI;>;", (void *)&ComGoogleCommonUtilConcurrentAbstractTransformFuture__Annotations$3, "TF;", (void *)&ComGoogleCommonUtilConcurrentAbstractTransformFuture__Annotations$4, "LComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture;LComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture;", "<I:Ljava/lang/Object;O:Ljava/lang/Object;F:Ljava/lang/Object;T:Ljava/lang/Object;>Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture<TO;>;Ljava/lang/Runnable;" };
  static const J2ObjcClassInfo _ComGoogleCommonUtilConcurrentAbstractTransformFuture = { "AbstractTransformFuture", "com.google.common.util.concurrent", ptrTable, methods, fields, 7, 0x400, 9, 2, -1, 25, -1, 26, -1 };
  return &_ComGoogleCommonUtilConcurrentAbstractTransformFuture;
}

@end

id<ComGoogleCommonUtilConcurrentListenableFuture> ComGoogleCommonUtilConcurrentAbstractTransformFuture_createWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonUtilConcurrentAsyncFunction_(id<ComGoogleCommonUtilConcurrentListenableFuture> input, id<ComGoogleCommonUtilConcurrentAsyncFunction> function) {
  ComGoogleCommonUtilConcurrentAbstractTransformFuture_initialize();
  ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture *output = new_ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture_initWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonUtilConcurrentAsyncFunction_(input, function);
  [((id<ComGoogleCommonUtilConcurrentListenableFuture>) nil_chk(input)) addListenerWithJavaLangRunnable:output withJavaUtilConcurrentExecutor:ComGoogleCommonUtilConcurrentMoreExecutors_directExecutor()];
  return output;
}

id<ComGoogleCommonUtilConcurrentListenableFuture> ComGoogleCommonUtilConcurrentAbstractTransformFuture_createWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonUtilConcurrentAsyncFunction_withJavaUtilConcurrentExecutor_(id<ComGoogleCommonUtilConcurrentListenableFuture> input, id<ComGoogleCommonUtilConcurrentAsyncFunction> function, id<JavaUtilConcurrentExecutor> executor) {
  ComGoogleCommonUtilConcurrentAbstractTransformFuture_initialize();
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(executor);
  ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture *output = new_ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture_initWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonUtilConcurrentAsyncFunction_(input, function);
  [((id<ComGoogleCommonUtilConcurrentListenableFuture>) nil_chk(input)) addListenerWithJavaLangRunnable:output withJavaUtilConcurrentExecutor:ComGoogleCommonUtilConcurrentMoreExecutors_rejectionPropagatingExecutorWithJavaUtilConcurrentExecutor_withComGoogleCommonUtilConcurrentAbstractFuture_(executor, output)];
  return output;
}

id<ComGoogleCommonUtilConcurrentListenableFuture> ComGoogleCommonUtilConcurrentAbstractTransformFuture_createWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonBaseFunction_(id<ComGoogleCommonUtilConcurrentListenableFuture> input, id<ComGoogleCommonBaseFunction> function) {
  ComGoogleCommonUtilConcurrentAbstractTransformFuture_initialize();
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(function);
  ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture *output = new_ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture_initWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonBaseFunction_(input, function);
  [((id<ComGoogleCommonUtilConcurrentListenableFuture>) nil_chk(input)) addListenerWithJavaLangRunnable:output withJavaUtilConcurrentExecutor:ComGoogleCommonUtilConcurrentMoreExecutors_directExecutor()];
  return output;
}

id<ComGoogleCommonUtilConcurrentListenableFuture> ComGoogleCommonUtilConcurrentAbstractTransformFuture_createWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonBaseFunction_withJavaUtilConcurrentExecutor_(id<ComGoogleCommonUtilConcurrentListenableFuture> input, id<ComGoogleCommonBaseFunction> function, id<JavaUtilConcurrentExecutor> executor) {
  ComGoogleCommonUtilConcurrentAbstractTransformFuture_initialize();
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(function);
  ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture *output = new_ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture_initWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonBaseFunction_(input, function);
  [((id<ComGoogleCommonUtilConcurrentListenableFuture>) nil_chk(input)) addListenerWithJavaLangRunnable:output withJavaUtilConcurrentExecutor:ComGoogleCommonUtilConcurrentMoreExecutors_rejectionPropagatingExecutorWithJavaUtilConcurrentExecutor_withComGoogleCommonUtilConcurrentAbstractFuture_(executor, output)];
  return output;
}

void ComGoogleCommonUtilConcurrentAbstractTransformFuture_initWithComGoogleCommonUtilConcurrentListenableFuture_withId_(ComGoogleCommonUtilConcurrentAbstractTransformFuture *self, id<ComGoogleCommonUtilConcurrentListenableFuture> inputFuture, id function) {
  ComGoogleCommonUtilConcurrentAbstractFuture_TrustedFuture_init(self);
  self->inputFuture_ = ComGoogleCommonBasePreconditions_checkNotNullWithId_(inputFuture);
  self->function_ = ComGoogleCommonBasePreconditions_checkNotNullWithId_(function);
}

IOSObjectArray *ComGoogleCommonUtilConcurrentAbstractTransformFuture__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *ComGoogleCommonUtilConcurrentAbstractTransformFuture__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithLength:0 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:2 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *ComGoogleCommonUtilConcurrentAbstractTransformFuture__Annotations$2() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *ComGoogleCommonUtilConcurrentAbstractTransformFuture__Annotations$3() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *ComGoogleCommonUtilConcurrentAbstractTransformFuture__Annotations$4() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonUtilConcurrentAbstractTransformFuture)

@implementation ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture

- (instancetype)initWithComGoogleCommonUtilConcurrentListenableFuture:(id<ComGoogleCommonUtilConcurrentListenableFuture>)inputFuture
                       withComGoogleCommonUtilConcurrentAsyncFunction:(id<ComGoogleCommonUtilConcurrentAsyncFunction>)function {
  ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture_initWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonUtilConcurrentAsyncFunction_(self, inputFuture, function);
  return self;
}

- (id<ComGoogleCommonUtilConcurrentListenableFuture>)doTransformWithId:(id<ComGoogleCommonUtilConcurrentAsyncFunction>)function
                                                                withId:(id)input {
  id<ComGoogleCommonUtilConcurrentListenableFuture> outputFuture = [((id<ComGoogleCommonUtilConcurrentAsyncFunction>) nil_chk(function)) applyWithId:input];
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_withId_(outputFuture, @"AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)?");
  return outputFuture;
}

- (void)setResultWithId:(id<ComGoogleCommonUtilConcurrentListenableFuture>)result {
  [self setFutureWithComGoogleCommonUtilConcurrentListenableFuture:result];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { NULL, "LComGoogleCommonUtilConcurrentListenableFuture;", 0x0, 2, 3, 4, 5, -1, 6 },
    { NULL, "V", 0x0, 7, 8, -1, 9, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithComGoogleCommonUtilConcurrentListenableFuture:withComGoogleCommonUtilConcurrentAsyncFunction:);
  methods[1].selector = @selector(doTransformWithId:withId:);
  methods[2].selector = @selector(setResultWithId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LComGoogleCommonUtilConcurrentListenableFuture;LComGoogleCommonUtilConcurrentAsyncFunction;", "(Lcom/google/common/util/concurrent/ListenableFuture<+TI;>;Lcom/google/common/util/concurrent/AsyncFunction<-TI;+TO;>;)V", "doTransform", "LComGoogleCommonUtilConcurrentAsyncFunction;LNSObject;", "LJavaLangException;", "(Lcom/google/common/util/concurrent/AsyncFunction<-TI;+TO;>;TI;)Lcom/google/common/util/concurrent/ListenableFuture<+TO;>;", (void *)&ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture__Annotations$0, "setResult", "LComGoogleCommonUtilConcurrentListenableFuture;", "(Lcom/google/common/util/concurrent/ListenableFuture<+TO;>;)V", "LComGoogleCommonUtilConcurrentAbstractTransformFuture;", "<I:Ljava/lang/Object;O:Ljava/lang/Object;>Lcom/google/common/util/concurrent/AbstractTransformFuture<TI;TO;Lcom/google/common/util/concurrent/AsyncFunction<-TI;+TO;>;Lcom/google/common/util/concurrent/ListenableFuture<+TO;>;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture = { "AsyncTransformFuture", "com.google.common.util.concurrent", ptrTable, methods, NULL, 7, 0x1a, 3, 0, 10, -1, -1, 11, -1 };
  return &_ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture;
}

@end

void ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture_initWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonUtilConcurrentAsyncFunction_(ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture *self, id<ComGoogleCommonUtilConcurrentListenableFuture> inputFuture, id<ComGoogleCommonUtilConcurrentAsyncFunction> function) {
  ComGoogleCommonUtilConcurrentAbstractTransformFuture_initWithComGoogleCommonUtilConcurrentListenableFuture_withId_(self, inputFuture, function);
}

ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture *new_ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture_initWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonUtilConcurrentAsyncFunction_(id<ComGoogleCommonUtilConcurrentListenableFuture> inputFuture, id<ComGoogleCommonUtilConcurrentAsyncFunction> function) {
  J2OBJC_NEW_IMPL(ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture, initWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonUtilConcurrentAsyncFunction_, inputFuture, function)
}

ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture *create_ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture_initWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonUtilConcurrentAsyncFunction_(id<ComGoogleCommonUtilConcurrentListenableFuture> inputFuture, id<ComGoogleCommonUtilConcurrentAsyncFunction> function) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture, initWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonUtilConcurrentAsyncFunction_, inputFuture, function)
}

IOSObjectArray *ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithLength:0 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:2 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonUtilConcurrentAbstractTransformFuture_AsyncTransformFuture)

@implementation ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture

- (instancetype)initWithComGoogleCommonUtilConcurrentListenableFuture:(id<ComGoogleCommonUtilConcurrentListenableFuture>)inputFuture
                                      withComGoogleCommonBaseFunction:(id<ComGoogleCommonBaseFunction>)function {
  ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture_initWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonBaseFunction_(self, inputFuture, function);
  return self;
}

- (id)doTransformWithId:(id<ComGoogleCommonBaseFunction>)function
                 withId:(id)input {
  return [((id<ComGoogleCommonBaseFunction>) nil_chk(function)) applyWithId:input];
}

- (void)setResultWithId:(id)result {
  [self setWithId:result];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { NULL, "LNSObject;", 0x0, 2, 3, -1, 4, 5, 6 },
    { NULL, "V", 0x0, 7, 8, -1, 9, -1, 10 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithComGoogleCommonUtilConcurrentListenableFuture:withComGoogleCommonBaseFunction:);
  methods[1].selector = @selector(doTransformWithId:withId:);
  methods[2].selector = @selector(setResultWithId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LComGoogleCommonUtilConcurrentListenableFuture;LComGoogleCommonBaseFunction;", "(Lcom/google/common/util/concurrent/ListenableFuture<+TI;>;Lcom/google/common/base/Function<-TI;+TO;>;)V", "doTransform", "LComGoogleCommonBaseFunction;LNSObject;", "(Lcom/google/common/base/Function<-TI;+TO;>;TI;)TO;", (void *)&ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture__Annotations$0, (void *)&ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture__Annotations$1, "setResult", "LNSObject;", "(TO;)V", (void *)&ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture__Annotations$2, "LComGoogleCommonUtilConcurrentAbstractTransformFuture;", "<I:Ljava/lang/Object;O:Ljava/lang/Object;>Lcom/google/common/util/concurrent/AbstractTransformFuture<TI;TO;Lcom/google/common/base/Function<-TI;+TO;>;TO;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture = { "TransformFuture", "com.google.common.util.concurrent", ptrTable, methods, NULL, 7, 0x1a, 3, 0, 11, -1, -1, 12, -1 };
  return &_ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture;
}

@end

void ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture_initWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonBaseFunction_(ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture *self, id<ComGoogleCommonUtilConcurrentListenableFuture> inputFuture, id<ComGoogleCommonBaseFunction> function) {
  ComGoogleCommonUtilConcurrentAbstractTransformFuture_initWithComGoogleCommonUtilConcurrentListenableFuture_withId_(self, inputFuture, function);
}

ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture *new_ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture_initWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonBaseFunction_(id<ComGoogleCommonUtilConcurrentListenableFuture> inputFuture, id<ComGoogleCommonBaseFunction> function) {
  J2OBJC_NEW_IMPL(ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture, initWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonBaseFunction_, inputFuture, function)
}

ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture *create_ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture_initWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonBaseFunction_(id<ComGoogleCommonUtilConcurrentListenableFuture> inputFuture, id<ComGoogleCommonBaseFunction> function) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture, initWithComGoogleCommonUtilConcurrentListenableFuture_withComGoogleCommonBaseFunction_, inputFuture, function)
}

IOSObjectArray *ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithLength:0 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:2 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture__Annotations$2() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonUtilConcurrentAbstractTransformFuture_TransformFuture)
