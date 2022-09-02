// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef DFPCUSTOMRENDEREDAD_H
#define DFPCUSTOMRENDEREDAD_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface DFPCustomRenderedAd : NSObject

@property (readonly, nonatomic) NSString *adHTML;
@property (readonly, nonatomic) NSURL *adBaseURL;


-(void)recordClick;
-(void)recordImpression;
-(void)finishedRenderingAdView:(id)arg0 ;


@end


#endif