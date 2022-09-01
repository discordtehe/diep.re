// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISORIENTATIONPOLICY_H
#define ISORIENTATIONPOLICY_H


#import <Foundation/Foundation.h>


@interface ISOrientationPolicy : NSObject

@property (nonatomic) int allowedOrientations; // ivar: _allowedOrientations


-(id)initWithStringOrientation:(id)arg0 ;
-(id)initWithWithOrientation:(int)arg0 ;
-(BOOL)isEqualToOrientationPolicy:(id)arg0 ;
-(BOOL)isEqual:(id)arg0 ;
+(id)convertOrientationToString:(int)arg0 ;


@end


#endif