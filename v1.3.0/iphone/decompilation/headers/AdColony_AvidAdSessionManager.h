// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONY_AVIDADSESSIONMANAGER_H
#define ADCOLONY_AVIDADSESSIONMANAGER_H


#import <Foundation/Foundation.h>


@interface AdColony_AvidAdSessionManager : NSObject



+(id)version;
+(id)releaseDate;
+(id)startAvidVideoAdSessionWithContext:(id)arg0 ;
+(id)startAvidDisplayAdSessionWithContext:(id)arg0 ;
+(id)startAvidManagedVideoAdSessionWithContext:(id)arg0 ;
+(id)startAvidManagedDisplayAdSessionWithContext:(id)arg0 ;
+(id)webViewForSessionId:(id)arg0 ;
+(id)webViewForView:(id)arg0 ;
+(id)findWebView:(id)arg0 ;


@end


#endif