// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FBAdBackgroundStateManaging

@property (nonatomic, getter=isApplicationBecomingActive) BOOL applicationBecomingActive;

-(BOOL)isApplicationActive;
-(BOOL)isApplicationInactive;
-(BOOL)isApplicationBackgrounded;
-(NSInteger)applicationState;
-(BOOL)isApplicationBecomingActive;
-(void)setApplicationBecomingActive:(BOOL)arg0 ;

@end

