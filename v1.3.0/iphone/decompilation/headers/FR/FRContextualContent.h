// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FRCONTEXTUALCONTENT_H
#define FRCONTEXTUALCONTENT_H


#import <CoreFoundation/CoreFoundation.h>

@class FRPlacementContent;

@interface FRContextualContent : FRPlacementContent

@property (retain) NSArray *views; // ivar: _views
@property NSInteger callbackCount; // ivar: _callbackCount
@property BOOL callbackLoaded; // ivar: _callbackLoaded
@property BOOL _hasContent; // ivar: __hasContent
@property BOOL delegateGotReady; // ivar: _delegateGotReady
@property BOOL dismissed; // ivar: _dismissed
@property CGFloat maxShowTime; // ivar: _maxShowTime
@property (retain) NSMutableArray *layouts; // ivar: _layouts


-(id)initWithDictionary:(id)arg0 placement:(id)arg1 delegate:(id)arg2 ;
-(BOOL)hasContent;
-(BOOL)didExpired;
-(id)bestLayoutForFrame:(struct CGRect )arg0 orientation:(NSInteger)arg1 ;
-(void)createViewsForLayout:(id)arg0 parentView:(id)arg1 ;
-(void)show;
-(void)dismiss;
-(void)showViews;
-(void)dismissViews;
-(void)orientationWillChange:(id)arg0 ;
-(void)orientationDidChange:(id)arg0 ;
-(void)layout:(id)arg0 loaded:(BOOL)arg1 ;
-(void)buttonClicked:(id)arg0 ;
+(id)objectWithDictionary:(id)arg0 placement:(id)arg1 delegate:(id)arg2 ;


@end


#endif