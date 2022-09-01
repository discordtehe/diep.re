// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISHYBRIDOBJECT_H
#define ISHYBRIDOBJECT_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface ISHybridObject : NSObject

@property (weak, nonatomic) UIView *view; // ivar: _view
@property (nonatomic) CGFloat viewRatio; // ivar: _viewRatio


-(id)initWithView:(id)arg0 viewRatio:(CGFloat)arg1 ;


@end


#endif