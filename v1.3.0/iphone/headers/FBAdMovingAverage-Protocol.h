// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FBAdMovingAverage

@property (readonly, nonatomic) CGFloat average;
@property (readonly, nonatomic) NSUInteger count;

-(void)addMeasurement:(CGFloat)arg0 weight:(CGFloat)arg1 ;
-(void)addMeasurement:(CGFloat)arg0 ;
-(void)reset;
-(CGFloat)average;
-(NSUInteger)count;

@end

