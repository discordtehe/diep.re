// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VNGAPPLIFECYCLECOORDINATOR_H
#define VNGAPPLIFECYCLECOORDINATOR_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class VungleSDKInitializer;
@class VNGAdRequestCoordinator;

@interface VNGAppLifecycleCoordinator : NSObject

@property (retain, nonatomic) NSUserDefaults *defaults; // ivar: _defaults
@property (retain, nonatomic) VungleSDKInitializer *initializer; // ivar: _initializer
@property (retain, nonatomic) VNGAdRequestCoordinator *adRequestCoordinator; // ivar: _adRequestCoordinator


-(id)initWithSDKInitializer:(id)arg0 adRequestCoordinator:(id)arg1 userDefaults:(id)arg2 ;
-(void)appDidEnterBackground;
-(void)appWillEnterForeground;
-(void)appWillResignActive;


@end


#endif