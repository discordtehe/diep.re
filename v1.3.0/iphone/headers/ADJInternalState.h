// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJINTERNALSTATE_H
#define ADJINTERNALSTATE_H


#import <Foundation/Foundation.h>


@interface ADJInternalState : NSObject

@property (nonatomic) BOOL enabled; // ivar: _enabled
@property (nonatomic) BOOL offline; // ivar: _offline
@property (nonatomic) BOOL background; // ivar: _background
@property (nonatomic) BOOL delayStart; // ivar: _delayStart
@property (nonatomic) BOOL updatePackages; // ivar: _updatePackages
@property (nonatomic) BOOL firstLaunch; // ivar: _firstLaunch
@property (nonatomic) BOOL sessionResponseProcessed; // ivar: _sessionResponseProcessed


-(id)init;
-(BOOL)isEnabled;
-(BOOL)isDisabled;
-(BOOL)isOffline;
-(BOOL)isOnline;
-(BOOL)isBackground;
-(BOOL)isForeground;
-(BOOL)isDelayStart;
-(BOOL)isToStartNow;
-(BOOL)isToUpdatePackages;
-(BOOL)isFirstLaunch;
-(BOOL)hasSessionResponseNotProcessed;


@end


#endif