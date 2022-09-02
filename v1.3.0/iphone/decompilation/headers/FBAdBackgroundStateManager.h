// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADBACKGROUNDSTATEMANAGER_H
#define FBADBACKGROUNDSTATEMANAGER_H


#import <Foundation/Foundation.h>

@protocol FBAdBackgroundStateManaging;

@interface FBAdBackgroundStateManager : NSObject <FBAdBackgroundStateManaging>



@property NSUInteger extensionState; // ivar: _extensionState
@property (nonatomic, getter=isApplicationBecomingActive) BOOL applicationBecomingActive; // ivar: _applicationBecomingActive
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)dealloc;
-(BOOL)isApplicationActive;
-(BOOL)isApplicationInactive;
-(BOOL)isApplicationBackgrounded;
-(NSInteger)applicationState;


@end


#endif