// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADURLOPENER_H
#define GADURLOPENER_H


#import <Foundation/Foundation.h>


@interface GADURLOpener : NSObject



-(void)openURL:(id)arg0 forAd:(id)arg1 ;
-(void)openDeepLinkURL:(id)arg0 forAd:(id)arg1 completionHandler:(id)arg2 ;
+(id)sharedInstance;


@end


#endif