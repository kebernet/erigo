//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/eventbus/DeadEvent.java
//

#include "J2ObjC_source.h"
#include "com/google/common/base/MoreObjects.h"
#include "com/google/common/base/Preconditions.h"
#include "com/google/common/eventbus/DeadEvent.h"

@interface ComGoogleCommonEventbusDeadEvent () {
 @public
  id source_;
  id event_;
}

@end

J2OBJC_FIELD_SETTER(ComGoogleCommonEventbusDeadEvent, source_, id)
J2OBJC_FIELD_SETTER(ComGoogleCommonEventbusDeadEvent, event_, id)

@implementation ComGoogleCommonEventbusDeadEvent

- (instancetype)initWithId:(id)source
                    withId:(id)event {
  ComGoogleCommonEventbusDeadEvent_initWithId_withId_(self, source, event);
  return self;
}

- (id)getSource {
  return source_;
}

- (id)getEvent {
  return event_;
}

- (NSString *)description {
  return [((ComGoogleCommonBaseMoreObjects_ToStringHelper *) nil_chk([((ComGoogleCommonBaseMoreObjects_ToStringHelper *) nil_chk([((ComGoogleCommonBaseMoreObjects_ToStringHelper *) nil_chk(ComGoogleCommonBaseMoreObjects_toStringHelperWithId_(self))) addWithNSString:@"source" withId:source_])) addWithNSString:@"event" withId:event_])) description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithId:withId:);
  methods[1].selector = @selector(getSource);
  methods[2].selector = @selector(getEvent);
  methods[3].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "source_", "LNSObject;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "event_", "LNSObject;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSObject;LNSObject;", "toString" };
  static const J2ObjcClassInfo _ComGoogleCommonEventbusDeadEvent = { "DeadEvent", "com.google.common.eventbus", ptrTable, methods, fields, 7, 0x1, 4, 2, -1, -1, -1, -1, -1 };
  return &_ComGoogleCommonEventbusDeadEvent;
}

@end

void ComGoogleCommonEventbusDeadEvent_initWithId_withId_(ComGoogleCommonEventbusDeadEvent *self, id source, id event) {
  NSObject_init(self);
  self->source_ = ComGoogleCommonBasePreconditions_checkNotNullWithId_(source);
  self->event_ = ComGoogleCommonBasePreconditions_checkNotNullWithId_(event);
}

ComGoogleCommonEventbusDeadEvent *new_ComGoogleCommonEventbusDeadEvent_initWithId_withId_(id source, id event) {
  J2OBJC_NEW_IMPL(ComGoogleCommonEventbusDeadEvent, initWithId_withId_, source, event)
}

ComGoogleCommonEventbusDeadEvent *create_ComGoogleCommonEventbusDeadEvent_initWithId_withId_(id source, id event) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonEventbusDeadEvent, initWithId_withId_, source, event)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonEventbusDeadEvent)
