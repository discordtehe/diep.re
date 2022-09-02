// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJYMOATUIUTIL_H
#define TJYMOATUIUTIL_H


#import <Foundation/Foundation.h>


@interface TJYMoatUIUtil : NSObject



+(void)setFocusListener;
+(void)respondToAppFocus:(id)arg0 ;
+(BOOL)isLayerVisible:(id)arg0 atPoint:(struct CGPoint )arg1 ofWindow:(id)arg2 ;
+(BOOL)isLayerVisible:(id)arg0 atPoint:(struct CGPoint )arg1 ofSuperLayer:(id)arg2 ;
+(CGFloat)getStatusBarHeight;
+(struct CGRect )getRectInWindow:(id)arg0 ;
+(struct CGRect )getNestedRectOfLayer:(id)arg0 inWindow:(id)arg1 ;
+(struct CGRect )getNestedRectOfLayer:(id)arg0 inLayer:(id)arg1 nestAlgoRet:(*NSUInteger)arg2 ;
+(CGFloat)bounded:(CGFloat)arg0 min:(CGFloat)arg1 max:(CGFloat)arg2 ;
+(struct CGPoint )bounded:(struct CGPoint )arg0 xMax:(CGFloat)arg1 yMax:(CGFloat)arg2 ;
+(BOOL)isLayerDescendant:(id)arg0 ofLayer:(id)arg1 ;
+(BOOL)isAttached:(id)arg0 ;
+(struct CGRect )getVisibleRect:(id)arg0 deduceNestedRect:(BOOL)arg1 ;
+(struct CGRect )getVisibleRect:(id)arg0 deduceNestedRect:(BOOL)arg1 inWindow:(id)arg2 ;
+(id)getRectAsJson:(struct CGRect )arg0 ;
+(id)getRectsAsJson:(id)arg0 ;


@end


#endif