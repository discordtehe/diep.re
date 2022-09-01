// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEWEBVIEWUSERAGENTPROVIDER_H
#define VUNGLEWEBVIEWUSERAGENTPROVIDER_H


#import <Foundation/Foundation.h>

@class VungleWebViewFacade;

@interface VungleWebViewUserAgentProvider : NSObject

@property (retain, nonatomic) VungleWebViewFacade *webViewFacade; // ivar: _webViewFacade


-(void)userAgentWithResultBlock:(id)arg0 ;
-(void)dealloc;


@end


#endif