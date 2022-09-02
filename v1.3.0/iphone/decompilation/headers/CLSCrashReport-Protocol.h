// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol CLSCrashReport

@property (readonly, copy, nonatomic) NSString *identifier;
@property (readonly, copy, nonatomic) NSDictionary *customKeys;
@property (readonly, copy, nonatomic) NSString *bundleVersion;
@property (readonly, copy, nonatomic) NSString *bundleShortVersionString;
@property (readonly, nonatomic) NSDate *crashedOnDate;
@property (readonly, copy, nonatomic) NSString *OSVersion;
@property (readonly, copy, nonatomic) NSString *OSBuildVersion;

-(id)identifier;
-(id)customKeys;
-(id)bundleVersion;
-(id)bundleShortVersionString;
-(id)crashedOnDate;
-(id)OSVersion;
-(id)OSBuildVersion;

@end

