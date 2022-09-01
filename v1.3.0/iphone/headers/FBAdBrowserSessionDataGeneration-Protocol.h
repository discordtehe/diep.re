// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FBAdBrowserSessionDataGeneration

@property (readonly, copy, nonatomic) NSString *inlineClientToken;
@property (readonly, copy, nonatomic) NSURL *url;
@property (readonly, nonatomic) NSUInteger handlerTimeMs;
@property (readonly, nonatomic) NSUInteger loadStartMs;
@property (readonly, nonatomic) NSUInteger responseEndMs;
@property (readonly, nonatomic) NSUInteger domContentLoadedMs;
@property (readonly, nonatomic) NSUInteger scrollReadyMs;
@property (readonly, nonatomic) NSUInteger loadFinishMs;

-(id)inlineClientToken;
-(id)url;
-(NSUInteger)handlerTimeMs;
-(NSUInteger)loadStartMs;
-(NSUInteger)responseEndMs;
-(NSUInteger)domContentLoadedMs;
-(NSUInteger)scrollReadyMs;
-(NSUInteger)loadFinishMs;

@end

