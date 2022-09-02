// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FBDisplayAdControllerDelegate


-(void)displayAdControllerLoaded:(id)arg0 ;
-(void)displayAdControllerStopped:(id)arg0 ;
-(void)displayAdController:(id)arg0 didFailWithError:(id)arg1 ;

@optional
-(void)displayAdController:(id)arg0 presentedView:(id)arg1 ;
-(void)displayAdController:(id)arg0 presentedData:(id)arg1 onImpression:(id)arg2 onImpressionMiss:(unk)arg3 onClick:(id)arg4 ;
-(void)displayAdControllerImpression:(id)arg0 ;
-(void)displayAdControllerClickThrough:(id)arg0 ;
-(void)displayAdControllerUserClosed:(id)arg0 ;
-(void)displayAdControllerVideoComplete:(id)arg0 ;
-(void)displayAdControllerServerRewardSuccess:(id)arg0 ;
-(void)displayAdControllerServerRewardFailed:(id)arg0 ;
@end

