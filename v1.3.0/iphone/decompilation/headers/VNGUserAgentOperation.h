// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VNGUSERAGENTOPERATION_H
#define VNGUSERAGENTOPERATION_H



@class VungleConcurrentOperation;
@class VungleWebViewUserAgentProvider;

@interface VNGUserAgentOperation : VungleConcurrentOperation

@property (retain, nonatomic) VungleWebViewUserAgentProvider *webViewProvider; // ivar: _webViewProvider
@property (copy, nonatomic) id *userAgentResultBlock; // ivar: _userAgentResultBlock


-(id)initWithResultBlock:(id)arg0 ;
-(void)start;


@end


#endif