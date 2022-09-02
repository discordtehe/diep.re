// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPBASEINTERSTITIALADAPTER_H
#define MPBASEINTERSTITIALADAPTER_H


#import <Foundation/Foundation.h>

@class MPAdConfiguration;
@class MPTimer;
@protocol MPInterstitialAdapterDelegate;

@interface MPBaseInterstitialAdapter : NSObject

@property (retain, nonatomic) MPAdConfiguration *configuration; // ivar: _configuration
@property (retain, nonatomic) MPTimer *timeoutTimer; // ivar: _timeoutTimer
@property (weak, nonatomic) NSObject<MPInterstitialAdapterDelegate> *delegate; // ivar: _delegate


-(id)initWithDelegate:(id)arg0 ;
-(void)dealloc;
-(void)unregisterDelegate;
-(void)getAdWithConfiguration:(id)arg0 targeting:(id)arg1 ;
-(void)_getAdWithConfiguration:(id)arg0 targeting:(id)arg1 ;
-(void)startTimeoutTimer;
-(void)didStopLoading;
-(void)timeout;
-(void)showInterstitialFromViewController:(id)arg0 ;
-(void)trackImpression;
-(void)trackClick;


@end


#endif