// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCACTION_H
#define CCACTION_H


#import <Foundation/Foundation.h>

@protocol NSCopying;

@interface CCAction : NSObject <NSCopying>



@property (readonly, nonatomic) id *target; // ivar: _target
@property (readonly, nonatomic) id *originalTarget; // ivar: _originalTarget
@property (nonatomic) NSInteger tag; // ivar: _tag


-(id)init;
-(void)dealloc;
-(id)description;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)startWithTarget:(id)arg0 ;
-(void)stop;
-(BOOL)isDone;
-(void)step:(CGFloat)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)action;


@end


#endif