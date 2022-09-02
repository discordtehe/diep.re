// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol VungleDelegate

@property (readonly) NSString *desiredPlacement;

-(void)initialized:(BOOL)arg0 error:(id)arg1 ;
-(void)adAvailable;
-(void)adNotAvailable:(id)arg0 ;
-(void)willShowAd;
-(void)willCloseAd:(BOOL)arg0 didDownload:(BOOL)arg1 ;
-(void)didCloseAd:(BOOL)arg0 didDownload:(BOOL)arg1 ;
-(id)desiredPlacement;

@end

