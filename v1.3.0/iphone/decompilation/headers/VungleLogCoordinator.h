// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLELOGCOORDINATOR_H
#define VUNGLELOGCOORDINATOR_H


#import <Foundation/Foundation.h>


@interface VungleLogCoordinator : NSObject



+(void)initialize;
+(void)log:(id)arg0 ;
+(void)log:(id)arg0 withParameters:(char *)arg1 ;
+(void)attachLogger:(id)arg0 ;
+(void)detachLogger:(id)arg0 ;


@end


#endif