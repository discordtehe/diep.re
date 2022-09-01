// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MOPUBBANNERLISTENERIOS_H
#define MOPUBBANNERLISTENERIOS_H


#import <Foundation/Foundation.h>

@protocol MPAdViewDelegate;

@interface MoPubBannerListeneriOS : NSObject <MPAdViewDelegate>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)viewControllerForPresentingModalView;
-(void)adViewDidLoadAd:(id)arg0 ;
-(void)adViewDidFailToLoadAd:(id)arg0 ;
-(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > )findNetworkName:(id)arg0 ;


@end


#endif