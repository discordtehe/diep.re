// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol ADJPackageHandler


-(id)initWithActivityHandler:(id)arg0 startsSending:(BOOL)arg1 ;
-(void)addPackage:(id)arg0 ;
-(void)sendFirstPackage;
-(void)sendNextPackage:(id)arg0 ;
-(void)closeFirstPackage:(id)arg0 activityPackage:(id)arg1 ;
-(void)pauseSending;
-(void)resumeSending;
-(void)updatePackages:(id)arg0 ;
-(void)teardown:(BOOL)arg0 ;

@end

