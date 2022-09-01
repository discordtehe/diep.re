// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADINLINEBANNERADRENDERER_H
#define GADINLINEBANNERADRENDERER_H


#import <Foundation/Foundation.h>

@class GADAdLoadMonitor;
@protocol GADAdRendering;

@interface GADInlineBannerAdRenderer : NSObject <GADAdRendering>

 {
    GADAdLoadMonitor *_adLoadMonitor;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)renderWithServerTransaction:(id)arg0 adConfiguration:(struct NSDictionary *)arg1 completionHandler:(id)arg2 ;


@end


#endif