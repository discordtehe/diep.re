// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADINLINEMULTIPLENATIVEADSRENDERER_H
#define GADINLINEMULTIPLENATIVEADSRENDERER_H

@protocol OS_dispatch_group;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol GADAdRendering;

@interface GADInlineMultipleNativeAdsRenderer : NSObject <GADAdRendering>

 {
    NSMutableDictionary *_renderingResults;
    NSObject<OS_dispatch_group> *_renderingGroup;
    NSMutableArray *_nativeJSContextMonitors;
    NSMutableSet *_renderers;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)renderWithServerTransaction:(id)arg0 adConfiguration:(struct NSDictionary *)arg1 completionHandler:(id)arg2 ;


@end


#endif