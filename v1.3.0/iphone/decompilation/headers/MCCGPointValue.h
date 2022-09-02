// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCCGPOINTVALUE_H
#define MCCGPOINTVALUE_H


#import <Foundation/Foundation.h>


@interface MCCGPointValue : NSObject

@property (readonly, nonatomic) CGPoint value; // ivar: mValue
@property (readonly, nonatomic) CGPoint point;


-(id)initWithCGPoint:(struct CGPoint )arg0 ;
+(id)valueWithCGPoint:(struct CGPoint )arg0 ;
+(id)getNSCGPointWithX:(float)arg0 andY:(float)arg1 ;
+(id)getNSCGPoint:(struct CGPoint )arg0 ;
+(id)getNSCGPoint;


@end


#endif