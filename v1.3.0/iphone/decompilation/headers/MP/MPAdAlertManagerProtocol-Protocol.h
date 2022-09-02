// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MPAdAlertManagerProtocol

@property (retain, nonatomic) MPAdConfiguration *adConfiguration;
@property (copy, nonatomic) NSString *adUnitId;
@property (copy, nonatomic) CLLocation *location;
@property (weak, nonatomic) UIView *targetAdView;
@property (weak, nonatomic) id *delegate;

-(void)beginMonitoringAlerts;
-(void)endMonitoringAlerts;
-(void)processAdAlertOnce;
-(id)adConfiguration;
-(void)setAdConfiguration:(id)arg0 ;
-(id)adUnitId;
-(void)setAdUnitId:(id)arg0 ;
-(id)location;
-(void)setLocation:(id)arg0 ;
-(id)targetAdView;
-(void)setTargetAdView:(id)arg0 ;
-(id)delegate;
-(void)setDelegate:(id)arg0 ;

@end

