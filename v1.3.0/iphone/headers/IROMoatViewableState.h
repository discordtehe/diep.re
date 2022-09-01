// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IROMOATVIEWABLESTATE_H
#define IROMOATVIEWABLESTATE_H


#import <Foundation/Foundation.h>


@interface IROMoatViewableState : NSObject

@property BOOL isAttached; // ivar: _isAttached
@property BOOL isFocused; // ivar: _isFocused
@property BOOL isHidden; // ivar: _isHidden
@property BOOL isCoveredByVC; // ivar: _isCoveredByVC
@property float opacity; // ivar: _opacity
@property float coveredPercent; // ivar: _coveredPercent
@property CGRect screenRect; // ivar: _screenRect
@property CGRect viewRect; // ivar: _viewRect
@property CGRect visibleRect; // ivar: _visibleRect


-(float)getVisiblePercent;
-(id)toDict;
-(id)toJSON;
+(id)getRectAsJsonDict:(struct CGRect )arg0 ;


@end


#endif