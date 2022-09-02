// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMEDIACONTENT_H
#define GADMEDIACONTENT_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class GADVideoController;
@protocol GADMediaContentDisplaying;

@interface GADMediaContent : NSObject

@property (retain, nonatomic) NSObject<GADMediaContentDisplaying> *internalMediaContent; // ivar: _internalMediaContent
@property (readonly, nonatomic) CGFloat aspectRatio;
@property (retain, nonatomic) UIImage *mainImage; // ivar: _mainImage
@property (readonly, nonatomic) GADVideoController *videoController; // ivar: _videoController
@property (readonly, nonatomic) BOOL hasVideoContent; // ivar: _hasVideoContent




@end


#endif