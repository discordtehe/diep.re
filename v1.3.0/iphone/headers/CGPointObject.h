// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CGPOINTOBJECT_H
#define CGPOINTOBJECT_H


#import <Foundation/Foundation.h>

@class CCNode;

@interface CGPointObject : NSObject

@property (nonatomic) CGPoint ratio; // ivar: _ratio
@property (nonatomic) CGPoint offset; // ivar: _offset
@property (nonatomic) CCNode *child; // ivar: _child


-(id)initWithCGPoint:(struct CGPoint )arg0 offset:(struct CGPoint )arg1 ;
+(id)pointWithCGPoint:(struct CGPoint )arg0 offset:(struct CGPoint )arg1 ;


@end


#endif