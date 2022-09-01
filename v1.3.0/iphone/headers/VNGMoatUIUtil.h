// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VNGMOATUIUTIL_H
#define VNGMOATUIUTIL_H


#import <Foundation/Foundation.h>


@interface VNGMoatUIUtil : NSObject



+(void)setFocusListener;
+(void)respondToAppFocus:(id)arg0 ;
+(id)getLayerVisibility:(id)arg0 atPoint:(struct CGPoint )arg1 ofSuperLayer:(id)arg2 ;
+(id)getGroupViewState:(id)arg0 ;
+(float)getCoveredArea:(struct CGRect )arg0 withRectsToCheck:(id)arg1 ;
+(float)getVisibleArea:(id)arg0 withLayerChain:(id)arg1 withHitLayers:(id)arg2 ;
+(BOOL)isInvalidRect:(struct CGRect )arg0 ;
+(struct CGRect )getRectOnScreen:(struct CGRect )arg0 withLayerChain:(id)arg1 ;
+(id)getViewableState:(id)arg0 ;
+(BOOL)layerChain:(id)arg0 isCoveredByVCInWindow:(id)arg1 ;
+(BOOL)isLayerDescendant:(id)arg0 ofLayer:(id)arg1 ;
+(struct CGRect )getRectInWindow:(id)arg0 ;
+(struct CGRect )getRectInWindow:(id)arg0 clipToWindow:(BOOL)arg1 ;
+(id)getLayerChain:(id)arg0 ;
+(id)getUiHierarchy:(id)arg0 ;
+(id)getSublayers:(id)arg0 ;
+(void)insertIntoArray:(id)arg0 fromArray:(id)arg1 withStartIndex:(int)arg2 withMaxMergedSize:(int)arg3 ;
+(BOOL)containsWebView:(id)arg0 ;
+(id)digForUIWebView:(id)arg0 allowMultiple:(BOOL)arg1 ;
+(id)digForWKWebView:(id)arg0 allowMultiple:(BOOL)arg1 ;
+(id)digForWebView:(id)arg0 webViewType:(Class)arg1 allowMultiple:(BOOL)arg2 ;


@end


#endif