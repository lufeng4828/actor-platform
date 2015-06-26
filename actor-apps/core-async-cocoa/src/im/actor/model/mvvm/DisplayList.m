//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-async/src/main/java/im/actor/model/mvvm/DisplayList.java
//


#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/Actor.h"
#include "im/actor/model/droidkit/actors/ActorCreator.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/actors/ActorSystem.h"
#include "im/actor/model/droidkit/actors/Props.h"
#include "im/actor/model/mvvm/AndroidListUpdate.h"
#include "im/actor/model/mvvm/AppleListUpdate.h"
#include "im/actor/model/mvvm/BackgroundProcessor.h"
#include "im/actor/model/mvvm/ChangeDescription.h"
#include "im/actor/model/mvvm/DisplayList.h"
#include "im/actor/model/mvvm/MVVMEngine.h"
#include "im/actor/model/mvvm/alg/ChangeBuilder.h"
#include "im/actor/model/mvvm/alg/Modification.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Runnable.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "java/util/concurrent/CopyOnWriteArrayList.h"

@interface AMDisplayList () {
 @public
  jint DISPLAY_LIST_ID_;
  DKActorRef *executor_;
  IOSObjectArray *lists_;
  jint currentList_;
  JavaUtilConcurrentCopyOnWriteArrayList *listeners_;
  JavaUtilConcurrentCopyOnWriteArrayList *androidListeners_;
  JavaUtilConcurrentCopyOnWriteArrayList *appleListeners_;
  id<AMBackgroundProcessor> backgroundProcessor_;
}

@end

