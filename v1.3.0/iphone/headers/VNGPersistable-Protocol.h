// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol VNGPersistable


-(id)persistenceKey;
-(id)persistenceCategory;
-(NSInteger)persistenceChannel;
+(NSInteger)channel;
+(id)category;

@optional
+(id)key;
@end

