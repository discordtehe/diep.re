// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CDXPROPERTYMODIFIERACTION_H
#define CDXPROPERTYMODIFIERACTION_H



@class CCActionInterval;
@class CDPropertyModifier;

@interface CDXPropertyModifierAction : CCActionInterval {
    CDPropertyModifier *modifier;
    float lastSetValue;
}




-(id)initWithDuration:(CGFloat)arg0 modifier:(id)arg1 ;
-(void)startWithTarget:(id)arg0 ;
-(void)dealloc;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)actionWithDuration:(CGFloat)arg0 modifier:(id)arg1 ;
+(void)fadeSoundEffects:(CGFloat)arg0 finalVolume:(float)arg1 curveType:(int)arg2 shouldStop:(BOOL)arg3 ;
+(void)fadeSoundEffect:(CGFloat)arg0 finalVolume:(float)arg1 curveType:(int)arg2 shouldStop:(BOOL)arg3 effect:(id)arg4 ;
+(void)fadeBackgroundMusic:(CGFloat)arg0 finalVolume:(float)arg1 curveType:(int)arg2 shouldStop:(BOOL)arg3 ;


@end


#endif