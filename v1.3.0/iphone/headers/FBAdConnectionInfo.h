// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADCONNECTIONINFO_H
#define FBADCONNECTIONINFO_H


#import <Foundation/Foundation.h>


@interface FBAdConnectionInfo : NSObject



+(void)initialize;
+(NSUInteger)typeFromSubtype:(NSUInteger)arg0 ;
+(NSUInteger)currentConnectionType;
+(id)currentCellularConnection;
+(NSUInteger)currentConnectionSubtype;
+(NSUInteger)currentReachabilityStatus;
+(NSUInteger)statusForReachabilityFlags:(unsigned int)arg0 ;


@end


#endif