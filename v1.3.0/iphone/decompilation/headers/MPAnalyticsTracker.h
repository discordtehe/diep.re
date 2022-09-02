// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPANALYTICSTRACKER_H
#define MPANALYTICSTRACKER_H


#import <Foundation/Foundation.h>


@interface MPAnalyticsTracker : NSObject



-(void)trackImpressionForConfiguration:(id)arg0 ;
-(void)trackClickForConfiguration:(id)arg0 ;
-(void)sendTrackingRequestForURLs:(id)arg0 ;
+(id)sharedTracker;


@end


#endif