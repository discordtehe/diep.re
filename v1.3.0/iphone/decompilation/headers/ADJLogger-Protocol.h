// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol ADJLogger


-(void)setLogLevel:(int)arg0 isProductionEnvironment:(BOOL)arg1 ;
-(void)lockLogLevel;
-(void)verbose:(id)arg0 ;
-(void)debug:(id)arg0 ;
-(void)info:(id)arg0 ;
-(void)warn:(id)arg0 ;
-(void)warnInProduction:(id)arg0 ;
-(void)error:(id)arg0 ;
-(void)assert:(id)arg0 ;

@end

