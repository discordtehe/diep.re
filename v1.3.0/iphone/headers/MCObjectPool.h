// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCOBJECTPOOL_H
#define MCOBJECTPOOL_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MCObjectPool : NSObject {
    NSMutableDictionary *mInstanceDictionary;
    NSMutableArray *mAvailableInstances;
    id *mCreationCallbackTarget;
    SEL mCreationCallbackSelector;
    *unk mCreationCallback;
    *unk mCreationCallbackC;
    id *mCleanCallbackTarget;
    SEL mCleanCallbackSelector;
    *unk mCleanCallback;
    *unk mCleanCallbackC;
    int mCleanPhase;
    NSMutableSet *mCleanAllObjectsNotifications;
}


@property (nonatomic) NSUInteger preferredMinimumInstances; // ivar: mPreferredMinimumInstances


-(id)initWithCreationCallbackSelector:(SEL)arg0 creationCallbackTarget:(id)arg1 cleanCallbackSelector:(SEL)arg2 cleanCallbackTarget:(id)arg3 cleanPhase:(int)arg4 ;
-(id)initWithCreationCallbackSelector:(SEL)arg0 creationCallbackTarget:(id)arg1 ;
-(id)initWithCreationCallback:(*unk)arg0 cleanCallback:(*unk)arg1 cleanPhase:(int)arg2 ;
-(id)initWithCreationCallback:(*unk)arg0 ;
-(void)dealloc;
-(id)createObject:(BOOL)arg0 ;
-(id)fetchObject;
-(id)getObject;
-(void)releaseObject:(id)arg0 ;
-(BOOL)hasObject:(id)arg0 ;
-(void)cleanUnusedObjects;
-(void)cleanAllObjects;
-(void)checkPreferredMinimumInstances;
-(void)cleanAllObjectsOnNotification:(id)arg0 ;
-(NSUInteger)allocatedInstances;
-(unsigned int)getNumAllocatedInstances;
-(NSUInteger)availableInstances;
-(unsigned int)getNumAvailableInstances;
+(id)cleanAllObjectsNotification;


@end


#endif