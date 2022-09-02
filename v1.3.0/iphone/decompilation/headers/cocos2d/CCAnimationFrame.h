// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCANIMATIONFRAME_H
#define CCANIMATIONFRAME_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class CCSpriteFrame;
@protocol NSCopying;

@interface CCAnimationFrame : NSObject <NSCopying>



@property (retain, nonatomic) CCSpriteFrame *spriteFrame; // ivar: _spriteFrame
@property (nonatomic) float delayUnits; // ivar: _delayUnits
@property (retain, nonatomic) NSDictionary *userInfo; // ivar: _userInfo


-(id)initWithSpriteFrame:(id)arg0 delayUnits:(float)arg1 userInfo:(id)arg2 ;
-(void)dealloc;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(id)description;


@end


#endif