J2OBJC_FIELD_SETTER(AMDisplayList, executor_, DKActorRef *)
J2OBJC_FIELD_SETTER(AMDisplayList, lists_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(AMDisplayList, listeners_, JavaUtilConcurrentCopyOnWriteArrayList *)
J2OBJC_FIELD_SETTER(AMDisplayList, androidListeners_, JavaUtilConcurrentCopyOnWriteArrayList *)
J2OBJC_FIELD_SETTER(AMDisplayList, appleListeners_, JavaUtilConcurrentCopyOnWriteArrayList *)
J2OBJC_FIELD_SETTER(AMDisplayList, backgroundProcessor_, id<AMBackgroundProcessor>)

static jint AMDisplayList_NEXT_ID_ = 0;
J2OBJC_STATIC_FIELD_GETTER(AMDisplayList, NEXT_ID_, jint)
J2OBJC_STATIC_FIELD_REF_GETTER(AMDisplayList, NEXT_ID_, jint)

@interface AMDisplayList_ListSwitcher : DKActor {
 @public
  JavaUtilArrayList *pending_;
  jboolean isLocked_;
  AMDisplayList *displayList_;
}

- (instancetype)initWithAMDisplayList:(AMDisplayList *)displayList;

- (void)onEditListWithImActorModelMvvmAlgModification:(id<ImActorModelMvvmAlgModification>)modification
                                 withJavaLangRunnable:(id<JavaLangRunnable>)runnable;

- (void)requestListSwitchWithAMDisplayList_ModificationHolderArray:(IOSObjectArray *)modifications
                                             withJavaUtilArrayList:(JavaUtilArrayList *)initialList
                                             withJavaUtilArrayList:(JavaUtilArrayList *)androidChanges
                                             withJavaUtilArrayList:(JavaUtilArrayList *)appleChanges;

- (void)onListSwitchedWithAMDisplayList_ModificationHolderArray:(IOSObjectArray *)modifications;

- (void)onReceiveWithId:(id)message;

@end

J2OBJC_EMPTY_STATIC_INIT(AMDisplayList_ListSwitcher)

J2OBJC_FIELD_SETTER(AMDisplayList_ListSwitcher, pending_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(AMDisplayList_ListSwitcher, displayList_, AMDisplayList *)

__attribute__((unused)) static void AMDisplayList_ListSwitcher_initWithAMDisplayList_(AMDisplayList_ListSwitcher *self, AMDisplayList *displayList);

__attribute__((unused)) static AMDisplayList_ListSwitcher *new_AMDisplayList_ListSwitcher_initWithAMDisplayList_(AMDisplayList *displayList) NS_RETURNS_RETAINED;

__attribute__((unused)) static void AMDisplayList_ListSwitcher_requestListSwitchWithAMDisplayList_ModificationHolderArray_withJavaUtilArrayList_withJavaUtilArrayList_withJavaUtilArrayList_(AMDisplayList_ListSwitcher *self, IOSObjectArray *modifications, JavaUtilArrayList *initialList, JavaUtilArrayList *androidChanges, JavaUtilArrayList *appleChanges);

J2OBJC_TYPE_LITERAL_HEADER(AMDisplayList_ListSwitcher)

@interface AMDisplayList_ListSwitcher_$1 : NSObject < JavaLangRunnable > {
 @public
  AMDisplayList_ListSwitcher *this$0_;
  JavaUtilArrayList *val$initialList_;
  JavaUtilArrayList *val$androidChanges_;
  JavaUtilArrayList *val$appleChanges_;
  IOSObjectArray *val$modifications_;
}

- (void)run;

- (instancetype)initWithAMDisplayList_ListSwitcher:(AMDisplayList_ListSwitcher *)outer$
                             withJavaUtilArrayList:(JavaUtilArrayList *)capture$0
                             withJavaUtilArrayList:(JavaUtilArrayList *)capture$1
                             withJavaUtilArrayList:(JavaUtilArrayList *)capture$2
         withAMDisplayList_ModificationHolderArray:(IOSObjectArray *)capture$3;

@end

J2OBJC_EMPTY_STATIC_INIT(AMDisplayList_ListSwitcher_$1)

J2OBJC_FIELD_SETTER(AMDisplayList_ListSwitcher_$1, this$0_, AMDisplayList_ListSwitcher *)
J2OBJC_FIELD_SETTER(AMDisplayList_ListSwitcher_$1, val$initialList_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(AMDisplayList_ListSwitcher_$1, val$androidChanges_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(AMDisplayList_ListSwitcher_$1, val$appleChanges_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(AMDisplayList_ListSwitcher_$1, val$modifications_, IOSObjectArray *)

__attribute__((unused)) static void AMDisplayList_ListSwitcher_$1_initWithAMDisplayList_ListSwitcher_withJavaUtilArrayList_withJavaUtilArrayList_withJavaUtilArrayList_withAMDisplayList_ModificationHolderArray_(AMDisplayList_ListSwitcher_$1 *self, AMDisplayList_ListSwitcher *outer$, JavaUtilArrayList *capture$0, JavaUtilArrayList *capture$1, JavaUtilArrayList *capture$2, IOSObjectArray *capture$3);

__attribute__((unused)) static AMDisplayList_ListSwitcher_$1 *new_AMDisplayList_ListSwitcher_$1_initWithAMDisplayList_ListSwitcher_withJavaUtilArrayList_withJavaUtilArrayList_withJavaUtilArrayList_withAMDisplayList_ModificationHolderArray_(AMDisplayList_ListSwitcher *outer$, JavaUtilArrayList *capture$0, JavaUtilArrayList *capture$1, JavaUtilArrayList *capture$2, IOSObjectArray *capture$3) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMDisplayList_ListSwitcher_$1)

@interface AMDisplayList_ListSwitched : NSObject {
 @public
  IOSObjectArray *modifications_;
}

- (instancetype)initWithAMDisplayList_ModificationHolderArray:(IOSObjectArray *)modifications;

@end

J2OBJC_EMPTY_STATIC_INIT(AMDisplayList_ListSwitched)

J2OBJC_FIELD_SETTER(AMDisplayList_ListSwitched, modifications_, IOSObjectArray *)

__attribute__((unused)) static void AMDisplayList_ListSwitched_initWithAMDisplayList_ModificationHolderArray_(AMDisplayList_ListSwitched *self, IOSObjectArray *modifications);

__attribute__((unused)) static AMDisplayList_ListSwitched *new_AMDisplayList_ListSwitched_initWithAMDisplayList_ModificationHolderArray_(IOSObjectArray *modifications) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMDisplayList_ListSwitched)

@interface AMDisplayList_EditList : NSObject {
 @public
  id<ImActorModelMvvmAlgModification> modification_;
  id<JavaLangRunnable> executeAfter_;
}

- (instancetype)initWithImActorModelMvvmAlgModification:(id<ImActorModelMvvmAlgModification>)modification
                                   withJavaLangRunnable:(id<JavaLangRunnable>)executeAfter;

@end

J2OBJC_EMPTY_STATIC_INIT(AMDisplayList_EditList)

J2OBJC_FIELD_SETTER(AMDisplayList_EditList, modification_, id<ImActorModelMvvmAlgModification>)
J2OBJC_FIELD_SETTER(AMDisplayList_EditList, executeAfter_, id<JavaLangRunnable>)

__attribute__((unused)) static void AMDisplayList_EditList_initWithImActorModelMvvmAlgModification_withJavaLangRunnable_(AMDisplayList_EditList *self, id<ImActorModelMvvmAlgModification> modification, id<JavaLangRunnable> executeAfter);

__attribute__((unused)) static AMDisplayList_EditList *new_AMDisplayList_EditList_initWithImActorModelMvvmAlgModification_withJavaLangRunnable_(id<ImActorModelMvvmAlgModification> modification, id<JavaLangRunnable> executeAfter) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMDisplayList_EditList)

@interface AMDisplayList_ModificationHolder : NSObject {
 @public
  id<ImActorModelMvvmAlgModification> modification_;
  id<JavaLangRunnable> executeAfter_;
}

- (instancetype)initWithImActorModelMvvmAlgModification:(id<ImActorModelMvvmAlgModification>)modification
                                   withJavaLangRunnable:(id<JavaLangRunnable>)executeAfter;

@end

J2OBJC_EMPTY_STATIC_INIT(AMDisplayList_ModificationHolder)

J2OBJC_FIELD_SETTER(AMDisplayList_ModificationHolder, modification_, id<ImActorModelMvvmAlgModification>)
J2OBJC_FIELD_SETTER(AMDisplayList_ModificationHolder, executeAfter_, id<JavaLangRunnable>)

__attribute__((unused)) static void AMDisplayList_ModificationHolder_initWithImActorModelMvvmAlgModification_withJavaLangRunnable_(AMDisplayList_ModificationHolder *self, id<ImActorModelMvvmAlgModification> modification, id<JavaLangRunnable> executeAfter);

__attribute__((unused)) static AMDisplayList_ModificationHolder *new_AMDisplayList_ModificationHolder_initWithImActorModelMvvmAlgModification_withJavaLangRunnable_(id<ImActorModelMvvmAlgModification> modification, id<JavaLangRunnable> executeAfter) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMDisplayList_ModificationHolder)

__attribute__((unused)) static void AMDisplayList_OperationModeEnum_initWithNSString_withInt_(AMDisplayList_OperationModeEnum *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static AMDisplayList_OperationModeEnum *new_AMDisplayList_OperationModeEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@interface AMDisplayList_$1 : NSObject < DKActorCreator > {
 @public
  AMDisplayList *this$0_;
}

- (AMDisplayList_ListSwitcher *)create;

- (instancetype)initWithAMDisplayList:(AMDisplayList *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(AMDisplayList_$1)

J2OBJC_FIELD_SETTER(AMDisplayList_$1, this$0_, AMDisplayList *)

__attribute__((unused)) static void AMDisplayList_$1_initWithAMDisplayList_(AMDisplayList_$1 *self, AMDisplayList *outer$);

__attribute__((unused)) static AMDisplayList_$1 *new_AMDisplayList_$1_initWithAMDisplayList_(AMDisplayList *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMDisplayList_$1)

@implementation AMDisplayList

- (instancetype)init {
  AMDisplayList_init(self);
  return self;
}

- (instancetype)initWithValues:(id<JavaUtilList>)defaultValues {
  AMDisplayList_initWithValues_(self, defaultValues);
  return self;
}

- (jint)size {
  AMMVVMEngine_checkMainThread();
  return [((JavaUtilArrayList *) nil_chk(IOSObjectArray_Get(nil_chk(lists_), currentList_))) size];
}

- (id)itemWithIndex:(jint)index {
  AMMVVMEngine_checkMainThread();
  return [((JavaUtilArrayList *) nil_chk(IOSObjectArray_Get(nil_chk(lists_), currentList_))) getWithInt:index];
}

- (void)editList:(id<ImActorModelMvvmAlgModification>)mod {
  [self editList:mod withCompletion:nil];
}

- (void)editList:(id<ImActorModelMvvmAlgModification>)mod
  withCompletion:(id<JavaLangRunnable>)executeAfter {
  [((DKActorRef *) nil_chk(self->executor_)) sendWithId:new_AMDisplayList_EditList_initWithImActorModelMvvmAlgModification_withJavaLangRunnable_(mod, executeAfter)];
}

- (id<AMBackgroundProcessor>)getBackgroundProcessor {
  return backgroundProcessor_;
}

- (void)setBackgroundProcessor:(id<AMBackgroundProcessor>)backgroundProcessor {
  self->backgroundProcessor_ = backgroundProcessor;
}

- (void)addListener:(id<AMDisplayList_Listener>)listener {
  AMMVVMEngine_checkMainThread();
  if (![((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(listeners_)) containsWithId:listener]) {
    [listeners_ addWithId:listener];
  }
}

- (void)removeListener:(id<AMDisplayList_Listener>)listener {
  AMMVVMEngine_checkMainThread();
  [((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(listeners_)) removeWithId:listener];
}

- (void)addAndroidListener:(id<AMDisplayList_AndroidChangeListener>)listener {
  AMMVVMEngine_checkMainThread();
  if (![((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(androidListeners_)) containsWithId:listener]) {
    [androidListeners_ addWithId:listener];
  }
}

- (void)removeAndroidListener:(id<AMDisplayList_AndroidChangeListener>)listener {
  AMMVVMEngine_checkMainThread();
  [((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(androidListeners_)) removeWithId:listener];
}

- (void)addAppleListener:(id<AMDisplayList_AppleChangeListener>)listener {
  AMMVVMEngine_checkMainThread();
  if (![((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(appleListeners_)) containsWithId:listener]) {
    [appleListeners_ addWithId:listener];
  }
}

- (void)removeAppleListener:(id<AMDisplayList_AppleChangeListener>)listener {
  AMMVVMEngine_checkMainThread();
  [((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(appleListeners_)) removeWithId:listener];
}

@end

void AMDisplayList_init(AMDisplayList *self) {
  (void) AMDisplayList_initWithValues_(self, new_JavaUtilArrayList_init());
}

AMDisplayList *new_AMDisplayList_init() {
  AMDisplayList *self = [AMDisplayList alloc];
  AMDisplayList_init(self);
  return self;
}

void AMDisplayList_initWithValues_(AMDisplayList *self, id<JavaUtilList> defaultValues) {
  (void) NSObject_init(self);
  self->listeners_ = new_JavaUtilConcurrentCopyOnWriteArrayList_init();
  self->androidListeners_ = new_JavaUtilConcurrentCopyOnWriteArrayList_init();
  self->appleListeners_ = new_JavaUtilConcurrentCopyOnWriteArrayList_init();
  self->backgroundProcessor_ = nil;
  AMMVVMEngine_checkMainThread();
  self->DISPLAY_LIST_ID_ = AMDisplayList_NEXT_ID_++;
  self->executor_ = [((DKActorSystem *) nil_chk(DKActorSystem_system())) actorOfWithDKProps:DKProps_createWithIOSClass_withDKActorCreator_(AMDisplayList_ListSwitcher_class_(), new_AMDisplayList_$1_initWithAMDisplayList_(self)) withNSString:JreStrcat("$I", @"display_lists/", self->DISPLAY_LIST_ID_)];
  self->lists_ = [IOSObjectArray newArrayWithLength:2 type:JavaUtilArrayList_class_()];
  self->currentList_ = 0;
  (void) IOSObjectArray_Set(self->lists_, 0, new_JavaUtilArrayList_initWithJavaUtilCollection_(defaultValues));
  (void) IOSObjectArray_Set(self->lists_, 1, new_JavaUtilArrayList_initWithJavaUtilCollection_(defaultValues));
}

AMDisplayList *new_AMDisplayList_initWithValues_(id<JavaUtilList> defaultValues) {
  AMDisplayList *self = [AMDisplayList alloc];
  AMDisplayList_initWithValues_(self, defaultValues);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMDisplayList)

@implementation AMDisplayList_ListSwitcher

- (instancetype)initWithAMDisplayList:(AMDisplayList *)displayList {
  AMDisplayList_ListSwitcher_initWithAMDisplayList_(self, displayList);
  return self;
}

- (void)onEditListWithImActorModelMvvmAlgModification:(id<ImActorModelMvvmAlgModification>)modification
                                 withJavaLangRunnable:(id<JavaLangRunnable>)runnable {
  AMDisplayList_ModificationHolder *holder = new_AMDisplayList_ModificationHolder_initWithImActorModelMvvmAlgModification_withJavaLangRunnable_(modification, runnable);
  if (modification != nil) {
    [((JavaUtilArrayList *) nil_chk(pending_)) addWithId:holder];
  }
  if (isLocked_) {
    return;
  }
  if ([((JavaUtilArrayList *) nil_chk(pending_)) size] == 0) {
    return;
  }
  JavaUtilArrayList *backgroundList = IOSObjectArray_Get(nil_chk(((AMDisplayList *) nil_chk(displayList_))->lists_), (displayList_->currentList_ + 1) % 2);
  JavaUtilArrayList *initialList = new_JavaUtilArrayList_initWithJavaUtilCollection_(backgroundList);
  IOSObjectArray *dest = [pending_ toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[pending_ size] type:AMDisplayList_ModificationHolder_class_()]];
  [pending_ clear];
  JavaUtilArrayList *modRes = new_JavaUtilArrayList_init();
  {
    IOSObjectArray *a__ = dest;
    AMDisplayList_ModificationHolder * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    AMDisplayList_ModificationHolder * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      AMDisplayList_ModificationHolder *m = *b__++;
      id<JavaUtilList> changes = [((id<ImActorModelMvvmAlgModification>) nil_chk(((AMDisplayList_ModificationHolder *) nil_chk(m))->modification_)) modifyWithJavaUtilArrayList:backgroundList];
      if (displayList_->backgroundProcessor_ != nil) {
        for (AMChangeDescription * __strong c in nil_chk(changes)) {
          if ([((AMChangeDescription *) nil_chk(c)) getOperationType] == AMChangeDescription_OperationTypeEnum_get_ADD() || [c getOperationType] == AMChangeDescription_OperationTypeEnum_get_UPDATE()) {
            for (id __strong t in nil_chk([c getItems])) {
              [displayList_->backgroundProcessor_ processInBackgroundWithId:t];
            }
          }
        }
      }
      [modRes addAllWithJavaUtilCollection:changes];
    }
  }
  JavaUtilArrayList *androidChanges = ImActorModelMvvmAlgChangeBuilder_processAndroidModificationsWithJavaUtilArrayList_withJavaUtilArrayList_(modRes, initialList);
  JavaUtilArrayList *appleChanges = ImActorModelMvvmAlgChangeBuilder_processAppleModificationsWithJavaUtilArrayList_withJavaUtilArrayList_(modRes, initialList);
  AMDisplayList_ListSwitcher_requestListSwitchWithAMDisplayList_ModificationHolderArray_withJavaUtilArrayList_withJavaUtilArrayList_withJavaUtilArrayList_(self, dest, initialList, androidChanges, appleChanges);
}

- (void)requestListSwitchWithAMDisplayList_ModificationHolderArray:(IOSObjectArray *)modifications
                                             withJavaUtilArrayList:(JavaUtilArrayList *)initialList
                                             withJavaUtilArrayList:(JavaUtilArrayList *)androidChanges
                                             withJavaUtilArrayList:(JavaUtilArrayList *)appleChanges {
  AMDisplayList_ListSwitcher_requestListSwitchWithAMDisplayList_ModificationHolderArray_withJavaUtilArrayList_withJavaUtilArrayList_withJavaUtilArrayList_(self, modifications, initialList, androidChanges, appleChanges);
}

- (void)onListSwitchedWithAMDisplayList_ModificationHolderArray:(IOSObjectArray *)modifications {
  isLocked_ = NO;
  JavaUtilArrayList *backgroundList = IOSObjectArray_Get(nil_chk(((AMDisplayList *) nil_chk(displayList_))->lists_), (displayList_->currentList_ + 1) % 2);
  {
    IOSObjectArray *a__ = modifications;
    AMDisplayList_ModificationHolder * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    AMDisplayList_ModificationHolder * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      AMDisplayList_ModificationHolder *m = *b__++;
      (void) [((id<ImActorModelMvvmAlgModification>) nil_chk(((AMDisplayList_ModificationHolder *) nil_chk(m))->modification_)) modifyWithJavaUtilArrayList:backgroundList];
    }
  }
  if ([((JavaUtilArrayList *) nil_chk(pending_)) size] > 0) {
    [((DKActorRef *) nil_chk([self self__])) sendWithId:new_AMDisplayList_EditList_initWithImActorModelMvvmAlgModification_withJavaLangRunnable_(nil, nil)];
  }
}

- (void)onReceiveWithId:(id)message {
  if ([message isKindOfClass:[AMDisplayList_ListSwitched class]]) {
    [self onListSwitchedWithAMDisplayList_ModificationHolderArray:((AMDisplayList_ListSwitched *) nil_chk(((AMDisplayList_ListSwitched *) check_class_cast(message, [AMDisplayList_ListSwitched class]))))->modifications_];
  }
  else if ([message isKindOfClass:[AMDisplayList_EditList class]]) {
    [self onEditListWithImActorModelMvvmAlgModification:((AMDisplayList_EditList *) nil_chk(((AMDisplayList_EditList *) check_class_cast(message, [AMDisplayList_EditList class]))))->modification_ withJavaLangRunnable:((AMDisplayList_EditList *) nil_chk(((AMDisplayList_EditList *) check_class_cast(message, [AMDisplayList_EditList class]))))->executeAfter_];
  }
  else {
    [self dropWithId:message];
  }
}

@end

void AMDisplayList_ListSwitcher_initWithAMDisplayList_(AMDisplayList_ListSwitcher *self, AMDisplayList *displayList) {
  (void) DKActor_init(self);
  self->pending_ = new_JavaUtilArrayList_init();
  self->displayList_ = displayList;
}

AMDisplayList_ListSwitcher *new_AMDisplayList_ListSwitcher_initWithAMDisplayList_(AMDisplayList *displayList) {
  AMDisplayList_ListSwitcher *self = [AMDisplayList_ListSwitcher alloc];
  AMDisplayList_ListSwitcher_initWithAMDisplayList_(self, displayList);
  return self;
}

void AMDisplayList_ListSwitcher_requestListSwitchWithAMDisplayList_ModificationHolderArray_withJavaUtilArrayList_withJavaUtilArrayList_withJavaUtilArrayList_(AMDisplayList_ListSwitcher *self, IOSObjectArray *modifications, JavaUtilArrayList *initialList, JavaUtilArrayList *androidChanges, JavaUtilArrayList *appleChanges) {
  self->isLocked_ = YES;
  AMMVVMEngine_runOnUiThreadWithJavaLangRunnable_(new_AMDisplayList_ListSwitcher_$1_initWithAMDisplayList_ListSwitcher_withJavaUtilArrayList_withJavaUtilArrayList_withJavaUtilArrayList_withAMDisplayList_ModificationHolderArray_(self, initialList, androidChanges, appleChanges, modifications));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMDisplayList_ListSwitcher)

@implementation AMDisplayList_ListSwitcher_$1

- (void)run {
  ((AMDisplayList *) nil_chk(this$0_->displayList_))->currentList_ = (this$0_->displayList_->currentList_ + 1) % 2;
  for (id<AMDisplayList_AndroidChangeListener> __strong l in nil_chk(this$0_->displayList_->androidListeners_)) {
    [((id<AMDisplayList_AndroidChangeListener>) nil_chk(l)) onCollectionChangedWithChanges:new_AMAndroidListUpdate_initWithJavaUtilArrayList_withJavaUtilArrayList_(val$initialList_, val$androidChanges_)];
  }
  for (id<AMDisplayList_AppleChangeListener> __strong l in nil_chk(this$0_->displayList_->appleListeners_)) {
    [((id<AMDisplayList_AppleChangeListener>) nil_chk(l)) onCollectionChangedWithChanges:new_AMAppleListUpdate_initWithChanges_(val$appleChanges_)];
  }
  for (id<AMDisplayList_Listener> __strong l in nil_chk(this$0_->displayList_->listeners_)) {
    [((id<AMDisplayList_Listener>) nil_chk(l)) onCollectionChanged];
  }
  {
    IOSObjectArray *a__ = val$modifications_;
    AMDisplayList_ModificationHolder * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    AMDisplayList_ModificationHolder * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      AMDisplayList_ModificationHolder *m = *b__++;
      if (((AMDisplayList_ModificationHolder *) nil_chk(m))->executeAfter_ != nil) {
        [m->executeAfter_ run];
      }
    }
  }
  [((DKActorRef *) nil_chk([this$0_ self__])) sendWithId:new_AMDisplayList_ListSwitched_initWithAMDisplayList_ModificationHolderArray_(val$modifications_)];
}

- (instancetype)initWithAMDisplayList_ListSwitcher:(AMDisplayList_ListSwitcher *)outer$
                             withJavaUtilArrayList:(JavaUtilArrayList *)capture$0
                             withJavaUtilArrayList:(JavaUtilArrayList *)capture$1
                             withJavaUtilArrayList:(JavaUtilArrayList *)capture$2
         withAMDisplayList_ModificationHolderArray:(IOSObjectArray *)capture$3 {
  AMDisplayList_ListSwitcher_$1_initWithAMDisplayList_ListSwitcher_withJavaUtilArrayList_withJavaUtilArrayList_withJavaUtilArrayList_withAMDisplayList_ModificationHolderArray_(self, outer$, capture$0, capture$1, capture$2, capture$3);
  return self;
}

@end

void AMDisplayList_ListSwitcher_$1_initWithAMDisplayList_ListSwitcher_withJavaUtilArrayList_withJavaUtilArrayList_withJavaUtilArrayList_withAMDisplayList_ModificationHolderArray_(AMDisplayList_ListSwitcher_$1 *self, AMDisplayList_ListSwitcher *outer$, JavaUtilArrayList *capture$0, JavaUtilArrayList *capture$1, JavaUtilArrayList *capture$2, IOSObjectArray *capture$3) {
  self->this$0_ = outer$;
  self->val$initialList_ = capture$0;
  self->val$androidChanges_ = capture$1;
  self->val$appleChanges_ = capture$2;
  self->val$modifications_ = capture$3;
  (void) NSObject_init(self);
}

AMDisplayList_ListSwitcher_$1 *new_AMDisplayList_ListSwitcher_$1_initWithAMDisplayList_ListSwitcher_withJavaUtilArrayList_withJavaUtilArrayList_withJavaUtilArrayList_withAMDisplayList_ModificationHolderArray_(AMDisplayList_ListSwitcher *outer$, JavaUtilArrayList *capture$0, JavaUtilArrayList *capture$1, JavaUtilArrayList *capture$2, IOSObjectArray *capture$3) {
  AMDisplayList_ListSwitcher_$1 *self = [AMDisplayList_ListSwitcher_$1 alloc];
  AMDisplayList_ListSwitcher_$1_initWithAMDisplayList_ListSwitcher_withJavaUtilArrayList_withJavaUtilArrayList_withJavaUtilArrayList_withAMDisplayList_ModificationHolderArray_(self, outer$, capture$0, capture$1, capture$2, capture$3);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMDisplayList_ListSwitcher_$1)

@implementation AMDisplayList_ListSwitched

- (instancetype)initWithAMDisplayList_ModificationHolderArray:(IOSObjectArray *)modifications {
  AMDisplayList_ListSwitched_initWithAMDisplayList_ModificationHolderArray_(self, modifications);
  return self;
}

@end

void AMDisplayList_ListSwitched_initWithAMDisplayList_ModificationHolderArray_(AMDisplayList_ListSwitched *self, IOSObjectArray *modifications) {
  (void) NSObject_init(self);
  self->modifications_ = modifications;
}

AMDisplayList_ListSwitched *new_AMDisplayList_ListSwitched_initWithAMDisplayList_ModificationHolderArray_(IOSObjectArray *modifications) {
  AMDisplayList_ListSwitched *self = [AMDisplayList_ListSwitched alloc];
  AMDisplayList_ListSwitched_initWithAMDisplayList_ModificationHolderArray_(self, modifications);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMDisplayList_ListSwitched)

@implementation AMDisplayList_EditList

- (instancetype)initWithImActorModelMvvmAlgModification:(id<ImActorModelMvvmAlgModification>)modification
                                   withJavaLangRunnable:(id<JavaLangRunnable>)executeAfter {
  AMDisplayList_EditList_initWithImActorModelMvvmAlgModification_withJavaLangRunnable_(self, modification, executeAfter);
  return self;
}

@end

void AMDisplayList_EditList_initWithImActorModelMvvmAlgModification_withJavaLangRunnable_(AMDisplayList_EditList *self, id<ImActorModelMvvmAlgModification> modification, id<JavaLangRunnable> executeAfter) {
  (void) NSObject_init(self);
  self->modification_ = modification;
  self->executeAfter_ = executeAfter;
}

AMDisplayList_EditList *new_AMDisplayList_EditList_initWithImActorModelMvvmAlgModification_withJavaLangRunnable_(id<ImActorModelMvvmAlgModification> modification, id<JavaLangRunnable> executeAfter) {
  AMDisplayList_EditList *self = [AMDisplayList_EditList alloc];
  AMDisplayList_EditList_initWithImActorModelMvvmAlgModification_withJavaLangRunnable_(self, modification, executeAfter);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMDisplayList_EditList)

@implementation AMDisplayList_ModificationHolder

- (instancetype)initWithImActorModelMvvmAlgModification:(id<ImActorModelMvvmAlgModification>)modification
                                   withJavaLangRunnable:(id<JavaLangRunnable>)executeAfter {
  AMDisplayList_ModificationHolder_initWithImActorModelMvvmAlgModification_withJavaLangRunnable_(self, modification, executeAfter);
  return self;
}

@end

void AMDisplayList_ModificationHolder_initWithImActorModelMvvmAlgModification_withJavaLangRunnable_(AMDisplayList_ModificationHolder *self, id<ImActorModelMvvmAlgModification> modification, id<JavaLangRunnable> executeAfter) {
  (void) NSObject_init(self);
  self->modification_ = modification;
  self->executeAfter_ = executeAfter;
}

AMDisplayList_ModificationHolder *new_AMDisplayList_ModificationHolder_initWithImActorModelMvvmAlgModification_withJavaLangRunnable_(id<ImActorModelMvvmAlgModification> modification, id<JavaLangRunnable> executeAfter) {
  AMDisplayList_ModificationHolder *self = [AMDisplayList_ModificationHolder alloc];
  AMDisplayList_ModificationHolder_initWithImActorModelMvvmAlgModification_withJavaLangRunnable_(self, modification, executeAfter);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMDisplayList_ModificationHolder)

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(AMDisplayList_Listener)

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(AMDisplayList_AndroidChangeListener)

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(AMDisplayList_AppleChangeListener)

J2OBJC_INITIALIZED_DEFN(AMDisplayList_OperationModeEnum)

AMDisplayList_OperationModeEnum *AMDisplayList_OperationModeEnum_values_[3];

@implementation AMDisplayList_OperationModeEnum

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  AMDisplayList_OperationModeEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

IOSObjectArray *AMDisplayList_OperationModeEnum_values() {
  AMDisplayList_OperationModeEnum_initialize();
  return [IOSObjectArray arrayWithObjects:AMDisplayList_OperationModeEnum_values_ count:3 type:AMDisplayList_OperationModeEnum_class_()];
}

+ (IOSObjectArray *)values {
  return AMDisplayList_OperationModeEnum_values();
}

+ (AMDisplayList_OperationModeEnum *)valueOfWithNSString:(NSString *)name {
  return AMDisplayList_OperationModeEnum_valueOfWithNSString_(name);
}

AMDisplayList_OperationModeEnum *AMDisplayList_OperationModeEnum_valueOfWithNSString_(NSString *name) {
  AMDisplayList_OperationModeEnum_initialize();
  for (int i = 0; i < 3; i++) {
    AMDisplayList_OperationModeEnum *e = AMDisplayList_OperationModeEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [AMDisplayList_OperationModeEnum class]) {
    AMDisplayList_OperationModeEnum_GENERAL = new_AMDisplayList_OperationModeEnum_initWithNSString_withInt_(@"GENERAL", 0);
    AMDisplayList_OperationModeEnum_ANDROID = new_AMDisplayList_OperationModeEnum_initWithNSString_withInt_(@"ANDROID", 1);
    AMDisplayList_OperationModeEnum_IOS = new_AMDisplayList_OperationModeEnum_initWithNSString_withInt_(@"IOS", 2);
    J2OBJC_SET_INITIALIZED(AMDisplayList_OperationModeEnum)
  }
}

@end

void AMDisplayList_OperationModeEnum_initWithNSString_withInt_(AMDisplayList_OperationModeEnum *self, NSString *__name, jint __ordinal) {
  (void) JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

AMDisplayList_OperationModeEnum *new_AMDisplayList_OperationModeEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  AMDisplayList_OperationModeEnum *self = [AMDisplayList_OperationModeEnum alloc];
  AMDisplayList_OperationModeEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMDisplayList_OperationModeEnum)

@implementation AMDisplayList_$1

- (AMDisplayList_ListSwitcher *)create {
  return new_AMDisplayList_ListSwitcher_initWithAMDisplayList_(this$0_);
}

- (instancetype)initWithAMDisplayList:(AMDisplayList *)outer$ {
  AMDisplayList_$1_initWithAMDisplayList_(self, outer$);
  return self;
}

@end

void AMDisplayList_$1_initWithAMDisplayList_(AMDisplayList_$1 *self, AMDisplayList *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

AMDisplayList_$1 *new_AMDisplayList_$1_initWithAMDisplayList_(AMDisplayList *outer$) {
  AMDisplayList_$1 *self = [AMDisplayList_$1 alloc];
  AMDisplayList_$1_initWithAMDisplayList_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMDisplayList_$1)
