// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef AGARCELL_H
#define AGARCELL_H

@class CCNode<CellViewProtocol>;

#import <Foundation/Foundation.h>

@class InterpolationValue;

@interface AgarCell : NSObject {
    InterpolationValue *mX;
    InterpolationValue *mY;
    InterpolationValue *mRadius;
    BOOL justCreated;
}


@property (readonly, nonatomic) CGPoint position;
@property (readonly, nonatomic) float radius;
@property (readonly, nonatomic) CGPoint targetPosition;
@property (readonly, nonatomic) float targetRadius;
@property (readonly, nonatomic) CCNode<CellViewProtocol> *view; // ivar: mView
@property (nonatomic) BOOL isAlive; // ivar: mIsAlive


-(id)initWithView:(id)arg0 ;
-(void)dealloc;
-(void)update:(CGFloat)arg0 ;


@end


#endif