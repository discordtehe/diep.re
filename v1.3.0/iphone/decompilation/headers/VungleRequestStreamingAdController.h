// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEREQUESTSTREAMINGADCONTROLLER_H
#define VUNGLEREQUESTSTREAMINGADCONTROLLER_H


#import <Foundation/Foundation.h>

@class VunglePublisherInformationProvider;
@protocol VungleRequestStreamingAdControllerDelegate;

@interface VungleRequestStreamingAdController : NSObject

@property (weak, nonatomic) NSObject<VungleRequestStreamingAdControllerDelegate> *delegate; // ivar: _delegate
@property (nonatomic) BOOL internalShouldStream; // ivar: _internalShouldStream
@property (copy, nonatomic) VunglePublisherInformationProvider *publisherInformation; // ivar: _publisherInformation


-(id)initWithPublisherInformation:(id)arg0 delegate:(id)arg1 ;
-(void)sendStreamingAdRequestWithPlacement:(id)arg0 playOptions:(id)arg1 ;
-(void)setShouldStream:(BOOL)arg0 ;
-(void)handleRequestStreamingAd:(id)arg0 placement:(id)arg1 ;
-(id)createStreamingAdWithJSONResponse:(id)arg0 networkResponse:(id)arg1 ;
-(void)sendErrorForPlacement:(id)arg0 error:(id)arg1 ;
-(id)invalidResponseError;
-(id)noResponseError;


@end


#endif