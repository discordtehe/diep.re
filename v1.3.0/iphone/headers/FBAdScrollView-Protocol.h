// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FBAdScrollView

@property (copy, nonatomic) NSArray *data;
@property (copy, nonatomic) id *childViewProvider;
@property (weak, nonatomic) NSObject<FBAdScrollViewDelegate> *delegate;
@property (readonly, nonatomic) NSUInteger maximumNativeAdCount;
@property (nonatomic) CGFloat xPadding;
@property (nonatomic) CGFloat yPadding;
@property (nonatomic) CGFloat xInset;

-(id)data;
-(void)setData:(id)arg0 ;
-(id)childViewProvider:(SEL)arg0 ;
-(void)setChildViewProvider:(id)arg0 ;
-(id)delegate;
-(void)setDelegate:(id)arg0 ;
-(NSUInteger)maximumNativeAdCount;
-(CGFloat)xPadding;
-(void)setXPadding:(CGFloat)arg0 ;
-(CGFloat)yPadding;
-(void)setYPadding:(CGFloat)arg0 ;
-(CGFloat)xInset;
-(void)setXInset:(CGFloat)arg0 ;

@end

