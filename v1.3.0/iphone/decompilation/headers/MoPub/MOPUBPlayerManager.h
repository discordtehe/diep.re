// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MOPUBPLAYERMANAGER_H
#define MOPUBPLAYERMANAGER_H


#import <Foundation/Foundation.h>

@class MOPUBPlayerViewController;

@interface MOPUBPlayerManager : NSObject

@property (retain, nonatomic) MOPUBPlayerViewController *currentPlayerViewController; // ivar: _currentPlayerViewController


-(void)disposePlayerViewController;
-(id)playerViewControllerWithVideoConfig:(id)arg0 nativeVideoAdConfig:(id)arg1 ;
+(id)sharedInstance;


@end


#endif