// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVVOLUMECHANGE_H
#define USRVVOLUMECHANGE_H


#import <Foundation/Foundation.h>


@interface USRVVolumeChange : NSObject



-(void)observeValueForKeyPath:(id)arg0 ofObject:(id)arg1 change:(id)arg2 context:(*void)arg3 ;
+(void)startObserving;
+(void)stopObserving;
+(void)registerDelegate:(id)arg0 ;
+(void)unregisterDelegate:(id)arg0 ;
+(void)clearAllDelegates;
+(void)triggerDelegates:(float)arg0 ;


@end


#endif