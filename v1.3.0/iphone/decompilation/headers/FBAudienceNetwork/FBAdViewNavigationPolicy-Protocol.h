// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FBAdViewNavigationPolicy

@property (nonatomic, getter=isModalViewPresenting) BOOL modalViewPresenting;
@property (nonatomic, getter=isMarkupImpressionEventReceived) BOOL markupImpressionEventReceived;

-(BOOL)processRequestURL:(id)arg0 adDataModel:(id)arg1 withExtraData:(id)arg2 ;
-(BOOL)isModalViewPresenting;
-(void)setModalViewPresenting:(BOOL)arg0 ;
-(BOOL)isMarkupImpressionEventReceived;
-(void)setMarkupImpressionEventReceived:(BOOL)arg0 ;

@optional
-(void)ensureViewabilityValidation;
@end

