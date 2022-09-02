// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCPOINTARRAY_H
#define CCPOINTARRAY_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSCopying;

@interface CCPointArray : NSObject <NSCopying>



@property (retain, nonatomic) NSMutableArray *controlPoints; // ivar: _controlPoints


-(id)init;
-(id)initWithCapacity:(NSUInteger)arg0 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)dealloc;
-(void)addControlPoint:(struct CGPoint )arg0 ;
-(void)insertControlPoint:(struct CGPoint )arg0 atIndex:(NSUInteger)arg1 ;
-(struct CGPoint )getControlPointAtIndex:(NSInteger)arg0 ;
-(void)replaceControlPoint:(struct CGPoint )arg0 atIndex:(NSUInteger)arg1 ;
-(void)removeControlPointAtIndex:(NSUInteger)arg0 ;
-(NSUInteger)count;
-(id)reverse;
-(void)reverseInline;
+(id)arrayWithCapacity:(NSUInteger)arg0 ;


@end


#endif